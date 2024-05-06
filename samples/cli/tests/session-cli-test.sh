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
echo "1..80"

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
    --body '{"regionRetryMapping": {"QD5SWegSQteP2I3V": ["Zkdd0iTy81GTeH19", "Y56dTdURxLAGwV3n", "ot2nioFRdecNWKrf"], "9dReuh7EscUmIkbH": ["MKtxK38n3AHOoQmI", "NXqLagm8Iot01rdA", "i4kjWVXWrPuAHxoa"], "Tn4lPxAWbySSThPD": ["aUlvIvbOUDhA14Dr", "bnE6kjc7pHP9JIRn", "hjhkpVGV9tjHHFJi"]}, "regionURLMapping": ["o6Yh34cOmUnL2O1g", "eOKponjafONr3qoO", "Zhj30gPOfcxfbvUr"], "testGameMode": "QXgPjUEsVycT79Ga", "testRegionURLMapping": ["Vn0n0aGeq21G203i", "bFyJo71uG9c1RMRf", "5ZSVJjvyWIYdtrIH"], "testTargetUserIDs": ["86XgUoXw8wp28gQs", "PIm5E9qjfZo8Glwx", "rTQrhEQlCI0a2fSr"]}' \
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
    --body '{"durationDays": 39}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 36}' \
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
    --description 'S1NXTdaMR0KkKeGc' \
    --certname 'zRZgo8JpIDKS0unL' \
    --file 'tmp.dat' \
    --password 'seWQL05q5HL4GiZl' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 0, "PSNSupportedPlatforms": ["zFCMwN4B3al55Sco", "3CXGaDTXE3BHN2y0", "DRFu9M2OtyXHbt7p"], "SessionTitle": "ut1IcvCnahfKXleC", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "TTRvqScPSzvDcxHM", "XboxServiceConfigID": "e7Z2sCQnVVaz1qAA", "XboxSessionTemplateName": "GCFmHDI64vP9jynX", "XboxTitleID": "sZ1Z6Q7UK1EcPMwU", "localizedSessionName": {"4MhFiw6LOWOSwW3h": {}, "Fx6WqJsXmy1Uh7bt": {}, "6FFszNzUFpfPLsrz": {}}}, "PSNBaseUrl": "ZFUrtGBsPDXW99Sp", "attributes": {"n7SXWf2UwJjajfyR": {}, "3Mih4JQHCYFHjY9p": {}, "8kLIjx2frEnWzOo0": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "nBPseiLBabOM09iF", "deployment": "q94vTX7qzzjs1Nmu", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "TXObGlioGmGBRzuf", "enableSecret": true, "fallbackClaimKeys": ["CFYf4sazdLV8vyJC", "dNVOldBhjPTpWmS4", "rDwk8wTeD7GAVb8Y"], "immutableStorage": false, "inactiveTimeout": 38, "inviteTimeout": 99, "joinability": "mh8421ria3EViLhC", "leaderElectionGracePeriod": 46, "manualRejoin": true, "maxActiveSessions": 59, "maxPlayers": 59, "minPlayers": 85, "name": "VvzEK9XPEGcC1pMv", "persistent": false, "preferredClaimKeys": ["ccV5qv0pLpgTnFnY", "KKS8g8ELk8GosQgO", "kzNIts46gzBIVSut"], "requestedRegions": ["7kyrVonKT77v2g85", "SUQG22tS0opMWNeF", "jJKnJ8GozKbjSnKs"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "YpwNRLtGglm8JeXC"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --name '5wNeMZwNZ5Of8JR5' \
    --offset '6' \
    --order '5a2h6PuwTqvcOVWQ' \
    --orderBy 'RHN6LjbIseWBI4te' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'P1ANYFm93UtAo0Wx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '3DYYZYNa5uUTnfvm' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 60, "PSNSupportedPlatforms": ["vl7lOsUWY6zHD7ow", "r5OOCGn2ovCCtaZM", "LvS0r7YlFjkqVtQX"], "SessionTitle": "WbKzYW2NggWqfkrr", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4xrNkgeFpvabRULl", "XboxServiceConfigID": "pDO88obUIamvzUvy", "XboxSessionTemplateName": "VW5Gxj4TwpfayQh7", "XboxTitleID": "M7WiKc1mUvvh6gZe", "localizedSessionName": {"ES4bQ8NuTwLoxWjj": {}, "3VCxNBZnLOerrzxL": {}, "DN8TdObNvwubTslZ": {}}}, "PSNBaseUrl": "fMn85D67DIPtA5cS", "attributes": {"5xY8HEqBIcLEJTH0": {}, "sG7UZmpcpp1mJPG2": {}, "9INYQxZCqrRB1vPl": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "TJic4GFRjaYLbWo3", "deployment": "YvE6LkUUvyxCwUni", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "IDocQIz3wsj3MVrq", "enableSecret": true, "fallbackClaimKeys": ["YWlnXXCxVmHXzy2f", "xFDa9ZWYO3tSDYpH", "wykTgvvxr6xklFjv"], "immutableStorage": true, "inactiveTimeout": 69, "inviteTimeout": 3, "joinability": "eFHUpL3gf0fec4f3", "leaderElectionGracePeriod": 96, "manualRejoin": true, "maxActiveSessions": 64, "maxPlayers": 2, "minPlayers": 8, "name": "WqK8N2uxpkvB7Xd2", "persistent": true, "preferredClaimKeys": ["PNOt8f7EhEOwIqdQ", "IpA2UasjqJyfWE9c", "2M9JrQaaFchCRgxz"], "requestedRegions": ["8sNR9RYSpeBoq2ax", "hOU0xdgGsRjGEL4k", "F5SANz8aZNPa5u2N"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "pBblguluAbOwvwO5"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'iL13yNGDf1cYUqY4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'MjjEnuGkXeyOJgHR' \
    --namespace $AB_NAMESPACE \
    --userId 'BcrGqPadfsbDs1xb' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'W8Lko49iSQiwu0gU' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "SrLHAaOcdAgZIivF"}' \
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
    --configurationName '3g6xSFm9dJxmgYQm' \
    --dsPodName '0d1xlewkoskhcijY' \
    --fromTime 'gQSwY5gI6xgT5bes' \
    --gameMode 'LmBrYvS9izWe0dKc' \
    --isPersistent 'qoMYA8wAHs7WHh9Q' \
    --isSoftDeleted '2TUx6agObvshMH6y' \
    --joinability 'FsgiXTYd8T2CYMnT' \
    --limit '1' \
    --matchPool 'cpTplLgYzMeguKQ0' \
    --memberID 'LHPR0ziQVN4Rjamx' \
    --offset '68' \
    --order 'kvZADpBCWhiiIbGI' \
    --orderBy 'S38zQDvlAy9n8iRX' \
    --sessionID 'tE4wK5rPS64plNwq' \
    --status 'VqD4ahYkH1hCPFhC' \
    --statusV2 'E5iUkOIRbRHavcxq' \
    --toTime 'EocAgGftdPCAJJZK' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Wj7xDXJx8Ib22wwC": {}, "QLGT62pI59UTQ1wm": {}, "qy3KwPsEJxP2R5KU": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["bQy7RgBoJFAS5m95", "mcOQjAWVuYgMvUpz", "IrQsDlfmaQwvNMeL"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'gNGAh92HpjwNg0vx' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'bcraZtnMmoB2G7cJ' \
    --namespace $AB_NAMESPACE \
    --sessionId 'qq0tdVeiyS8ejsKA' \
    --statusType 'TGlURdBsoPIeTggv' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '83' \
    --order 'kQ8Nw3XIa8NDl2Gw' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'OunfcRSf47MNMiLE' \
    --joinability 'sZnv1rykVLWvNL7Y' \
    --key 'GjBorRRrYIG2RRfi' \
    --leaderID '2IOlYyW1xXPyz41U' \
    --limit '4' \
    --memberID '9KGGGburwCezaa5x' \
    --memberStatus '4Fqa5GgkWrkb8y2Z' \
    --offset '83' \
    --order 'BIUWDCMiBL34bo0n' \
    --orderBy 'n1s3ozhyg5A5Z4xR' \
    --partyID '6LHMwksXWCdjQbct' \
    --value 'fDSoee1ecLuK9XGx' \
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
    --body '{"psn": {"clientId": "iCWFyNH4UY8VFRMz", "clientSecret": "zn7UnfK2w86SVi23", "scope": "Pqwf2TC9iUT7itNo"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --userId 'fCO65sTqYwook7wQ' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --userId '7eHGvZAzbs4qRElq' \
    > test.out 2>&1
eval_tap $? 34 'AdminGetRecentTeamPlayer' test.out

#- 35 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'UtGUfoMer0k6DjqV' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadSessionStorage' test.out

#- 36 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '5TMs34RXb4zsFJFE' \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteUserSessionStorage' test.out

#- 37 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'LXo06OxpWLxLbwTw' \
    --userId 'aqyqgT35rHtjTDqM' \
    > test.out 2>&1
eval_tap $? 37 'AdminReadUserSessionStorage' test.out

#- 38 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '6KrAs8VKiuCVlr5G' \
    > test.out 2>&1
eval_tap $? 38 'AdminQueryPlayerAttributes' test.out

#- 39 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '8rj0J2ad7H5MKHSZ' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetPlayerAttributes' test.out

#- 40 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"jCPA6kcD58dSwfTA": {}, "Agah5ZgXH8771e7I": {}, "2sI4tcDXfd5WR89p": {}}, "autoJoin": true, "backfillTicketID": "73VmqVRxSY8taGIk", "clientVersion": "wSIiscBwuRABcc8W", "configurationName": "WP5oxcFqRihbdq6e", "deployment": "jWRliZqsNb1LxhcR", "dsSource": "KD2eS4KZl9zwhTMC", "fallbackClaimKeys": ["EasTI3bsCqporSBG", "n8TBEe6vrl4VNyHu", "XMKgV5QGcQhFD8e7"], "inactiveTimeout": 6, "inviteTimeout": 84, "joinability": "4h4hzrV45y5c8MrK", "matchPool": "SDaSBFqHmkeXR7OO", "maxPlayers": 85, "minPlayers": 14, "preferredClaimKeys": ["dtBZo1dyGK4JCXej", "AUeAisEzyxMX7k1M", "zvxxIqK6BsdzeCOx"], "requestedRegions": ["CutUBsnD8U7CNkRU", "c6v85Fb7XuqbAV4S", "1djFvzv1x5szuyKn"], "serverName": "8ntfuwdIRZAiwGo7", "teams": [{"UserIDs": ["pDMUw4YfZhMzHL8j", "wmccobyIVi3pKbNB", "qmW9OzIcBEV5ZaV4"], "parties": [{"partyID": "4TcTI3bCN1F6lEEG", "userIDs": ["fwn9MATGucV2NTm8", "HkrTq2zhqETYV84R", "u4tF4MMsDOl3Bdek"]}, {"partyID": "2XmwYbIsnKKDjtY6", "userIDs": ["orSPe2oeRtvKZp1f", "rQNV5ie9JF7XV96w", "fVgHZEMbFZ4hMjOH"]}, {"partyID": "tjEhrY0iNoQxKHTR", "userIDs": ["fWNJHQuyNBi2tabz", "GH3smnVfiUtEodPP", "5d4ZHTAi5mvM2sRi"]}]}, {"UserIDs": ["GqrJ6o1XyiSdR0vw", "bsTmimXjcdkJT6Xp", "SWQxMSMqdyoum4LX"], "parties": [{"partyID": "E0uhsmdOBWLULM98", "userIDs": ["ASqucCVcaTroQ0Rf", "Woz3BAN7fWHP9y7j", "C6hbRvraadM2n5Qi"]}, {"partyID": "PSY0GLRycl4796kg", "userIDs": ["Lpc97Dn71R1QsKld", "xlJsxMBvbz3qmSC1", "5fLnamnDAjUBr8lu"]}, {"partyID": "jk3TXlWzbtdAkam0", "userIDs": ["bflaZfJVILT2YWqS", "5q9kIdpZSJlQRk4U", "Y3rKrlbSiqFhDV2E"]}]}, {"UserIDs": ["2p0xM0T6EgT8nW9W", "5jnoYmt57K3oC996", "e6Iun6vlycUofOBc"], "parties": [{"partyID": "DswmL8zc7UPypoqG", "userIDs": ["TevIPzSGzxgAxAg1", "UqdwKTpT93l2D5SA", "f7F44Iv3axxf4cYu"]}, {"partyID": "LYQqBvuB4xLEqjzZ", "userIDs": ["thOBILMdHAKpRYLt", "ttPsUlFD7acA7A2P", "8JzqMR89xaKtzmHj"]}, {"partyID": "gN1NfNB6x34T8NbR", "userIDs": ["bk2VyshUBoBINyA8", "FsKUBezXc9ockfPg", "6E8Qk73PuexxSGH5"]}]}], "textChat": true, "ticketIDs": ["0UfkDsH4mk51tNAG", "kmokXaUlddwWQzR0", "VPVYHZqaXdSmfiFC"], "tieTeamsSessionLifetime": true, "type": "iDM3XhUNtkOjy8bx"}' \
    > test.out 2>&1
eval_tap $? 40 'CreateGameSession' test.out

#- 41 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"VdnHTGql8smF34Jp": {}, "UY5TyzjKPZm4wOd2": {}, "GlLaMIY8Av2woqkp": {}}' \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryGameSessionsByAttributes' test.out

#- 42 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SgnHUzSiqwD6gBx9"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicSessionJoinCode' test.out

#- 43 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'zgMFHOekjxKTe73L' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSessionByPodName' test.out

#- 44 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'oxaiGenz4mVjPCuE' \
    > test.out 2>&1
eval_tap $? 44 'GetGameSession' test.out

#- 45 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'yvK2X3sKU8TT0PYa' \
    --body '{"attributes": {"pIkZUYX9whpnMxso": {}, "Z9tTkVPzHFKIgGLG": {}, "i4ESLESnQDhYRw2n": {}}, "backfillTicketID": "croYKwveGJmcSnyT", "clientVersion": "GOCsEQkjVwwkTobp", "deployment": "CRM0Gy2V2IhHqG0T", "fallbackClaimKeys": ["eZZtVtI7G9wGlfmf", "cY2Sw97YSRqWhsvU", "qDX1kj8f10ctHkxG"], "inactiveTimeout": 61, "inviteTimeout": 84, "joinability": "0IKljnKcURWY2F1e", "matchPool": "Vhf45tps6z4Sdn2R", "maxPlayers": 100, "minPlayers": 17, "preferredClaimKeys": ["1nKMua2tJIOvRcJk", "CCQ2CpLbI5HTzeGU", "u9Zga71QrMF9k1jf"], "requestedRegions": ["hmbhByPuD2WBKju2", "dfj8NUFjxkAnPkUu", "eYzgheS0wFUHo1Al"], "teams": [{"UserIDs": ["RPTISJDQ8PXyiR36", "Zclb1OeBgM21ZknV", "wsRgte2dtqrAmcJF"], "parties": [{"partyID": "0kFFa5nhC6mg37uV", "userIDs": ["FuRk5u9BUXV1S4Sn", "Pjkz7RNzcXvTbPZd", "d9P0ugEeVr0e2eiZ"]}, {"partyID": "DyqA4xKV62UOUjxW", "userIDs": ["FJFWXeet5pMPaia8", "74bYcXjeWKVd44TT", "HFFox5XXewiB4WK2"]}, {"partyID": "DBJRnVvLkgqDaPjE", "userIDs": ["7UW2Obk4aUWyOozj", "FwBbW8SdebIOtDkV", "FGl6tLCbZD36GzIj"]}]}, {"UserIDs": ["TSIBRLssPvqZy5Go", "LHl7EKNsvL0VW0P4", "vHKa0C2wlrZI66CK"], "parties": [{"partyID": "jTrBfEksp92Hgaze", "userIDs": ["5AxIoRgAPiMrbJup", "6LeE84HhYm1CppDD", "F5QcEgCVjQjYoTEP"]}, {"partyID": "mx5tk2MU3E3qv4Sr", "userIDs": ["1UzOXTCJZ7EzU4KE", "QNomfbhn400EuBYm", "D4i9dAThM7Wlv4Wc"]}, {"partyID": "sWu7dvnno0XB4Hoo", "userIDs": ["tN0MmPVcAx4QMWQb", "rSDg3Qzu7DopXumH", "1bsnJx4onabKdRF4"]}]}, {"UserIDs": ["ZgGl54r1RCCfDbPW", "c0S1slxB4L1nz84K", "AUZyF2gC9mkEAbT4"], "parties": [{"partyID": "G17gD1Fe3XEGUkEH", "userIDs": ["qQWoAkGvo0rSqIB2", "Cwkt8N4oth1E4mJ0", "4dsai2keC95FFkel"]}, {"partyID": "UZS2auatk2KWKte2", "userIDs": ["CjptzNswcYrZLmZz", "xfKTYn62k5hZRUWE", "3DP0gycnUZ7qOCNG"]}, {"partyID": "tgmYnDpvpcUkf6e3", "userIDs": ["DYCvYIA13FmHFist", "6dJdHfYrsOHxUKV3", "944FiaZsOIyIQGwD"]}]}], "ticketIDs": ["9E1xFJY4MZwVaG0d", "OKCLYtVs6a5dQWq8", "dGRrkmHFbcO13ViZ"], "tieTeamsSessionLifetime": true, "type": "SOyjPnyBgTnOJ8EK", "version": 4}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSession' test.out

#- 46 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '1LJNUPy459Nof42b' \
    > test.out 2>&1
eval_tap $? 46 'DeleteGameSession' test.out

#- 47 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qGCRzu1DYfcC03dI' \
    --body '{"attributes": {"uJqx6IEyiDkBLgm9": {}, "47b3LajjrOvP9a9E": {}, "CLDUjjEaER6ZuM9R": {}}, "backfillTicketID": "MXSCRRihdOGp4py0", "clientVersion": "QPs77DevP6yYz90X", "deployment": "DxiTfiAhNCEyy9IK", "fallbackClaimKeys": ["A2rxifb2IvljJOxo", "LLXomuLUEM64ZHe1", "H8ISFQiS5IToDQjD"], "inactiveTimeout": 84, "inviteTimeout": 78, "joinability": "ADw7Vf1R1ZxIcdgj", "matchPool": "oSHuQF8qtyEXS4ge", "maxPlayers": 47, "minPlayers": 64, "preferredClaimKeys": ["GDOChVITkX435t4m", "L1redkpymo6A4E4p", "aam7ZCDAyXUlccWW"], "requestedRegions": ["AN474DKqkSypi39r", "ld7gvwdaGPqRm6cC", "Hhn4f1s32OiD5Pov"], "teams": [{"UserIDs": ["S23LuPTvJ7e6vRVB", "zSXWHBf0DSwJutCA", "HvaSuxL5QqoGnVW5"], "parties": [{"partyID": "4lWeCvOZu8h4WBH6", "userIDs": ["OMnNaQ13Jyh0inRG", "mki7iUeIbJo5tTlq", "lUJfkTBgAgdEOESN"]}, {"partyID": "mbJIBYfAEVmTX2cX", "userIDs": ["wiWZ3mbOHNDUv8RX", "sR6jfA1rhhfIgKri", "fdfnF02GWnBwNTnq"]}, {"partyID": "jM5Zw4nJaBkNqMou", "userIDs": ["PGao6tkUHnsM66Zk", "sXdfM9GBcAOodd42", "YfpWz6ISjDDbkdY5"]}]}, {"UserIDs": ["FBYR1f9MwpT9N8FB", "z0dgufRSg3dDNluI", "71mMqZK6M0JglXki"], "parties": [{"partyID": "LGtK05xAOdlQgt29", "userIDs": ["4peFowZtbgMkwNrU", "JEgLmP3kOUBmOTFY", "EX4R5zZHrJdVre5e"]}, {"partyID": "rcxcAmq2Lp8e5YaH", "userIDs": ["ELfaIvl5rVsnDQ8X", "syg2gfNvJ6N5APnz", "7yTIZfw78MZODhMP"]}, {"partyID": "9FnfIXalMhalVwWb", "userIDs": ["PKgTvpYCblj2cDYS", "5lYGNdeldAH2ED3e", "u83ep7FIoKaZWgmq"]}]}, {"UserIDs": ["cEIgaOMunAFXLdzP", "OrZbMbGeaQXZzaom", "gFjfWV8grgN7xt4p"], "parties": [{"partyID": "IRXCeWWYBg9yEoTF", "userIDs": ["Vcfli1kcev8aoMdZ", "JJsxdiJxnQxH88Um", "G0F6uJmTiHEKSL3X"]}, {"partyID": "w4Q8AffIl7LGv2Gp", "userIDs": ["v0asmqcJCmUHArrL", "Mlaneco1Wv6krvFl", "KtdZwL3yO6Ozi90V"]}, {"partyID": "sQhaO6VixcF1gvgf", "userIDs": ["ksbZrjkZa9iDELmY", "kcraJg7dJWBchmJn", "whvJVgVA1e8I5EQ2"]}]}], "ticketIDs": ["4Hp6qypMpIDcr0rU", "yQ6aePgi35aOzbS6", "FXJGFtvG9TNtPJ9e"], "tieTeamsSessionLifetime": true, "type": "fjpKyd6R0SzvwSOu", "version": 65}' \
    > test.out 2>&1
eval_tap $? 47 'PatchUpdateGameSession' test.out

#- 48 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '7f09ZtLlhqCWaXJF' \
    --body '{"backfillTicketID": "nNyEGtfhNHjS5dri"}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSessionBackfillTicketID' test.out

#- 49 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'jXzr8tqF9NakPfBZ' \
    > test.out 2>&1
eval_tap $? 49 'GameSessionGenerateCode' test.out

#- 50 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'nfbAitKix2MYadhv' \
    > test.out 2>&1
eval_tap $? 50 'PublicRevokeGameSessionCode' test.out

#- 51 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '3J6KRpTNwLWE7mCJ' \
    --body '{"platformID": "M61B9ced7doYP3YA", "userID": "f2bJDfHbeMK5KbdL"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicGameSessionInvite' test.out

#- 52 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'V67McI0vu1DePp86' \
    > test.out 2>&1
eval_tap $? 52 'JoinGameSession' test.out

#- 53 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'fuY1BdYESiPjDT5Z' \
    --body '{"leaderID": "2u39HmANbhIPxiil"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromoteGameSessionLeader' test.out

#- 54 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CA5NzNCb5WdVdqr2' \
    > test.out 2>&1
eval_tap $? 54 'LeaveGameSession' test.out

#- 55 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'TxAREMgy9wF89Ixl' \
    > test.out 2>&1
eval_tap $? 55 'PublicGameSessionReject' test.out

#- 56 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'RYv0f7JhuANmNcLy' \
    > test.out 2>&1
eval_tap $? 56 'GetSessionServerSecret' test.out

#- 57 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'M8hlQWupOz6F4lfX' \
    --body '{"additionalMembers": [{"partyID": "hqS2Am1Ljyi3qiNA", "userIDs": ["oVCK5LFvRcgVhFZT", "Hr1hXDfXJKMgwvEK", "5nzk7bECkeWVdOmt"]}, {"partyID": "uyxsTWBOebhqZ0j0", "userIDs": ["qt2l3Td2o3wnifPL", "tDmSPsX00F96jAd2", "r53YgS4BHYwDbPUR"]}, {"partyID": "ELMMYZYJt6vGjGhH", "userIDs": ["afv0ozSuH0lIpun4", "kWL7074xVfpzpeb5", "AtiddjTKnkjyQ1lH"]}], "proposedTeams": [{"UserIDs": ["6I27sAMY2FlDCumM", "GLfR7ilD40V9PEhi", "ISrXKqAfgEvA04AQ"], "parties": [{"partyID": "9FnglEoEsRaBZek9", "userIDs": ["rYYg12HfxqLhAbPK", "O5yuXQGLmhiP9RDy", "rd8odocJ6i9aYo2r"]}, {"partyID": "J1oOFwFS5vZt77ST", "userIDs": ["oOziSyHTO6Om5Qbb", "wvjCQG2oaKXUq2L7", "kKJPPEWGj3tM7afK"]}, {"partyID": "sf3PwIOdbt1FSVCz", "userIDs": ["POBK4ALhHfq6UyeT", "xusfpamKMIia6U6b", "mAsV63mqHREc5OA3"]}]}, {"UserIDs": ["pWYtgAoobLpvfTvP", "vdFtFdjJiGTfKe9Q", "AxYMmyrnLhY1u5zc"], "parties": [{"partyID": "wNQbhk0PZmtSgiXq", "userIDs": ["crbhrL8tZmoYVrdZ", "Yn2PGYLCFq2pZmG6", "mqVC19JrYLFLmQ1n"]}, {"partyID": "S894vQgWsnXD3Zob", "userIDs": ["IXaojrvvrujGWRfc", "944R0F5mGdtNRVVt", "3JguPWp9Y1Iweoco"]}, {"partyID": "Psvz7WI6szmsZgjr", "userIDs": ["VTp6t57JfKfQXFtI", "9gQYM7gZxU80mCd6", "9vg7j3AIscsgcNZT"]}]}, {"UserIDs": ["DyLl55ozxamvpIR6", "ccmrLK4QSkKj56oe", "2b5IqVBOPQbyZTTN"], "parties": [{"partyID": "IfkdBXWzKgSI7wi2", "userIDs": ["KRG0YbEa5eBkcp36", "JUiV9Axlo6RZ0QHr", "ju1qtf6pkgavVvof"]}, {"partyID": "F2a5hJyGkFsK8xqW", "userIDs": ["tSfZf3SPmxlEO1b6", "cpaDVKjHhC5XU8sl", "pmobdP15tTzGAhfS"]}, {"partyID": "ual2ydOQVL4KyuI6", "userIDs": ["xlO1wV61mwAy6Foh", "oYZ39KyEGo5NvZbf", "PIcXINiZC0Atbx2D"]}]}], "version": 26}' \
    > test.out 2>&1
eval_tap $? 57 'AppendTeamGameSession' test.out

#- 58 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Da7cCNfpWojSaqvF"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyJoinCode' test.out

#- 59 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'BCrqG51XAChQSzQn' \
    > test.out 2>&1
eval_tap $? 59 'PublicGetParty' test.out

#- 60 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'zPNo8wZqQKSM8JZW' \
    --body '{"attributes": {"GqJx9slf6g4KMQpL": {}, "bucIu2wtX9nBPYtH": {}, "99yTP3yt7ZRTVUVs": {}}, "inactiveTimeout": 17, "inviteTimeout": 60, "joinability": "wl8rGzUARq4Xsq1t", "maxPlayers": 39, "minPlayers": 43, "type": "ls3Ph4t1chQHUbqn", "version": 19}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateParty' test.out

#- 61 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'attQldgvzauiEMiL' \
    --body '{"attributes": {"xnWPVgsjtsT6NsmW": {}, "6LhN1ryaZA8dpthj": {}, "itZjyoYmi3RKQO4i": {}}, "inactiveTimeout": 55, "inviteTimeout": 54, "joinability": "jmFRwGC70aaHMX7Z", "maxPlayers": 16, "minPlayers": 31, "type": "T9XiYOOcPSrT1R97", "version": 74}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPatchUpdateParty' test.out

#- 62 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'vkfJtpbiKBRzLBqo' \
    > test.out 2>&1
eval_tap $? 62 'PublicGeneratePartyCode' test.out

#- 63 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'PYo964WFKEPlStoB' \
    > test.out 2>&1
eval_tap $? 63 'PublicRevokePartyCode' test.out

#- 64 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'zobAvPUHWrAEaBpe' \
    --body '{"platformID": "8g4wnEOfOa53QA4y", "userID": "R7GuEK4vMxZTB3mt"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyInvite' test.out

#- 65 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'hj9OLsYpUJkUsbPC' \
    --body '{"leaderID": "8AzyzSjamDkz58uH"}' \
    > test.out 2>&1
eval_tap $? 65 'PublicPromotePartyLeader' test.out

#- 66 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'ksonkPXPGRxRyneH' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyJoin' test.out

#- 67 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '1wbmATLbvjg7USmq' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyLeave' test.out

#- 68 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'LDCgGFv8GMCrS4ya' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyReject' test.out

#- 69 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'boZHphIjBFPHfDWR' \
    --userId 'PGszshpcezmD67Ww' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyKick' test.out

#- 70 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"7ksbCHwIt9ugRqPa": {}, "Kc8pw9rQ9BND6W8t": {}, "LgMTgUJxR5a3TXtn": {}}, "configurationName": "OE4C10i5Ea1oMLIS", "inactiveTimeout": 43, "inviteTimeout": 22, "joinability": "77BuKEM8NLXHnzBM", "maxPlayers": 44, "members": [{"ID": "85VN7NGmY1Xl345p", "PlatformID": "lPDdQ1pUs83y48pU", "PlatformUserID": "r6dKO5gcHvJazLya"}, {"ID": "4IGhzqJvPCN6KpKD", "PlatformID": "17LumpWKzjAAh09U", "PlatformUserID": "mZ6IGjrJAuvGNNkj"}, {"ID": "zdOea9fJePmq7kdS", "PlatformID": "uQ1KDn7Xhi4Yzw0h", "PlatformUserID": "swat00y7Re1ca39r"}], "minPlayers": 13, "textChat": true, "type": "Nlkv53o04AoVUtSf"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicCreateParty' test.out

#- 71 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetRecentPlayer' test.out

#- 72 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetRecentTeamPlayer' test.out

#- 73 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'jz95bX5mybAOyaUd' \
    --body '{"VTHYX2ll1jbPLoKy": {}, "eWtnLznPbPGF5SqQ": {}, "p6HDXSutXYF7mMs1": {}}' \
    > test.out 2>&1
eval_tap $? 73 'PublicUpdateInsertSessionStorageLeader' test.out

#- 74 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'as4uqXfIl2Dsq2k1' \
    --userId 'vr9CK22KLOhBPIXd' \
    --body '{"LhEr8d4BRTlapFFb": {}, "d9gxVzMHzyS4UsNf": {}, "084oULn3oLpvVQL4": {}}' \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateInsertSessionStorage' test.out

#- 75 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["pxfJxzO15fML1PwB", "sn78ufXh4TnoYAe4", "iHfoLoLPTGoAn4Og"]}' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 76 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerAttributes' test.out

#- 77 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "3WlvaWSBQL5dU342", "data": {"B9AnVqVyXfCqkux9": {}, "ccZofy4scnhye27D": {}, "cI8TRarR7CY34YLX": {}}, "platforms": [{"name": "G5bi9GxPu6SghXFe", "userID": "cOdtEKg2zvYMnXSr"}, {"name": "2Go08kKJXlOU3aFO", "userID": "J4UXaur3ZCiHlbU9"}, {"name": "PRXupgjptpufhGTD", "userID": "Er1V3UohCKlkeNGu"}], "roles": ["1I0DuSRgwZUCSn81", "fl5Z6nRFRHEbvfzD", "Oam23SMoSNXw2ie0"], "simultaneousPlatform": "dFGHDkp0QxFOLYZW"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicStorePlayerAttributes' test.out

#- 78 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 78 'PublicDeletePlayerAttributes' test.out

#- 79 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'MR4c91rHUgRHGMO1' \
    --orderBy 'BKP7aYh3meBM1Kxe' \
    --status 'Pos8WgZQhyS7nNkN' \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryMyGameSessions' test.out

#- 80 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '5n35NY9HoEPSOFbB' \
    --orderBy 'rDEr5864tEnu3vXI' \
    --status 'qQrYjYpnBvbs5P9M' \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE