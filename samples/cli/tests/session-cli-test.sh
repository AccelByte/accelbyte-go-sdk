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
echo "1..90"

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
    --body '{"metricExcludedNamespaces": ["AzGBWG8FDl4NamwJ", "L2G21x3hFSY6qZWR", "3WpwSbY9az1PBA0q"], "regionRetryMapping": {"LSTCUrJ5ATpjB3yk": ["WdEIIq4pP0cUqC40", "Hv6fmIv2bRucgYMy", "LTTQ19PCO8Fst0gm"], "cdOYzomyXvIQghEe": ["bIPIiFeYlWe7uhKE", "nviEdATAJnPsJVSI", "Kge8s9jIayyUDM9M"], "RH54RE1gfEBhRcrP": ["bmX5Gonf0UnTxpj3", "yiCrW7ToZHYZ3bnV", "6q5V16GlPpHW2XFo"]}, "regionURLMapping": ["s6sXrScYNsnHtO0I", "sus2EtltsHWvwJwW", "9cAwCjAczeX1gJCC"], "testGameMode": "S1zN3i89ckotNPzi", "testRegionURLMapping": ["VeoTRjZp2cq2Wkdc", "QkybMV31Aobvz8A3", "JFjRE3U7Tf7epKhW"], "testTargetUserIDs": ["pgVSC4U3nvVyieFb", "RuP2nSENYZFKJjH1", "rUHaL7l75H0aoI3o"]}' \
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
    --body '{"durationDays": 72}' \
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
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 12, "PSNSupportedPlatforms": ["xbCueesyVEETSyaw", "1sLZpQzUUghI85jn", "F9dK5rLpsxp93qfX"], "SessionTitle": "LkgAwZSaPFLCTOIL", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "tI7ba3E0Uh9ek9g7", "XboxServiceConfigID": "Km6HpYvhcmUKapG6", "XboxSessionTemplateName": "WbOpxontKE9YWDsV", "XboxTitleID": "M4rwpVZ4prS4T0Es", "localizedSessionName": {"NhsaH58rimt3c30E": {}, "WEppzRwwZ7NC7YC9": {}, "tF0SaMG2rayxJKis": {}}}, "PSNBaseUrl": "H4ILcmxsopB9SHB3", "appName": "CGdJyrnC9AIuCtBW", "attributes": {"KVzKxTU9LRsAjf5W": {}, "6jiqmNIGN5oTdlIU": {}, "WzxtmygYdmZ99AXX": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "0OPSJP0lybelOmeL", "customURLGRPC": "V4MXODGoakpYwFXO", "deployment": "8OTavldKOYYsVWkU", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "ZSZF543RIsXjRzNC", "enableSecret": false, "fallbackClaimKeys": ["XvV9qS6jghhj0NqZ", "X0JxOfSlX2mAs4Pw", "CpFjyQuXJxbfAWWw"], "grpcSessionConfig": {"appName": "IGyTXpFFQrCt9VFo", "customURL": "qfFbR7ZljtWHJldf", "functionFlag": 9}, "immutableStorage": true, "inactiveTimeout": 65, "inviteTimeout": 29, "joinability": "URfGf92Z9ZvdTRaT", "leaderElectionGracePeriod": 28, "manualRejoin": true, "maxActiveSessions": 28, "maxPlayers": 85, "minPlayers": 73, "name": "8uixsYLFFKybZtc5", "persistent": false, "preferredClaimKeys": ["t3agUAtbOpDTa1KY", "ujvGhaFTWt1rIjSd", "yOvIHZT12unjeI7t"], "requestedRegions": ["eyaQU3Gbdj8n3bYa", "Ps2ekcTyYL9G9DZe", "9wZKkiQOr8JQC6PJ"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "v8D9emyAFVGavv3x"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --name '4BwbnxnX3yy6N4vk' \
    --offset '89' \
    --order '65kYISAwMIKAfEJJ' \
    --orderBy 'ZQ0T3uTA0jG5XwF9' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name '74Vt1uxHnd2CxSGv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'nK0kA38PUqZVx2i8' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 81, "PSNSupportedPlatforms": ["ssFuwK2pcYlXBL4x", "RzGzOZRjNK1wSknf", "JxQVbY3lsBIQiMOF"], "SessionTitle": "vxBu2hjBROZBWZBV", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ejjUESdOFj0YxZm7", "XboxServiceConfigID": "bv5buhRRbXjEAG2f", "XboxSessionTemplateName": "OiWxcVYw9U5O0gpj", "XboxTitleID": "9cTHFiUCO7goVVTx", "localizedSessionName": {"Cpq7t3dRozC4PmBz": {}, "X4nVoWbKZ1yLBQA6": {}, "ff0zjk1gyW8QwITc": {}}}, "PSNBaseUrl": "qAfQgzyVHPdJxhkY", "appName": "pqG7WFypcs4pZION", "attributes": {"qTR66mft6QP7yH7p": {}, "rF179vdFUlMUdXd8": {}, "l9brCbl3VpyK6miR": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "aKRD5VcrUPMnTIWz", "customURLGRPC": "LfChFq75w0IIRQBf", "deployment": "udqEIzeLjCPfKVBB", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "HFQJiWN4hRgVVf8E", "enableSecret": true, "fallbackClaimKeys": ["Qf1u9kUVkVFFl6oP", "g0zJfS67ofHQiwiD", "OCBbsvdzXHqr0m5c"], "grpcSessionConfig": {"appName": "d6iTd3uoNRLragqr", "customURL": "bTSOx3Oy34eBPPYr", "functionFlag": 39}, "immutableStorage": false, "inactiveTimeout": 7, "inviteTimeout": 6, "joinability": "wgnZyyN3Dwo5eAWL", "leaderElectionGracePeriod": 87, "manualRejoin": true, "maxActiveSessions": 54, "maxPlayers": 45, "minPlayers": 35, "name": "kgRqfRFYBPg4j71U", "persistent": true, "preferredClaimKeys": ["bQZrD1da8XDIG6Un", "gbVHvMLsI2YbmU30", "x9UxSXeiKZOCULGc"], "requestedRegions": ["tcvq08ojQnZzbf5X", "VoOGzNU11RpoknUt", "TULTqRuqa9XStE3e"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "fogfcgLOw8uSOWUu"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'PV9t9w7Cpb7m8nH3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'I710ektgFRbUqBdF' \
    --namespace $AB_NAMESPACE \
    --userId 'DGnJIU88uS8MkIj2' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'njENWlrxbJKAGB37' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "bOWKG3jd1LIOmRlf"}' \
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
    --configurationName '6Ldvx50sKUGBqlm7' \
    --dsPodName 'keOynI2PIAwhx7VD' \
    --fromTime 'd1IqnyHtlfVnHWKk' \
    --gameMode '9tjsJaIh3cHSNud1' \
    --isPersistent 'ADmVGUqfRkwi53FV' \
    --isSoftDeleted 'jnvvbyM8o8v24J34' \
    --joinability 'Nk8fXFGxgUlUjW1r' \
    --limit '27' \
    --matchPool 'ZFM9pdNB1uvchh3C' \
    --memberID 'DzT16byV0RlHNsM9' \
    --offset '62' \
    --order 'HhQKYmH5Ba5Oc3pP' \
    --orderBy 'AjsUx10EOUMQUZtA' \
    --sessionID 'TpiXJ8DjbucP3Mh8' \
    --status 'yfDlVZDph4EyCsP7' \
    --statusV2 'KSV2JDpD0VSL7LUo' \
    --toTime 'fw8FXnaQAzdH73PF' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"FJvIDvHeosiWVCsV": {}, "HSTXqOzcqCf2Foyk": {}, "EilLovupIFrWAvkX": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["eHmhfp52eH8fU4sk", "Xn3gupKNQ2xFVUG4", "hCo1IimcWfh0lBgn"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'rey6BcpfsnAiqgO2' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'pNMMXKpUN0jSslTj' \
    --namespace $AB_NAMESPACE \
    --sessionId 'faj7nJL9WA2XKPxk' \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'lkuUCqCrEjoq4568' \
    --namespace $AB_NAMESPACE \
    --sessionId 'pvPjKvQmt2kxHGNm' \
    --statusType 'nkr88AqlebjuptiB' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '26' \
    --order '21HehICielvj94mr' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'PRzjd3RKqHjIETQK' \
    --joinability 'EjvDcyEfNN1dCOo2' \
    --key 'SOtVHTfnOXj7hqug' \
    --leaderID 'CLJhvX1hqhOKGzx2' \
    --limit '9' \
    --memberID '1Kh4rMDneGaSH2bh' \
    --memberStatus 'OXEF7dnSsrpPznrs' \
    --offset '54' \
    --order 'hc2GUqReGBh2VOZI' \
    --orderBy '0jI2za9Jv7IEfIQ2' \
    --partyID 'W8ehWU26lyUCQ4qx' \
    --value 'afB2tSBSwKs1mT6h' \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["tqSaIjhE6m1ZffSV", "rCf9jzmv7STiFpZA", "M8viy4MdqQrFsUY9"]}' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteBulkParties' test.out

#- 34 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminGetPlatformCredentials' test.out

#- 35 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "S1SM6WH4Gej7o3Gi", "clientSecret": "xSr1ppYi1i9syY7f", "scope": "8wDb0QNDv3n36nPF"}}' \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdatePlatformCredentials' test.out

#- 36 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 36 'AdminDeletePlatformCredentials' test.out

#- 37 AdminDeletePlatformCredentialsByPlatformId
samples/cli/sample-apps Session adminDeletePlatformCredentialsByPlatformId \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 37 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 38 AdminSyncPlatformCredentials
samples/cli/sample-apps Session adminSyncPlatformCredentials \
    --namespace $AB_NAMESPACE \
    --platformId 'XBOX' \
    > test.out 2>&1
eval_tap $? 38 'AdminSyncPlatformCredentials' test.out

#- 39 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --userId 'E5UuelrlRHUvs0Bs' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetRecentPlayer' test.out

#- 40 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --userId 'kMw2TL4QbDg1vJvO' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetRecentTeamPlayer' test.out

#- 41 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 's6px4Scxuv4s3SY2' \
    > test.out 2>&1
eval_tap $? 41 'AdminReadSessionStorage' test.out

#- 42 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'tfSX0oCBv2gmPUKY' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteUserSessionStorage' test.out

#- 43 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'X9HPG6kSPNMn5Ao5' \
    --userId 'yAQ4TCX2OO9nMTqG' \
    > test.out 2>&1
eval_tap $? 43 'AdminReadUserSessionStorage' test.out

#- 44 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'vvDgWaVNDQqMZDGT' \
    > test.out 2>&1
eval_tap $? 44 'AdminQueryPlayerAttributes' test.out

#- 45 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Hyii99B6egFOmsHI' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerAttributes' test.out

#- 46 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'faH0iuIZLo3cCXgI' \
    > test.out 2>&1
eval_tap $? 46 'AdminSyncNativeSession' test.out

#- 47 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "VB7t0MTtpuUj8p93", "attributes": {"7dLpgQjzcnfiG3jm": {}, "1vbLhUBpqBlKQwCb": {}, "mmcYcZ2rW2bZAyNP": {}}, "autoJoin": true, "backfillTicketID": "RYTdOl70Xg8tDGIs", "clientVersion": "xTj8jWNVplMvfeBP", "configurationName": "4HpgBhasdjkYPJ3X", "customURLGRPC": "0bZpyNVZjvzGFnRK", "deployment": "ISnIsPd2TomvAIIS", "dsSource": "sQbKSyUWKVfWUArl", "fallbackClaimKeys": ["9gtO7GHBh6tnkDnZ", "GMby9HHgKlnleMR1", "Xd3my0vsnfnWlaoR"], "inactiveTimeout": 17, "inviteTimeout": 56, "joinability": "6uPjJxGmxbbQ0Hwy", "matchPool": "OZJrp7Bf8AXFzlmO", "maxPlayers": 29, "minPlayers": 45, "preferredClaimKeys": ["SKh9OyVkDSV9G9xJ", "xKuZ8CrpekTQTODQ", "04Q1sU5hJnpkdCnK"], "requestedRegions": ["5IGPSNQIS52oofnx", "XP8tEjABfSouH4w0", "BTGnlfeClQai8V9J"], "serverName": "Rv2Xz8RBSKOa7aYl", "storage": {"leader": {"QeZbq8KfA1YaplIm": {}, "ovQW6s2s3J2C0qKx": {}, "y0WJJb1QlC6SmjuE": {}}}, "teams": [{"parties": [{"partyID": "8msetFgvEph0j1Ta", "userIDs": ["dY6HZpze9JKsT3j3", "J6iN0ehe6dKS5AuH", "r0GgXqpPauvnaDHC"]}, {"partyID": "UtgVKNydalSZ9gXr", "userIDs": ["3cXENqDP9OxdCBs8", "v91XKGQpWYqXNc4L", "IzzbZqTMO2qmj0tj"]}, {"partyID": "mr9sLyLjOZghHzeK", "userIDs": ["qB93f5FyAHxnJctM", "KPnCT75SekaFemVd", "jcT23d2kUAwMoIVf"]}], "userIDs": ["GKqWTdKoYcFdcU1m", "mVEmdhMmmeMo4WJG", "7mQyOGa8H26ivxEb"]}, {"parties": [{"partyID": "qk3vu0e6J56vJoYX", "userIDs": ["AuvEO2YTv5y8ETK1", "Uz9vtMRX5MDae9fC", "FtjRtt8k3fjrScMQ"]}, {"partyID": "D3qp5QYlr8ePbD4v", "userIDs": ["xbFiT8dvi6GDmFTC", "sibrNqAQz1snhSEK", "789u7cUQ89IyKAEF"]}, {"partyID": "UCfmERnOn6ruzSBE", "userIDs": ["WK1TeB4NeH6egFTv", "rVqqin2DFEAtuyaN", "hEUTpVl26vwWyFwD"]}], "userIDs": ["5OSM7inRKt0CXWVA", "m3U4hfbMja14sLLz", "9oTDYn3KcIi1GCPc"]}, {"parties": [{"partyID": "2iPi0oGrLpJsiOqe", "userIDs": ["NkpVl00KlvSgkWFl", "7u9yeUBwMiU5xOa2", "SvUw8u51FGwYqO1v"]}, {"partyID": "vcbNMcJkZ2nllxOI", "userIDs": ["eDUsx9b4Rfl5RVXm", "wiAAe3VDOqT1ASHs", "vgKAvJTcGQADyWSj"]}, {"partyID": "MdF7igc4uoM5sNzi", "userIDs": ["LTNkbiEw5zUzIYE3", "bMcYomrDQPhJgyXx", "cSGvk0UAm1ae6ym6"]}], "userIDs": ["KSaIJuXVgpleX8Ve", "7D4DGwvP4N37JhJ9", "T5bvRowuUG1io75V"]}], "textChat": false, "ticketIDs": ["ujqo6FYacgSSE2OK", "bV6Z6INdiejfJcTy", "wH64YUplY3MTkwjP"], "tieTeamsSessionLifetime": false, "type": "sUeX5Td4xVqRCBjW"}' \
    > test.out 2>&1
eval_tap $? 47 'CreateGameSession' test.out

#- 48 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Yf8P1QsheP4cU0rE": {}, "TrF0gUT8BS02SFtE": {}, "zGPK77UeqsRb9kK6": {}}' \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryGameSessionsByAttributes' test.out

#- 49 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vPpwRlJRRrCt1W9c"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicSessionJoinCode' test.out

#- 50 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'VZNGcrqPMFhpxTUy' \
    > test.out 2>&1
eval_tap $? 50 'GetGameSessionByPodName' test.out

#- 51 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xVakFfxUqwfKmnz2' \
    > test.out 2>&1
eval_tap $? 51 'GetGameSession' test.out

#- 52 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '7L7TwSsPDyz1ZxyO' \
    --body '{"attributes": {"L9HkvzS2HrWFWde4": {}, "izBSWKzF35MfCvcP": {}, "JYyxI1HDj3H5ua0R": {}}, "backfillTicketID": "dp9SuAfss0rkFkNo", "clientVersion": "Cl96USdLqAoVkgOp", "deployment": "qqV0gZtdFLGKzBfp", "fallbackClaimKeys": ["cxSZQ6CrexKkhyvB", "NUo1OZN8hoFL8yvX", "1U1LNDqTPD1ZNXNP"], "inactiveTimeout": 20, "inviteTimeout": 56, "joinability": "Lwmz6JgNevAGZ7Ly", "matchPool": "TWzNBj87JiEhwyGa", "maxPlayers": 86, "minPlayers": 67, "preferredClaimKeys": ["G7Rkm9ccmCbZG9wA", "muutBB8kbe7qwWSI", "dJCuRgwcGUN8TPXb"], "requestedRegions": ["s0rD2CTf3sQMs6y5", "A0e3ejut6J2T1kMB", "FMlGbKjYc5vrdGY0"], "teams": [{"parties": [{"partyID": "GU2MowRQGPvpyvts", "userIDs": ["aW9ulvmhVFHgeWv3", "ObLIrlViVULA6g20", "xAOsmnroozr0KscN"]}, {"partyID": "bbJpZAzoJhgzty6G", "userIDs": ["fHoVTUEQxwkmcJUp", "VaByoiYRUUe5SyPH", "ovx8CiBOcbfM64U9"]}, {"partyID": "MnbvVcehy2t8tkli", "userIDs": ["bAmDNiHAHbZctHGF", "jccsH7TCBKrKZd2J", "aIoFink8OzDLshBE"]}], "userIDs": ["H4IqvVVagHM6bdvS", "9F5tz8IBvP173T91", "ahnRnrc9XIzTg0yl"]}, {"parties": [{"partyID": "F9YU7nFk4JN57tzZ", "userIDs": ["7p75d3c8UAor9flY", "3aFBvAgVZnDKCrTG", "zj2nPRbTlDNh4JIA"]}, {"partyID": "cLiW5EanWJvTCxZt", "userIDs": ["5MjhvOg8FSVhDC6I", "jDLoTyNvyeGqYr55", "V1zXRvayG2nUh7t3"]}, {"partyID": "wZyia2Cd3iHzx1de", "userIDs": ["7UoHvkMsuDXmHGTo", "CpSjQPGz64lDEgSz", "IFWKsXfcB0DVswFT"]}], "userIDs": ["ZiXlqaofjdMedgQD", "ehMxTCAV29F2vKgv", "ZZZcw3VL2FEjd7Ka"]}, {"parties": [{"partyID": "1x9pbJWa6q4MqRz1", "userIDs": ["6kAqbUHHPJsMub2P", "IhbrTjBnsyD2Mc6R", "U3giKvM46vxK3H2o"]}, {"partyID": "mfd3riv6BkHUnwE1", "userIDs": ["9CST75Jj6SSGS5MR", "uKiGeTuI8hFbwykq", "lYRqDUL7Ytoy9rtj"]}, {"partyID": "EYXP1l4C9C4MbQD8", "userIDs": ["DZEEAWYkjmFckBbo", "KPxwL8w5YKexDKFO", "ElrY4AUg1ho6T3TX"]}], "userIDs": ["8b4GYaJfdoM6PiM7", "5UGQb7iCOa6R7CRv", "I0TmAjcI8y0k8wIq"]}], "ticketIDs": ["ZrkMCj3cNN96L6yj", "5vhGiqiJf9e5Jmsh", "6g8JFg00Y7leYkWi"], "tieTeamsSessionLifetime": true, "type": "12XY4NWvsm0MW0Jm", "version": 65}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGameSession' test.out

#- 53 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UvhZJOR0gUCoRiLY' \
    > test.out 2>&1
eval_tap $? 53 'DeleteGameSession' test.out

#- 54 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SVgGKfiJDUlrSxcw' \
    --body '{"attributes": {"NH6E22HViOAjfNBT": {}, "8mXZGuSDwvfwuETc": {}, "FCr4kgpqKfnvGrIP": {}}, "backfillTicketID": "cGd7n68hlH72nzte", "clientVersion": "RJnCupXpDqw6zWad", "deployment": "6zD55BVoiOtct51e", "fallbackClaimKeys": ["eYOIdPUiQI40x1ll", "UrRVce2XEZAuEEdG", "vz4uMAC4LR1IRMwd"], "inactiveTimeout": 79, "inviteTimeout": 19, "joinability": "t8xRVNfAaVKfWFAu", "matchPool": "ac4sat9cu2wedPJd", "maxPlayers": 38, "minPlayers": 85, "preferredClaimKeys": ["zHU334wY9EIstpe6", "bFzAtpGWJTIEgMcy", "pIIrtUk0DWvfoMxA"], "requestedRegions": ["qqCG3uhVYy92I7tU", "zoKmRziWsY1plsP0", "NEslTjg7mYeOurtU"], "teams": [{"parties": [{"partyID": "q70QdMEEDmXAp56O", "userIDs": ["ob8k3GSozBhuT2DT", "FSCKKqaXgONzIp2i", "1zeYPW8lGDdlI9Sm"]}, {"partyID": "O29jdjrzlYHuZbpJ", "userIDs": ["anbIHRQDp29mLTM6", "XDZkKBgfPbFLPW9U", "A08rGU55X2KDpL4x"]}, {"partyID": "OsEIC3o9pW6nchRh", "userIDs": ["IDHxUexACcESLPMU", "KGhBiJS0LP5jHHWY", "ciLWodp9c7tOXH9r"]}], "userIDs": ["Cmdm08f6eJ3oqDSt", "x4v8OtnGqIFpn9lp", "5ZgankPFUza2AJDv"]}, {"parties": [{"partyID": "tPKmld2Cb9OABKZo", "userIDs": ["z2pk66QBK6rsCXq3", "KNHclU1Y5bCZjcNT", "gT8qPATo9DXcLAKK"]}, {"partyID": "PbcNViZkSMvHakGa", "userIDs": ["377QDy8wplZtZ5Wy", "Trb7zpeLGBJthoWW", "GZfaV6hnxbiDA6YD"]}, {"partyID": "3JuBoJmcmUFxldLJ", "userIDs": ["QcHAnr7U1NQUOEJN", "QKqlSGh3eWcBQouW", "Nn4TpFGfSB8FIxtb"]}], "userIDs": ["MTBHXmYDTHP8mpMS", "lR1VbNrcuSxUa58l", "wr1ZwFijMAkikDD6"]}, {"parties": [{"partyID": "KlsRxRX8SM4hp38F", "userIDs": ["jJo0VHr9J8zANUM0", "oKaMLyLk25X9iL7V", "hvNAffeWIgK0szc6"]}, {"partyID": "ymfu699XFcfenF6u", "userIDs": ["CnAkdSyOnNhxjnD6", "EEwt0T7rUF9AuKNM", "4umbzfQN3wFetc37"]}, {"partyID": "5tlAKRsgwF8wfF7T", "userIDs": ["kMZjzibXOSpj5Euq", "EVtwRuC77wRbagmR", "LPcFPtgvGeghzcur"]}], "userIDs": ["W9bCJrS2G1E1OXMe", "b7QRysklrzP5RG5d", "6uRBMxSvZSEnhkaz"]}], "ticketIDs": ["SU9lNFY2XYzWegHm", "2U93DYwG8BsGk3UQ", "wm5JRtLfDBsrOJOI"], "tieTeamsSessionLifetime": false, "type": "hBJ9ch1rMZeHTUdz", "version": 21}' \
    > test.out 2>&1
eval_tap $? 54 'PatchUpdateGameSession' test.out

#- 55 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'YY0ijmXh2TMLY2cH' \
    --body '{"backfillTicketID": "2d9GyhnPzTXERtRd"}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSessionBackfillTicketID' test.out

#- 56 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'baY5Yv4sGsvm4cJ3' \
    > test.out 2>&1
eval_tap $? 56 'GameSessionGenerateCode' test.out

#- 57 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'luf8W67x9WOuxQ7L' \
    > test.out 2>&1
eval_tap $? 57 'PublicRevokeGameSessionCode' test.out

#- 58 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'WJOuHVpJScQKspwU' \
    --body '{"metadata": {"OiNRESjCSPoR4McT": "vFex8E3cScFiuJ2E", "Mkwk7fqpWGH9IiHF": "zHT7XePmHTZ1iumU", "MFHMCuOu6iy36jqe": "aqUB26GeyVcdy4H3"}, "platformID": "3nFOOAguMCZLVpHe", "userID": "EWfcKoRDVAdLWkov"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionInvite' test.out

#- 59 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'AmWJCvu1bfXqqZ7K' \
    > test.out 2>&1
eval_tap $? 59 'JoinGameSession' test.out

#- 60 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'h2qp5FbpYycbwP5p' \
    --body '{"leaderID": "yqW1SoHIVqpsKIQV"}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPromoteGameSessionLeader' test.out

#- 61 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fSB3rRGKJWhsw6wY' \
    > test.out 2>&1
eval_tap $? 61 'LeaveGameSession' test.out

#- 62 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'NPRGza6qBP8loe1M' \
    --namespace $AB_NAMESPACE \
    --sessionId 'iYoo7cTD7UpaJaps' \
    > test.out 2>&1
eval_tap $? 62 'PublicKickGameSessionMember' test.out

#- 63 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'atXtwIx58C241IJn' \
    > test.out 2>&1
eval_tap $? 63 'PublicGameSessionReject' test.out

#- 64 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '8cPeoNypMdICbBA0' \
    > test.out 2>&1
eval_tap $? 64 'GetSessionServerSecret' test.out

#- 65 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fONNSyxUiIJmMaqQ' \
    --body '{"additionalMembers": [{"partyID": "tIwgOeoXPryQUOyk", "userIDs": ["LDEH7K9MAUwvlHNJ", "hDaYEmAIRdA4tVrq", "XCx17Snw8HSTuxsr"]}, {"partyID": "rl4P9xe5FJqQ5RBV", "userIDs": ["MNGFGN98mz9HaoVP", "M8cVhMXho0s3otsF", "WWJH5uM8sIFW8Ss3"]}, {"partyID": "ZAJ7ak1iWW1ro22a", "userIDs": ["mhB4sQTyK3q4o67v", "ldwxAJaAvPoy1UeS", "oIaS5fq6oLnFLpQA"]}], "proposedTeams": [{"parties": [{"partyID": "bXzVNj31lS7AiPk0", "userIDs": ["mjLhsE21xjyEZlIJ", "eImh81G8PrWLLB62", "l3RMXPgkDGuKmDoi"]}, {"partyID": "w4ZzGhTzTM81UZ39", "userIDs": ["2ECBBI9yEOytGWNu", "VOySJAj22uzOpTvg", "sPKjSIZ11hj3IL6s"]}, {"partyID": "MqqfT0AgwI1BzZPp", "userIDs": ["kuHECOlFmisgMJ9n", "7jshceGhqpVXc3nF", "d2U7NDjMi1tGn2pZ"]}], "userIDs": ["ubolKlCKyt7sNE4q", "ilXgZlTzQTHbzA4d", "hmHmx4eLDU0nXgHE"]}, {"parties": [{"partyID": "Yj4sEkhR5WiklVjX", "userIDs": ["nyNfrYX9S2U4Dx9v", "hDAdl9cBe2Vo8MFL", "g8esphuzxnHeBvsg"]}, {"partyID": "NranC4IDHTJsCPhu", "userIDs": ["BxilqwgYpr0PAQKU", "mCYktA6U6mZi0e9d", "pnJ2lHte5QT7IIOh"]}, {"partyID": "YAbCLlwGxtPaE3BY", "userIDs": ["CUa8gT0IYfNiVtAJ", "srtd0Smu5D7fSw90", "Uo7rZyrvS7CZhXut"]}], "userIDs": ["rW9mKrtNdwxg94y1", "1HPe0gG5YioN3djF", "TwBWguytlYvBK3GW"]}, {"parties": [{"partyID": "cQb6bHQPG0TDGsHy", "userIDs": ["hoRWljwxkWxxvP9f", "rNBnABeXKov3BRVp", "8Lr0PHl6SXMoZ5zP"]}, {"partyID": "CogcH8zCbAR8mHwY", "userIDs": ["IAS8VMhY22sksn2t", "AEIzKBVpvYOlQQab", "icAFQ6DCUpjmMMLl"]}, {"partyID": "7pTLjDE4mLZKFxX8", "userIDs": ["PiJB5kIi1b1gnXOp", "5SUbsgQ5tYAeeqXG", "PpQSjKTlntsW9Msh"]}], "userIDs": ["JUPCZQ3QpFoUYQZV", "RN8Vyc3OApwdruK8", "ze5LtW2Ppnkt0uys"]}], "version": 43}' \
    > test.out 2>&1
eval_tap $? 65 'AppendTeamGameSession' test.out

#- 66 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'qMgFRCyu4HsIrwj8' \
    --userId 'W2SjjU8YfOIGpnM0' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionCancel' test.out

#- 67 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TWrJbvzJinOmh7tT"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyJoinCode' test.out

#- 68 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'zJDShvjoGubRW8MR' \
    > test.out 2>&1
eval_tap $? 68 'PublicGetParty' test.out

#- 69 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '1K9eB4dYcbeu04QQ' \
    --body '{"attributes": {"0Mwck0EC8OJOIhp5": {}, "z6E8cZT5bPDPdjwJ": {}, "CeTE46dX24PxW1Yo": {}}, "inactiveTimeout": 88, "inviteTimeout": 18, "joinability": "TAihkv9Ss4vW6Q5h", "maxPlayers": 30, "minPlayers": 11, "type": "USuoSKYEOn47XWJ4", "version": 71}' \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateParty' test.out

#- 70 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'MCFtQwQDruxTjHwU' \
    --body '{"attributes": {"qakl1v80qfjKOlmj": {}, "jjdz2wjOSuOFgtqi": {}, "2pKdF7pLZAx2ARxY": {}}, "inactiveTimeout": 35, "inviteTimeout": 42, "joinability": "22tfEjTKxH4g0bfS", "maxPlayers": 91, "minPlayers": 95, "type": "L8fy05EAFag1oJxS", "version": 37}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPatchUpdateParty' test.out

#- 71 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'gTAO68srTXWnKiX0' \
    > test.out 2>&1
eval_tap $? 71 'PublicGeneratePartyCode' test.out

#- 72 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'kcp96Ub3TSmnDv7b' \
    > test.out 2>&1
eval_tap $? 72 'PublicRevokePartyCode' test.out

#- 73 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '90XIP1sixCoGGZy7' \
    --body '{"metadata": {"9qEX8XOx8lfwzoer": "OgwPlMYjIjerFMgH", "aThg8BZk8Rk8oFdi": "bA0kRE2E3IwYenrh", "5KLEaSc8BEsfk4Xu": "KvmD8Xt5di2PiCDH"}, "platformID": "XcfCA4flgdqNZ7L9", "userID": "IC9FbBRa1ubHFAsR"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyInvite' test.out

#- 74 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'VxSCOU7CUS4VwYSr' \
    --body '{"leaderID": "dr9752pz1VE68TKg"}' \
    > test.out 2>&1
eval_tap $? 74 'PublicPromotePartyLeader' test.out

#- 75 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'cz5tZQOXIumlzTPw' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyJoin' test.out

#- 76 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'tj3BQY1FzAN3qfCF' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyLeave' test.out

#- 77 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'fclVAnkwDv8XIysS' \
    > test.out 2>&1
eval_tap $? 77 'PublicPartyReject' test.out

#- 78 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'N3wbazljtpE5A5vs' \
    --userId 'JsmcdSp34eksNW8S' \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyCancel' test.out

#- 79 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'eEJGyqqQGXGXRpn2' \
    --userId 'Go7biXaoUuO40Ss3' \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyKick' test.out

#- 80 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"aUVUjWhkJgzKdqKM": {}, "7Rmfy0VyB9rK1vV7": {}, "YgGeDdCF752AIA3e": {}}, "configurationName": "nMGmoaZjPUbNZIsg", "inactiveTimeout": 38, "inviteTimeout": 16, "joinability": "BCHOB3YbdyFv7sF2", "maxPlayers": 54, "members": [{"ID": "abHdUsHUhZWj5qhf", "PlatformID": "G9CfjWo04YbpgZVU", "PlatformUserID": "8tJKLu2VMtyPtTNk"}, {"ID": "CYPll6KP8U7q9FLe", "PlatformID": "PGXXNyZdN5dMq14g", "PlatformUserID": "TDfkf7ij2HHvhDDe"}, {"ID": "6qM0bzXkY7GUgiPG", "PlatformID": "CfPCRrHO9AROIVra", "PlatformUserID": "XwRL6QUxXpRI9cWP"}], "minPlayers": 2, "textChat": true, "type": "ysMxk5MM4696Bmfs"}' \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateParty' test.out

#- 81 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 81 'PublicGetRecentPlayer' test.out

#- 82 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetRecentTeamPlayer' test.out

#- 83 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'Kx7b0DkTQs5RxrDn' \
    --body '{"4AqgaAQqlMtXOmzg": {}, "eopS3SXIrhhNz9RV": {}, "K40I92rk547rK88s": {}}' \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertSessionStorageLeader' test.out

#- 84 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'x8UaYpCulvqtb63Y' \
    --userId 'xUsToOO6zT7qJuAf' \
    --body '{"WsrJGOl6jVCozZzy": {}, "yGdspKQKFKbOp1Cn": {}, "hotwkphi4MZVK4mm": {}}' \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertSessionStorage' test.out

#- 85 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["IE6a4dDH0yYhj9Ft", "EbrvaWqNN11tK17Z", "0Zk5NUPllSnPRaGQ"]}' \
    > test.out 2>&1
eval_tap $? 85 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 86 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 86 'PublicGetPlayerAttributes' test.out

#- 87 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "xvBKyJZtUxXvAKSZ", "data": {"xHIquzpfhuPPeDSU": {}, "sMWQ7dcuhSXrMmEh": {}, "JgdHN1FXXawQmmlv": {}}, "platforms": [{"name": "owoI2UPNQPdKlJAL", "userID": "hHGXVZLn4jHmB3Ql"}, {"name": "z0wfIVnyGbReJ5Kw", "userID": "JxNWKnkOndETddkA"}, {"name": "YR5qdF3ENiKTQcNf", "userID": "PHEPi5hOBpZNW2C2"}], "roles": ["B8FlcGQTjvFWsRgS", "nNUePOvrOFxzhSKk", "GMVyYNmFmFFnWuRJ"], "simultaneousPlatform": "Jfgt45M9JnMLwWhv"}' \
    > test.out 2>&1
eval_tap $? 87 'PublicStorePlayerAttributes' test.out

#- 88 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 88 'PublicDeletePlayerAttributes' test.out

#- 89 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'Bwi31FXk54Z0NQgJ' \
    --orderBy 'Y6xsFmDlX9MdADFt' \
    --status 'bgPoAIgyefhN4Qvi' \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryMyGameSessions' test.out

#- 90 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'CU4AbhSnXHbHnddQ' \
    --orderBy 'EAoYOwAL5uozAOSf' \
    --status 'dkP4bWIuPH8TWUia' \
    > test.out 2>&1
eval_tap $? 90 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE