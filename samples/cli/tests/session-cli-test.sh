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
    --body '{"logLevel": "info"}' \
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
    --body '{"metricExcludedNamespaces": ["94GSNr1YE7wrH68b", "FL9NKnv4D4bPR4eC", "p6pTN7pxrYEwkW7O"], "regionRetryMapping": {"4YjsRNaq08qobURz": ["na1r55aAcnoP67ao", "FuxGhZO5tFQLLu6d", "v3chTrjE0A2kTJZh"], "KVDnxAlA5Q6eBFpX": ["WFnVcHte2znaz14U", "ezQO5VpIPpwG6H13", "4FdwIGpduI5hKdnk"], "wSeDfnlt1MFo7Ysv": ["K8gaRjli0vdcjXe0", "bAuLOiDshTMhRlFp", "dQbNt6PzYRI0AxHK"]}, "regionURLMapping": ["isvw4H92LdxUlJC8", "cegaYQ8RmuBXTfNT", "bEkzf9x1VD1EZUrY"], "testGameMode": "kkSu7QdnzOzNiHFd", "testRegionURLMapping": ["YRdq9fW6GMMDXvFX", "nMbk7Hqj6L3KGNhH", "hFDpdxa4C1v1kNBj"], "testTargetUserIDs": ["jy6KBcUl07h1eK3R", "ssSN1DlCYvMZ53VU", "OZjYgbqaJ5HiSCI7"]}' \
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
    --body '{"durationDays": 19}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 38}' \
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
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "KICK", "KICK"], "PSNServiceLabel": 36, "PSNSupportedPlatforms": ["BpnvAvLtpmVm554j", "zN2qt3Hi14330EKO", "uS7fCUaVFb5230X5"], "SessionTitle": "e0557NcJNfuVeJ77", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "7ahHHXO20ovIFPXQ", "XboxServiceConfigID": "XZ7VSQ6zTIWw4wzb", "XboxSessionTemplateName": "72k830zNSa9Q1slk", "XboxTitleID": "IT2hhef56Zo3OygQ", "localizedSessionName": {"8pszLzmMRFEC96UW": {}, "3Clcct9fVYFygFac": {}, "LvyuXP2XNPy18B6j": {}}}, "PSNBaseUrl": "oXRiU4Peo0oH4zeE", "amsClaimTimeoutMinutes": 52, "appName": "kBGHeJs5JWG4qYa6", "asyncProcessDSRequest": {"async": true, "timeout": 49}, "attributes": {"Bb4tV99kkgte2j4b": {}, "3Fq1fcLPVBqS7NTp": {}, "slM4iT39SZ3Vumz0": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "oeTVE0SegLi5eBzI", "customURLGRPC": "9caJwwufmPKvwoqD", "deployment": "r2gs0b9eR08eeC7h", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "SvSSo6tdTfHlP7cm", "enableSecret": true, "fallbackClaimKeys": ["ldQ184U9icxbh5BM", "lPyWm8YceKQyOUS6", "nTG5EgKHjnmjh7DI"], "grpcSessionConfig": {"appName": "08V5EnuiNn1cx0Gt", "customURL": "54wRnXx11Wr120pt", "functionFlag": 24}, "immutableStorage": false, "inactiveTimeout": 13, "inviteTimeout": 12, "joinability": "OPEN", "leaderElectionGracePeriod": 62, "manualRejoin": false, "maxActiveSessions": 15, "maxPlayers": 25, "minPlayers": 48, "name": "iGXOusXtN8S8NxDy", "partyCodeGeneratorString": "q6QI1DrEMKsAjt32", "partyCodeLength": 79, "persistent": false, "preferredClaimKeys": ["b8TDRQitlAyUrRDJ", "Sp8KKlYQ2gK0ptFf", "AqAaY2MBuSVRgkpn"], "requestedRegions": ["DudWAMPOkyPTXctt", "Avx6qgGdv0ycOhSr", "TtKY6DyM3VR0pg6C"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 80, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --name 'QKiOyiw1STmPrBnM' \
    --offset '63' \
    --order 'ZtNaXfXR0Ez4jq2g' \
    --orderBy 'aPukbNL9mMNdxQfA' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'EnhxSdAPDvaV9pjB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'rf251qpvljNbsv3H' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "KICK", "KICK"], "PSNServiceLabel": 66, "PSNSupportedPlatforms": ["fCVGqaXfWMBdkTBe", "RJTnYG7RjAZUb7rx", "OFp2MO4rF8Wr48LW"], "SessionTitle": "pfFKUzWWMy4OCJ3D", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "U1Zsylr5oQMfk2o8", "XboxServiceConfigID": "ogpWKMj9NqtKht9Q", "XboxSessionTemplateName": "g6opsWIszzD6UyO8", "XboxTitleID": "t08lUoR4IN14OqKA", "localizedSessionName": {"CRoEC6hzBRqSbY2V": {}, "1b2GhSZIExAvdy6V": {}, "6M4ibCmXBmiQAV3J": {}}}, "PSNBaseUrl": "bqXieRqkE3FVCYdI", "amsClaimTimeoutMinutes": 44, "appName": "Fkscf91eZXCbqZDY", "asyncProcessDSRequest": {"async": false, "timeout": 27}, "attributes": {"vCR1n24OyIZ7KuzM": {}, "w9HoeW41QrNnA0RK": {}, "dbpn8hEYDkbFWwS7": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "3DHVIeORwf3b0qLS", "customURLGRPC": "tgF0sSHHGae2coqX", "deployment": "VFhQ4eRKd88nmz8p", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "s3ydkZndTW00mMh9", "enableSecret": true, "fallbackClaimKeys": ["YRMR6W1YcpI2nuNE", "cNTd2bScccHGjJhs", "InQ2YOBI0HUN4mOz"], "grpcSessionConfig": {"appName": "Hc9oRcaWQ3BcUstp", "customURL": "uHkXJaTD6ulRZcMK", "functionFlag": 32}, "immutableStorage": true, "inactiveTimeout": 15, "inviteTimeout": 68, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 3, "manualRejoin": false, "maxActiveSessions": 65, "maxPlayers": 44, "minPlayers": 17, "name": "GkOF7FwNDLQkjwP2", "partyCodeGeneratorString": "eU5zEhgXAnziOJhy", "partyCodeLength": 85, "persistent": true, "preferredClaimKeys": ["N0dofniZXmJat9mQ", "qFxsQRdrOgpDm1fg", "O2LcJ3CeACjHVbi9"], "requestedRegions": ["DeApKlJwVm6OGEUt", "evczfccWlmKaM6pM", "ShJ97pPpCC7OLsnh"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 97, "type": "NONE"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'RtxAV0HM1K5Oy4yB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'IbMlCRE4cQ7Xm23L' \
    --namespace $AB_NAMESPACE \
    --userId 'WNlt5fWeJB2tGkeO' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'sNfObF6pIaHaAqvq' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "iOIQFKLQFanBKet4"}' \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'Ko5Zkrsj12WMRNC5' \
    --dsPodName 'osfQPzXGVG91840I' \
    --fromTime 'tNXoKH99ejdmV1YO' \
    --gameMode 'xwxMoaNPPyiD1BKc' \
    --isPersistent '0wBHaJtOXl0vwt7B' \
    --isSoftDeleted 'cuR9dAHmKO9eupTH' \
    --joinability 'INVITE_ONLY' \
    --limit '55' \
    --matchPool 'Sb3wtJjid7NtzG1H' \
    --memberID '9XnPPG2kCHIQJSfB' \
    --offset '28' \
    --order 'llJB5Fqhnec5EHfX' \
    --orderBy 'ilphy0z35ZrTM2gr' \
    --sessionID 'L0dUktOf6czNTwuA' \
    --status 'REQUESTED' \
    --statusV2 'ENDED' \
    --toTime 'UuU7rvTr77aUMddd' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"1YFNWaBzI9wMZlIB": {}, "g1UgMjohmvZPbT8e": {}, "FMMhfKcBGe0BIiXA": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["7e0W9qGJKhtSCQQY", "la5gTAlU1tRcsdjA", "lggdcB2fimXw3VW8"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'KOkpNGdRIust0Okw' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
samples/cli/sample-apps Session adminUpdateDSInformation \
    --namespace $AB_NAMESPACE \
    --sessionId '3ekKomFuMlDHvBAI' \
    --body '{"createdRegion": "JHD66ziWK8kGTBDK", "deployment": "J27RKleE1qV4vZih", "description": "WKJI1lcvvFBsrOsj", "ip": "KnXdNILvJbwYqUAR", "port": 49, "region": "Prxh3Gu6KbFPP8Uy", "serverId": "l5Vl898rpMDhHRiz", "source": "ZH64JLQzhrHfmRTu", "status": "zMbNtLC0xf6Eadeq"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'BKbcwYuT2z5kUVvS' \
    --namespace $AB_NAMESPACE \
    --sessionId 'qNzuXJrTuhWeNosu' \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'JWd5mPPYEass0Ate' \
    --namespace $AB_NAMESPACE \
    --sessionId 'runad7yXQTByNfzw' \
    --statusType 'Rl4C697q8GYyzqxb' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '55' \
    --order 'IfdonPVgTDdg7zwv' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --configurationName 'jtta1a31DglVSYAw' \
    --fromTime '7Gmuko0Nl42jx3dZ' \
    --isSoftDeleted 'WNUViqsUUFtNOq7m' \
    --joinability 'OPEN' \
    --key 'MRxAObJzqvSK5Gx9' \
    --leaderID '5xWvJ2bLVnkgDnGk' \
    --limit '40' \
    --memberID 'nvFobQSgAabXlbws' \
    --memberStatus 'LEFT' \
    --offset '90' \
    --order '5N6kFj9THP3lVlEy' \
    --orderBy '8BCjx19IwbPAjwSB' \
    --partyID 'HWXj7wUG5N9X5BUq' \
    --toTime 'pyIVAYRnabbslHnv' \
    --value 'YW8hL2yziMGQUCA4' \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
samples/cli/sample-apps Session adminDeleteBulkParties \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Lw4n3V8yuEMfSBdS", "ydkwUFhLACYNBkmK", "nbm0cLGZQYgXGGF7"]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
samples/cli/sample-apps Session adminReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '8z7FJI8YWhLGJQ9Q' \
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
    --body '{"psn": {"clientId": "MhGzObXdLjpShjqh", "clientSecret": "J7OEnX1WORxQDLHz", "scope": "qOm5GxA4skLSKWLF"}}' \
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
    --description 'yvFvYEtlRVDDSfM5' \
    --file 'tmp.dat' \
    --password 'HdjdIgFyAStz07K0' \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --userId 'Mj3g9OFejGQZ2VDD' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --userId 'bVtPEpvcHs7We72S' \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'VGsHkO2nLEr4AiUy' \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SBHFtvzaVuHPs7de' \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '3mekypG1gh19VRmH' \
    --userId 'jAaIPEFkAnG2olxO' \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'Krsp8ZbzXmIIRatj' \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Yn9gUOWustbrCEdS' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'YdjLsG9fLc83JwvB' \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --resolveMaxActiveSession 'false' \
    --body '{"appName": "1Mx9YNiED3ri6G5b", "attributes": {"zhrbReaERdUinEyo": {}, "uM8YLuHW1hRBojN3": {}, "GkMuRUoVZ3YbTuup": {}}, "autoJoin": true, "backfillTicketID": "D8XXRJQ6iZfEpMbR", "clientVersion": "daFtG7kOFKsPeLg2", "configurationName": "VDZToD8LLE2AlS0r", "customURLGRPC": "rJ7bgvskyCmLyEnJ", "deployment": "Afaky1Xqhe2rOiV3", "dsSource": "eMwzWAOQjMM3SifX", "fallbackClaimKeys": ["L2BfOI6N6OQQiMNo", "ppGjERUDT9LqDQ0v", "80iHTQ0ZOXmuxY2z"], "inactiveTimeout": 52, "inviteTimeout": 86, "joinability": "CLOSED", "matchPool": "NeFZgIHXODfCMIw3", "maxPlayers": 2, "minPlayers": 38, "preferredClaimKeys": ["xJaaCZ8GKXPhIzKE", "fmIjKUI6yJ0MI6wC", "BDwelYawAA89Cvyk"], "requestedRegions": ["IwhuZ9Hvl1iILgGh", "bZDMIlcRpDFA1nYp", "v5AcmzHUpLHYp9Jv"], "serverName": "493cQemo7o3mnuGp", "storage": {"leader": {"5W9MMZyoMEpFxinL": {}, "zgFxQNIQDvrQXa57": {}, "j8XgcGznQbk7rl2y": {}}}, "teams": [{"parties": [{"partyID": "fMEcpXtX5IIuXw0c", "userIDs": ["Rz3oOK8xSsBXwD7y", "XVq31joOgnRspHc3", "vT8nzbBI0MbfsoQI"]}, {"partyID": "Xs4vBMQRgL3Bqkwd", "userIDs": ["3XMADrqAKnabNvoZ", "pYlKLsvC3reEXjwQ", "4K2mgEtDgVKwnnMW"]}, {"partyID": "kU2WFJLf7Xo8z4qD", "userIDs": ["rdhiQql2YdaHUwOQ", "tNvitwoe02RkJurj", "dqA6XyWL1hoJWeN7"]}], "teamID": "lAzdNC1e1zBSVddT", "userIDs": ["3mFBqGAm5Mzv4f66", "BmxP8ZJsj2qTQsqM", "SQNplmDusH9B9Z3b"]}, {"parties": [{"partyID": "RNNOT8uJq4LpqGnV", "userIDs": ["p4nkN27BJ4Z5QNKP", "27cQAodYqXrVVrqz", "VuPLBZOG6pQ8jVKz"]}, {"partyID": "YEU5U66TYcgd8mqa", "userIDs": ["iXZ6vpbcyJMleNqI", "ZyDgm6RwvHbg8SuC", "cDKyhJdy6zGKt3j0"]}, {"partyID": "gw4TvWvq6H33Biq4", "userIDs": ["53i5GjDG5Y6JPyEJ", "lohJJUbYciF8bxxb", "Nd9OFENPexs7UlTm"]}], "teamID": "IZ5Kajrs35cm022G", "userIDs": ["Z38s1CQIFRuQ0ebt", "OamD30TWJdWU4Z7a", "Q2P84NdYj9hnwGtH"]}, {"parties": [{"partyID": "4jCFfSiP2CGOLImE", "userIDs": ["2MhBlw8vGKUeFMqN", "Gu3uzwDjZwakRO4A", "6ctMDML4YQ2Wumjh"]}, {"partyID": "ljIv3LopSegdIO53", "userIDs": ["Ft3sQwH3EtTwMpuT", "wYdKZbCeQtidyW8G", "xEgjxFkbFXboctNw"]}, {"partyID": "X8zi13Gy3FFvLw7z", "userIDs": ["HWMVXBhTPhklrovd", "LRW4XsvkBrPT1HPH", "PVsKpghr7xptSalf"]}], "teamID": "tX5IyDoCZkihOngC", "userIDs": ["gUnVUBO443PgkKJk", "wf14jFgUQ3hexWs1", "aj612LyIiKc0WlVn"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["8ykcvOEE9tdQpL3E", "h4wRVfGyAr9JuVkc", "09D27bWYp6Tgc0YZ"], "tieTeamsSessionLifetime": true, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"jWkfaztt6HwHBiLq": {}, "G7iPC9qjWwyvjrWg": {}, "NIfDDlJYXrTqQPGj": {}}' \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "IogIS43a4zZHWtPa"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'GVoBrCVhT4VeRHNX' \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '38IwdtlRrKE3EShg' \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'nERWksDDpC08TcRF' \
    --body '{"attributes": {"k2CdQwwkDmkVBszR": {}, "zEnddKos5mN1AYw7": {}, "lt2M79ojHZbEaP6r": {}}, "backfillTicketID": "NYS2C2XTyxlAW76R", "clientVersion": "5sBApmnAQusTBTe6", "deployment": "j9PrUhentTGRZxKo", "fallbackClaimKeys": ["NILdiuC4v1DNS8Vl", "0lwEutVD1PNnR8Ko", "n15iQ74Kay4bosAS"], "inactiveTimeout": 69, "inviteTimeout": 44, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "yxiv7OXpw0LyhP2L", "maxPlayers": 22, "minPlayers": 13, "preferredClaimKeys": ["bxlHj21FQLFcBEJH", "06m1qi3ZB0yst2Tp", "1WpDSUO7mQH9gOnD"], "requestedRegions": ["zZkVLkbMNqI4nunQ", "SfvxlZ4qZ10BRcFG", "05c7Ou9B5F8HpqBk"], "teams": [{"parties": [{"partyID": "eFV8qkCErHiL34X2", "userIDs": ["TYyGkQnM77wiYqWT", "7zB9XYWXMGxExaZ9", "rkainZI8emHKzsJM"]}, {"partyID": "PdLNHt9VQP9VB9X2", "userIDs": ["ERL4ODRXkMklZdLc", "idQT8XX48IIF7emd", "xXscWNi2obJz0TSl"]}, {"partyID": "TYPrOZiRsIJMwaG0", "userIDs": ["gdfVVZR2d4qegmWq", "UPdBDUkL0NzVpHM2", "VJQACtlH1AjmYeT4"]}], "teamID": "dhB0OfswmnASoBOq", "userIDs": ["B2CgOgJF2i8GkPPV", "O7FfnJqX3lQxjMyW", "yoW8gdzLWffZYnOq"]}, {"parties": [{"partyID": "hwvtvFneOxwyNdHM", "userIDs": ["K52bqpvicyzViuWC", "q3w7bqWMAMtToapt", "PPQ6aO1CfBseIXQh"]}, {"partyID": "2JyXhgfpzaicoXkF", "userIDs": ["1vVhGb6V1MwmgTse", "EJurz2kv8uDEx1BQ", "eSvgGqQwqFzJfbh1"]}, {"partyID": "GJ8RkadwnFFw2gg8", "userIDs": ["lpEGKPy1jI2Cn2WT", "JQzLTZQIxr29AjIH", "dvjddOO5Tueu6xF3"]}], "teamID": "aj6PoSQ2KjIBCC2c", "userIDs": ["PG9rGozmA0guQlyg", "KsECwpjIbx1T79FD", "Hrqagh1sYIITxTDv"]}, {"parties": [{"partyID": "llvt3lQDSZnWFJqU", "userIDs": ["lrQcz9bgRXIGBZS2", "ltzgzjKstaUnu4Cx", "WVUG32EtXaIFvrQn"]}, {"partyID": "jCOwj1CjFsCCUc93", "userIDs": ["lPgImN3S84CGsdRj", "nhdJE4GgXQQZ8Ia6", "nIutkrDtMltRLrAy"]}, {"partyID": "RtDjjnzv0D4j83gC", "userIDs": ["UsVdJDciSnT95SWy", "wZIiwlkHilD2heIJ", "vE8dJYyNTXkjYqx5"]}], "teamID": "EmZwLIKIGKKkjaIA", "userIDs": ["CcGqhKCo1AH5Py5M", "Sawxd5myPCNAaHzk", "x9AteTb02jHKmzJ8"]}], "ticketIDs": ["XOdc5zzQPemGLjpe", "jJKEpqq7Vo9q7kXh", "ZBno9G81kxrBWLbM"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 24}' \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xvO11GzWY5HcIa3A' \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'imX7pgQfFqqjEcgi' \
    --body '{"attributes": {"m1ffHLsVHE9rPbCe": {}, "auABBvWQ0iTR7ObG": {}, "1WWkYaFV2D5Ttyy5": {}}, "backfillTicketID": "DnjsAF3BjVrAoN8N", "clientVersion": "On5FBSpU5iH6ijAG", "deployment": "vMaGBuNJxOugXecs", "fallbackClaimKeys": ["SJzvTE6J5tOfhFSj", "nhpALgQ6YDsHB4i7", "9Aj6Mvn9IgLXbeQT"], "inactiveTimeout": 86, "inviteTimeout": 8, "joinability": "CLOSED", "matchPool": "h1u5WTHRDySrWK9D", "maxPlayers": 19, "minPlayers": 53, "preferredClaimKeys": ["L3Ogoyeh2rosDPNI", "s5jJhVuHi5xpsj8l", "boNpgUJuPMzGvRu6"], "requestedRegions": ["Z1WbjMOuvqR7ZX6A", "syK4wfrYqcSI2F06", "2LYyudnYzdAXaY5j"], "teams": [{"parties": [{"partyID": "qeUJbyBP8pVWxLxW", "userIDs": ["WOb0ef90iM58HyJ7", "HcUOknOn3wXAUdNa", "jYC8ng92fkVMNA0J"]}, {"partyID": "WOxuGz2afManqIrB", "userIDs": ["iqr2qWN1R0V4ADso", "WWw2YBywuZhfgr01", "8X636fw9qxxz03jf"]}, {"partyID": "uFy8GHjZybAELju5", "userIDs": ["WKNlKyQWbH7vQt2p", "4cIzxDzq53WxWumT", "fg36SYmM0TIuN2h6"]}], "teamID": "s3e44XfyOLJLYpj4", "userIDs": ["31E8pHIIDmUDn4ZD", "pIfije6IELZkMmgq", "BKvJNA5KRlpYsmm1"]}, {"parties": [{"partyID": "hfeS429gxFQr9wTc", "userIDs": ["JXUYCQrOSR0YBZQ4", "bZve4gFFAsmudewM", "AmQI8r0RZRo01uno"]}, {"partyID": "3OCeJw7al2x5pFSp", "userIDs": ["ibz17Qosaragbh7e", "J66Yww2lT5FSTRRj", "FX02Jv9m8FFmlRqW"]}, {"partyID": "wLgEjouniPPzyyZ2", "userIDs": ["6vvOmrPGt7tgiFty", "poSl2Oqdp5OGVf2k", "gi5m3Q0Q77lt3hR1"]}], "teamID": "FFtblhKRADsxBgVf", "userIDs": ["nTgzBiWcEWq1mWkr", "rUCQ5SGCZtebbJjC", "EwcV4qQPVcsQQIii"]}, {"parties": [{"partyID": "owgktBKDFcefnsPY", "userIDs": ["iqXtISak17wDE2DZ", "0Aw9fv7AY6YrmXPA", "zSy5AQQVWAJFXnK3"]}, {"partyID": "WsCXANkEp4vBCctd", "userIDs": ["vnvsRhYCOkEZJKXv", "890kowF3lWa9lvnc", "2XrZ0356dyL7lc3V"]}, {"partyID": "HY5fH1ETkvXjjY7X", "userIDs": ["c6w2ZCQBKc9MWLBF", "EEl9rgTlYGnrkkSc", "sKUfvp9wJiScGQ8c"]}], "teamID": "Ral5pWkC6oa6KDeq", "userIDs": ["OZu8i2e2mHmxo2cj", "G85LZz8acL4uyrrT", "mYHKuz6fZHZAisj9"]}], "ticketIDs": ["5ktbqH5hVWq3i3n8", "99gEzz9mUsZo5hK2", "TIpMGRJmfJPFinp1"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 83}' \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'MFcH9BZ0AJa8zyJy' \
    --body '{"backfillTicketID": "MkPdhjmjOPryIkoJ"}' \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'xaOzOwbokd2tpQGt' \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'WD5FoiHkzTm5Z64Y' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'BykpXecolyntNGdN' \
    --body '{"metadata": {"FEFhkkeBVRgUKAn4": "sSASjBQZ4JG1xgfz", "cHmiLMz05HXKaHh9": "ktUIivY8dJGW0ZAO", "UiYui0cWbqBFmg0N": "nRWk09g1gevTwTlM"}, "platformID": "ahSWYN4A3qVtPV54", "userID": "EbwpV5x3SpOS89mk"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'I4dZPKeQS04mjzfm' \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ljqazNRNL56zm6U5' \
    --body '{"leaderID": "dFf41gtaAPIbk0RX"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Q2P3at9hDk6Ib4us' \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'RhV3MwhLrGBUaN5T' \
    --namespace $AB_NAMESPACE \
    --sessionId 'ecELFAKxmVw8t4q0' \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ICXroTQYkoKgYPHT' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionReject' test.out

#- 67 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Vou4z5lIgdqjeOnv' \
    > test.out 2>&1
eval_tap $? 67 'GetSessionServerSecret' test.out

#- 68 AppendTeamGameSession
eval_tap 0 68 'AppendTeamGameSession # SKIP deprecated' test.out

#- 69 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'j518yi2MtDuXJ704' \
    --userId '1UZyBognRb82jZYC' \
    > test.out 2>&1
eval_tap $? 69 'PublicGameSessionCancel' test.out

#- 70 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "5eEJ82By1TAcjfq6"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoinCode' test.out

#- 71 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Uk0OpGb48mmVSvDd' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetParty' test.out

#- 72 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'wGh8NUXz7p08dX9S' \
    --body '{"attributes": {"BYFK4AulV004Mq9V": {}, "6xQCP9tFuokAi4Et": {}, "FsFDkHdqvIsUcN9Q": {}}, "inactiveTimeout": 40, "inviteTimeout": 47, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 39, "minPlayers": 75, "type": "NONE", "version": 52}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateParty' test.out

#- 73 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'hwNGb4uHtyLV1t2P' \
    --body '{"attributes": {"2GvOL2Bi9tl6H99Y": {}, "EXDZUUcfNDKultt0": {}, "tBuc3kUHjmWOgcnI": {}}, "inactiveTimeout": 88, "inviteTimeout": 86, "joinability": "CLOSED", "maxPlayers": 78, "minPlayers": 45, "type": "P2P", "version": 99}' \
    > test.out 2>&1
eval_tap $? 73 'PublicPatchUpdateParty' test.out

#- 74 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'jycSNL9splNm6444' \
    > test.out 2>&1
eval_tap $? 74 'PublicGeneratePartyCode' test.out

#- 75 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'muZivdEKh7Y5eM2q' \
    > test.out 2>&1
eval_tap $? 75 'PublicRevokePartyCode' test.out

#- 76 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'rsAIHcYS5RUyO1NP' \
    --body '{"metadata": {"4hHdteY1uDmy6B8A": "gLKAoEha47oAkrrH", "4nIaR6V5SgFM6jBE": "XDHiRNRKqD6utdYg", "PD7s2j1SsiILgjYm": "IDmSXENM1O15oLTO"}, "platformID": "AY2Dw0194JHmalop", "userID": "01tUhi7Ta5DJV8kJ"}' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyInvite' test.out

#- 77 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'ljhcFSD2LN296Mbj' \
    --body '{"leaderID": "fPzqpefriJD0YTZl"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicPromotePartyLeader' test.out

#- 78 PublicReadPartySessionStorage
samples/cli/sample-apps Session publicReadPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId '98x31TDOeBOBvYTL' \
    > test.out 2>&1
eval_tap $? 78 'PublicReadPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorage
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorage \
    --namespace $AB_NAMESPACE \
    --partyId 'gOXp3FShonYORqsp' \
    --userId 'YutaMrQlL8vXVdSK' \
    --body '{"NsDNypx3ydw8vc75": {}, "DMKdNxDfKMdc3QJQ": {}, "hdq1hh1NxE5ekrJw": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorage' test.out

#- 80 PublicUpdateInsertPartySessionStorageReserved
samples/cli/sample-apps Session publicUpdateInsertPartySessionStorageReserved \
    --namespace $AB_NAMESPACE \
    --partyId 'xAepJmZ8WA6E2Rvz' \
    --userId 'Pfrl15EOVkgag0qz' \
    --body '{"00wcEuFb02PJi2vG": {}, "mSAmIMkvyDzEjSMp": {}, "9Tu5xmr2HyhPcK4l": {}}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 81 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'mu2Jal4kKDIxqtMN' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyJoin' test.out

#- 82 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'n4pzPr4K3WORldxz' \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyLeave' test.out

#- 83 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'HDFJao7pBieGsizR' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyReject' test.out

#- 84 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '13gPEqJbMCDTWZ9O' \
    --userId 'EzxZnhVdYThwRHWq' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyCancel' test.out

#- 85 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'ZfypYYil5FIurWCq' \
    --userId '596URmc28IWtFRs2' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyKick' test.out

#- 86 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"2yKZBaJC5MlfUNVt": {}, "wJ8lHuS9HWE5bVX7": {}, "3T8VhcYXfYCs94iy": {}}, "configurationName": "gNrluTHJIwtuFlcb", "inactiveTimeout": 86, "inviteTimeout": 99, "joinability": "OPEN", "maxPlayers": 96, "members": [{"ID": "zmbl54PtJ1cZWMht", "PlatformID": "SAfdd2MAmBTTWOLZ", "PlatformUserID": "3cXkCiDOFw8WCbo4"}, {"ID": "L2yCbCW7ywgvnrc8", "PlatformID": "dE6bMmFZcD6hZk3X", "PlatformUserID": "WA3Ysl0r47tnotsb"}, {"ID": "Q0iHCjGpWAJUiwmW", "PlatformID": "zsxnuAN0wRzAP3is", "PlatformUserID": "YztBbAY2lFExAoAO"}], "minPlayers": 44, "textChat": false, "type": "P2P"}' \
    > test.out 2>&1
eval_tap $? 86 'PublicCreateParty' test.out

#- 87 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentPlayer' test.out

#- 88 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 88 'PublicGetRecentTeamPlayer' test.out

#- 89 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '2Exa9eFsLlS4U9sA' \
    --body '{"teyC7NW6xyFDi7uh": {}, "HKyZwVI3o60Cwzax": {}, "A7To2FoNMN1DhmzA": {}}' \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorageLeader' test.out

#- 90 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SZJKuyCG5W57joYj' \
    --userId 'F0WcScejtlt9VKK9' \
    --body '{"v0OZF6SbrN14vPoX": {}, "8xuoMehOeBY0VBgN": {}, "1CxNMY4xNC4OuSrJ": {}}' \
    > test.out 2>&1
eval_tap $? 90 'PublicUpdateInsertSessionStorage' test.out

#- 91 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["WPr6preL3Rw8Etwz", "dmaiOaWYE7DuUr2g", "L9rcBr5geilEyEmb"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "9xwnxjSCsuo9Dv0T", "data": {"dRpFtxwI8zrhoWZb": {}, "0TTHejdPMthHdG4z": {}, "VA6gqInKUSdYSTJ3": {}}, "platforms": [{"name": "B9jID6uOpd56MDZI", "userID": "rtlHPXqZzkChLtIo"}, {"name": "WG30X9I2ATifGtlH", "userID": "JRK4cZMtYlEicUEg"}, {"name": "aL3idxgRb8gWg2TG", "userID": "7oVF7N93GpLt1m2I"}], "roles": ["nsloPpZLcNHMpMwY", "8EcGPuhWArLbOctY", "wbMjKMA8HvwdSbxx"], "simultaneousPlatform": "EeNhGDQG5QjuxL9J"}' \
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
    --order 'XqlbgiGAyDMUddsu' \
    --orderBy 'gmWp0d0l5O3zKZX9' \
    --status '69A2upaiSJGxwVgr' \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyGameSessions' test.out

#- 96 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'tp10IBxxAB7cyiv6' \
    --orderBy 'K1Cu3Zcm90uMIvJ2' \
    --status 'QOhw3kxK8OEo2ujp' \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE