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
echo "1..78"

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
    --body '{"regionRetryMapping": {"5O5zYoF03Sw55saH": ["eEkvQUrH4LpbBcap", "Uw7pfQbEwRkBUkkC", "pVhfkCdanP2uhIAw"], "M4dyA0EVCHIpSiBj": ["87vPVIhKU74vg7mP", "ZkBaURonagowQpnV", "uQapm2H9UHm9Pafb"], "vg4nMXJqo6CXRCtr": ["LUZ0Otqsnh6Gf3gB", "n3uYXyZNtAiG6zTm", "5CM4b91AiUBEJONM"]}, "regionURLMapping": ["67ozAYCTgdJzjDuk", "V9J7u6E5ZF8BTZQ4", "SIxO6M3N5oFyzX7x"], "testGameMode": "YS81VGxM6cEXX3sw", "testRegionURLMapping": ["F7qXBKODadp9vAu9", "TPSIY4v3X8ua2AYv", "H32uMW0VmHfaAf0W"], "testTargetUserIDs": ["D8qgapdgEClxov4f", "n405PwEj7zGhJMb8", "2CHHFUmHVi3FOJmO"]}' \
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
    --body '{"durationDays": 44}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 11}' \
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
    --description '6EAJ16Gt4DlB4pWQ' \
    --certname 'Uc0ymfOKd6lwadke' \
    --file 'tmp.dat' \
    --password 'cARaQC5vlwmfxGcB' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 13, "PSNSupportedPlatforms": ["25IDwOcwdXFIeQFS", "CubLM98MOQvgZSoA", "TGwzoHluVxkpCwt6"], "SessionTitle": "MVnRqRtQwjFLLCe9", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "VNnPPPq68spn3Ecw", "XboxServiceConfigID": "bzjIBXySI22c28Us", "XboxSessionTemplateName": "uv0uc8SomDvOzaJQ", "XboxTitleID": "U9jEDA3xCrvKp0I5", "localizedSessionName": {"VTMdOYRjBGXTODwk": {}, "FQWtIBvc3fwqrG7P": {}, "zgyQE2xxTktWqond": {}}}, "PSNBaseUrl": "C0oBxjZ4IAywGbPp", "attributes": {"DJMx6D8TP1iLHS47": {}, "6n0dlYjCxwD0ar31": {}, "hZGtue4HLy5l4Bl4": {}}, "autoJoin": false, "clientVersion": "tWkwGPbFUxN6vvcX", "deployment": "QolqgvziiHXvoM7O", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "BNNwzZiUG8ynNM8X", "enableSecret": true, "fallbackClaimKeys": ["8Ye9ZeEijegvjnbt", "WeqTDkRdGLVdw0iM", "W93c9hJavCK8QsjA"], "immutableStorage": true, "inactiveTimeout": 97, "inviteTimeout": 1, "joinability": "NLaT30ozh1C9Fnoa", "leaderElectionGracePeriod": 62, "manualRejoin": true, "maxActiveSessions": 74, "maxPlayers": 99, "minPlayers": 65, "name": "uGUprR1jzcMk0C4L", "persistent": true, "preferredClaimKeys": ["pZ7VfR0RRwG6Zc5z", "3FUT5q8oaImo3Zto", "joFQ9ATs9TCzNdFr"], "requestedRegions": ["c2qOSoVbtykdey5F", "6Qs28lviTMvjMFai", "eZIligSBckMPbxwL"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "3nUc8DccnE7fZ6YY"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --name 'uOZp4D2cpNssS7oe' \
    --offset '48' \
    --order 'dYO0ChZus6fthPwL' \
    --orderBy 'z1k0kqn8hBF99mxW' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'D3KktCIkwD8ZJGXr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'Jeg1f1tZ3lfIg71W' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 13, "PSNSupportedPlatforms": ["82pei7oBaEwd8y7M", "hKNZILQVYTc5IIEv", "sszNIueHr0J6Zekk"], "SessionTitle": "G0GWGoGQuH7Pqi9W", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "uW5u0vDcNphJDpxD", "XboxServiceConfigID": "AXevQ1fqgEgtgpBH", "XboxSessionTemplateName": "59vWaU9aq4qwSUrp", "XboxTitleID": "cTuOUS2IbV05WNzW", "localizedSessionName": {"oivgvvyoHvZ7P8Z9": {}, "2B0h9xegUjIR5cVH": {}, "VIvnrx9sN7kDJMEE": {}}}, "PSNBaseUrl": "7E1ega38aCB7NXAq", "attributes": {"Ql5eNnHtmvG3L9U0": {}, "zmfVZGBsXI2I7Mjy": {}, "YdCLQ5Mqu3NxFTW5": {}}, "autoJoin": false, "clientVersion": "L9nt8h9gKEoihlBG", "deployment": "L00KTOiD9NgDCgND", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "xEEje0YNa3wemfNP", "enableSecret": true, "fallbackClaimKeys": ["eIYwITErMNvR1vin", "SMRUWQ0etXtHt1W4", "tTwj3UifgqAPwS2t"], "immutableStorage": false, "inactiveTimeout": 20, "inviteTimeout": 75, "joinability": "9YuRhPQMXhxaDqj4", "leaderElectionGracePeriod": 35, "manualRejoin": true, "maxActiveSessions": 72, "maxPlayers": 22, "minPlayers": 98, "name": "4qHKQ3fgMlzK0zkr", "persistent": true, "preferredClaimKeys": ["0Ox2bwLW2XBb1Fcn", "1FeThgd8XHYN7NzP", "m8syCZKUOqdj9VoZ"], "requestedRegions": ["xZtRTo7UOvDoHMwX", "wbJaL1SLs9Mxkmzi", "psvTCXGgpyPI57Zi"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "9x9oI36Wosi3zneO"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'zxaGncVkESk2bbzp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '20QESpNdXF67hpHd' \
    --namespace $AB_NAMESPACE \
    --userId 'P3Fu9JYSxMXXvA7l' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'GPR05UsbujFWDczX' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "LZX3XptIulW6dQ8w"}' \
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
    --configurationName 'r7irXR9VRnQ63WF9' \
    --dsPodName 'jP2hoXm0SMkGJjY0' \
    --fromTime 'LQEnpx19Ye70LK7y' \
    --gameMode 'PIkRbJFUise8MTBP' \
    --isPersistent 'id4FwTnznYctNsM4' \
    --isSoftDeleted 'vAFARUdIKKSqDpDU' \
    --joinability 'iNxhqqeS8Ccm5w7L' \
    --limit '11' \
    --matchPool 'ynsqKrURem3M9Xle' \
    --memberID 'zQYCKcu5IXRkQiWb' \
    --offset '12' \
    --order 'xnGSBjh4GOpgsuyN' \
    --orderBy 'rGBssBIeATc4nod8' \
    --sessionID 'Qo6lHZisqTg4PCbR' \
    --status 'FsbwFt0N8CA1aDtM' \
    --statusV2 'M6G3TIvxDSWVgiqJ' \
    --toTime 'PcfR3Skib9ZKduEv' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"E0V7OMuAkoUv7ynI": {}, "P7JCvQ6fhjcuF4vc": {}, "Q7n1dOOYtwyXxs07": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["mZv6EGDFVuXLVCVG", "X2bfHt4bV3GD5feP", "iqlI4pU5tVMROVNq"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'DyP3U5xZJpg4lnQS' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'FnkpdiYdENGuFlrV' \
    --namespace $AB_NAMESPACE \
    --sessionId 'HNHcGyjF5xt7t306' \
    --statusType 'yNhqDsAFm80fgB0O' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '94' \
    --order 'CDlfTNrbt1ZCZQ0V' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted '3JU0K3uSiYWZnnlH' \
    --joinability 'A6imyyV3lPsFpuPt' \
    --key 'ctxPsMCql32AoTNv' \
    --leaderID 'ARSlBSRr9DfVgjly' \
    --limit '14' \
    --memberID 'QEgu9oTRZY1IaPjB' \
    --memberStatus '5rlECiskI4vRt8TT' \
    --offset '89' \
    --order 'Uj7PFVWiZgBZtXJ9' \
    --orderBy 'qmadFrOWhwiyTA7j' \
    --partyID 'eM65XIG2WIStn03x' \
    --value 'oFTwaQKP5VzNf1Q9' \
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
    --body '{"psn": {"clientId": "bfoM6hEAXB7QjLTY", "clientSecret": "zl8q9mAUB4SdgFJX", "scope": "rPXPqFVEexF9jsYO"}}' \
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
    --limit '84' \
    --userId 'I8Q8i7Sxle87pGc5' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'h6DaWs8H6XMax5OL' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadSessionStorage' test.out

#- 35 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'SehCSxVUsChJ4vGz' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteUserSessionStorage' test.out

#- 36 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'LpKoRbBHkDRpgJ64' \
    --userId 'c31krHdnardCOwfA' \
    > test.out 2>&1
eval_tap $? 36 'AdminReadUserSessionStorage' test.out

#- 37 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '8Xmfqjj3fvz73Ona' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryPlayerAttributes' test.out

#- 38 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Yw7mqLGdvBOnMPb9' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetPlayerAttributes' test.out

#- 39 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"b1TECHFRBk0ZOdpB": {}, "PYIbfgWtfxq0VdMd": {}, "hgjpdWZt2u20tEha": {}}, "autoJoin": false, "backfillTicketID": "BWjgZ64jLVTgx5X6", "clientVersion": "WzZlqkelUr4sT6w8", "configurationName": "DV15aZM3f2r1jUVi", "deployment": "74dlAi5RJq0IQrxr", "dsSource": "V0wRPgNta1YABlwe", "fallbackClaimKeys": ["DuRDCrPDda4DTUaE", "cBcnzfswt4MVkpoi", "V7pFxWpik2uveMQx"], "inactiveTimeout": 82, "inviteTimeout": 44, "joinability": "kYz8jwH1BRaZYZHo", "matchPool": "MxvhJm7A0wIdyQuk", "maxPlayers": 99, "minPlayers": 9, "preferredClaimKeys": ["8iedlN60lxAwUoza", "7VBEhPKOh34EFDn8", "ujBXx5olbN8bk5Ei"], "requestedRegions": ["UvCqPzBYRXZWp1iN", "0LELcIKQAwvVtvOa", "34b0ESoLSJwFNC4y"], "serverName": "rlpqpmhxq2dvitpL", "teams": [{"UserIDs": ["p5Ya1ud81gO3p5Ub", "topzZGOPBiKQnco5", "WSKa2h2Iwnj7ZI0x"], "parties": [{"partyID": "3tUYarBJzfSTalVq", "userIDs": ["mTGlNEm4xCherLWN", "oCGtPfV0EcBxYHZm", "bX9nxX6pa363S8LE"]}, {"partyID": "tZpBmdnHhq1lpilw", "userIDs": ["7Tqk3lP9Q26R14BB", "oPD4SGY1tjJmyyQm", "b38EGahPnqH0YCwN"]}, {"partyID": "UeG8MU5hY3GZp4Np", "userIDs": ["UM0saeaWHYCcjYNi", "vSzO0Hh6QmylEbrK", "u9qFLe3PNTkpTeUM"]}]}, {"UserIDs": ["TsSsMEmlEZn07aCB", "bGyqJWKgGuPKL8Kb", "eUV7k3YEXOHRgIdo"], "parties": [{"partyID": "2U3bomzWORntB3Mu", "userIDs": ["KbhXNcldFmLrhp1c", "XPkk8wRnEVZVfl9d", "n1W8q8NdAEOUHghS"]}, {"partyID": "PTmKfGc9CE3h3MRL", "userIDs": ["zAy0bcmzVJis97l7", "Gc4rE9EExB1yRNGP", "dJySG5eBaPK4YPGO"]}, {"partyID": "qeEwokxbcaUUxg33", "userIDs": ["aUYD5Ikt8EFs7KJ7", "gTkLrVs6ejG0zaCa", "F4m7g4pfYJxAi6UO"]}]}, {"UserIDs": ["1aV6TmjitEU9GcKJ", "FzJ6lQwhX6XPOom3", "kSRTLLaPykoOVS19"], "parties": [{"partyID": "mfQhmYNuMOERR72E", "userIDs": ["sXkgJDyMqFX0Zups", "l3HFK2lKTTITIPay", "tFEff3sJWbrQI8OT"]}, {"partyID": "HIPgJhTIpjSqCT07", "userIDs": ["Gauvh47VLlheNCnV", "HAPExyF5lludTk1e", "FC4yuwsGNCWf4VHa"]}, {"partyID": "ypTcp4O41bcRwHLb", "userIDs": ["ODyYA2CC5kLff0ZR", "u7iH3bqmdODT5QHv", "XpBD8B3VIvs2Poun"]}]}], "textChat": false, "ticketIDs": ["nJIVKWD3AtWJvoQi", "pOK6bl4i8AS0v6GM", "MWX1U6AcZBbRMk4o"], "tieTeamsSessionLifetime": false, "type": "OFyeCz3LUPHPfWgN"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateGameSession' test.out

#- 40 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ZFEXgC6OGFqzdwRb": {}, "tS83xrWqKkRIPEcT": {}, "n1J1aFU8svocjXp1": {}}' \
    > test.out 2>&1
eval_tap $? 40 'PublicQueryGameSessionsByAttributes' test.out

#- 41 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yyMW7joKObcPVlPu"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicSessionJoinCode' test.out

#- 42 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'hyDniCRuvIlbs1vc' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSessionByPodName' test.out

#- 43 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zaWJpGSyh8aaD3Qn' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSession' test.out

#- 44 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UY2dCP7pJB7EPh61' \
    --body '{"attributes": {"DtUvjJfkdugBVEcb": {}, "Q57S3QgPFfX9EgrX": {}, "nnu3VFBg3c2oljvz": {}}, "backfillTicketID": "pKascschBFfAzvVY", "clientVersion": "OQYKWv7NmOvz4f0s", "deployment": "LagNipLp0cmPnTpn", "fallbackClaimKeys": ["oOsUeskNoikXty7z", "UVZdcAdgwe3Fo9RJ", "A2VJHcyi9wcIYeXT"], "inactiveTimeout": 4, "inviteTimeout": 82, "joinability": "4cPmzplY1egd0xkg", "matchPool": "RDhFxInymNHuGrAE", "maxPlayers": 33, "minPlayers": 55, "preferredClaimKeys": ["QvUIpgK7pvy4QBaF", "FDXzbtB6F5MnDZVA", "fcZFiw8yijnnFxOV"], "requestedRegions": ["i3ky8GFc4sWiWbdX", "ZCmU2qAKec4OsvSG", "N8TfxFOadlGeHrEA"], "teams": [{"UserIDs": ["KaUrRK1PPqFUsuOb", "4pC4Rur3cOTusgnJ", "120yYnNsX4xcxPza"], "parties": [{"partyID": "aY7OHcZEVXuKSTOR", "userIDs": ["aCezU22yBnRCeVm0", "9BroWTmaSuORT8fg", "zKYVQIW5OJYSwEQM"]}, {"partyID": "KmzEboy2x2QEim16", "userIDs": ["Ct80b860zuAMlL6z", "3oqkeo3iDqJnBVSU", "FnU5EoeYgsRjmWml"]}, {"partyID": "kNckp3YORYJIPGji", "userIDs": ["1ZAe6wk9VkfegXv3", "wOAACgycmLXgmdZz", "jYIoTddgrHli1u2f"]}]}, {"UserIDs": ["dZBnMDm3vzfMJZg5", "oJdsfp587R3GcvQb", "MfH6WOIAXBRZzJ7T"], "parties": [{"partyID": "bhxSscPQTbkL0MJJ", "userIDs": ["H9cmb0GZMpxnbw4I", "BO3gUTKDBrosXkGH", "KLRyrofwSKmmLEXt"]}, {"partyID": "AtQYbkWc1CWR5T7W", "userIDs": ["gWkIfDIX37PLc0jf", "wddDoQsQBgweyDMw", "FHJSPsMFQllx50Iq"]}, {"partyID": "a1eIeVqWIdJaFWV0", "userIDs": ["9v1Z5B2SNAuOzfmn", "5yCKLIniAmZY02WA", "Ux8VAoimLXdtIOu2"]}]}, {"UserIDs": ["j1DgW3bTXYEeVsXS", "sYgmzycZnteEecpr", "GorCN8UoxORd0LRs"], "parties": [{"partyID": "zwy1NCuT9fXiIN88", "userIDs": ["IBGIMm5uiiwFZy5v", "XcWnXNCiP8JcumV5", "Yh8r5y689fcG5okH"]}, {"partyID": "Bq1d6oKzVoHDhvwh", "userIDs": ["3TnNXH5mp7ncjZfL", "Tq1yXAQNFs3O3l77", "r8rjHQpRsMWdCUpR"]}, {"partyID": "ahXJhXLItP4hMF3t", "userIDs": ["goBEWzRz5Wjc0Jpl", "TVYOyyrwe0iuv7HC", "mqmbBatAd578Lqbr"]}]}], "ticketIDs": ["e71RFe1BctLtw1Ye", "m7038dmAK79oAFMd", "tKpzTXrRip7Mth9U"], "tieTeamsSessionLifetime": false, "type": "zXJeRSkRcq664kRP", "version": 34}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateGameSession' test.out

#- 45 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TtnpdcZVYeW5roQH' \
    > test.out 2>&1
eval_tap $? 45 'DeleteGameSession' test.out

#- 46 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QFIFSgQKsRzxgBJJ' \
    --body '{"attributes": {"NS1zdhIrGxGH2kUD": {}, "uGuYj2PdW8gVcmfN": {}, "deciHX7aMOhEhn8a": {}}, "backfillTicketID": "gOgpnmXNkXg7hgxY", "clientVersion": "iOmtY3DXtESX60Qp", "deployment": "SnxgtnqgagktQChJ", "fallbackClaimKeys": ["3esG8nUKhkne2Yla", "bZ9M4kF7bMDnk6uI", "5yHQD2WcwrDMAReL"], "inactiveTimeout": 70, "inviteTimeout": 83, "joinability": "yRb6MA1OEYyqLmQY", "matchPool": "fk5cOQQRVUVZCtcT", "maxPlayers": 19, "minPlayers": 75, "preferredClaimKeys": ["sCv9jyv03fOs4wOx", "atF9ZqQf8s4m8lxm", "3vNBjUBloPVaBULo"], "requestedRegions": ["GVMxUslQV74V6onN", "7Gfs7KfQuUZE1cfB", "1x0Y6l9InQeqme7x"], "teams": [{"UserIDs": ["36IzvqK5sSQUuJqF", "PdCvs52nZ9TGdolI", "ouWeOP6G3oAg0D8L"], "parties": [{"partyID": "2V7G44ggnpkCbvbc", "userIDs": ["ZCgOdOWYiX2Lwp60", "cb2WCZ8zIgr1Ez8V", "dx7uzLE8h0Nxu5mr"]}, {"partyID": "dmPHNYjs2Tou0reh", "userIDs": ["SytzLxqLXrJkkSnS", "atD64bEn8FylQ4j7", "VR0E1foNWkEm6kct"]}, {"partyID": "z2GK09UzXOFKwb7x", "userIDs": ["WAMZTdIJMVFRANuI", "AUv4vZkJpbvKqwQf", "G9uw2SnEtKnsizqU"]}]}, {"UserIDs": ["9zgZNY5I3ADdhDwl", "wrDzMwriOUwylLCz", "oeQ4BIgq4e9ZUFKx"], "parties": [{"partyID": "g8mqEzGwICUOcAnb", "userIDs": ["F878xGaC60N1VXJ3", "tO7JXDbvanN09ucW", "3I1uoKp05jY7BQKE"]}, {"partyID": "h4hws0ZxrDnAFCrB", "userIDs": ["OwI1YIH3y4F5yBoz", "ZRgAVZRtZNYQudWu", "8TX5Ia2cDb7J28GE"]}, {"partyID": "6rYCDUsoaxbGs6Af", "userIDs": ["OZL9weqY2PV9ADEs", "MnkATFxpyaDOtGrY", "hIjfFYzeTgkMNAZy"]}]}, {"UserIDs": ["CRJHobaImnrcqkdw", "QIMUjlkx352Ky41f", "jDJtVJ44o25oVjjd"], "parties": [{"partyID": "lSGjIVBWmgrHvd22", "userIDs": ["T3sPZoDWe4QPfCqT", "UQFsm0wIi4Oz3paG", "nBkSODbeYytgo1e7"]}, {"partyID": "j5jgI4uo7Skrgvnc", "userIDs": ["rDErG6TdcfXFpkVY", "zExDOlBRZTrCCiZ7", "H0rEHDkYBXGKJPBM"]}, {"partyID": "TPEY1laAnSDLdpLE", "userIDs": ["Xb8yHpDh68A36HTZ", "YXLmGNucZu2Toai9", "bfvJPkJPjrpP4Ozg"]}]}], "ticketIDs": ["PVURE7Gbj6tBSLeo", "LMk5PYCdLz0VL6bN", "z3vOr0NnhdricdeB"], "tieTeamsSessionLifetime": true, "type": "qG7weXVz7ABlt2lO", "version": 11}' \
    > test.out 2>&1
eval_tap $? 46 'PatchUpdateGameSession' test.out

#- 47 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'WPC1qoPoHuEL86eP' \
    --body '{"backfillTicketID": "834veosCnQMEBoWM"}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSessionBackfillTicketID' test.out

#- 48 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '61AcmbhMZPXjQcsp' \
    > test.out 2>&1
eval_tap $? 48 'GameSessionGenerateCode' test.out

#- 49 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '52QIAB0660rGwQ6W' \
    > test.out 2>&1
eval_tap $? 49 'PublicRevokeGameSessionCode' test.out

#- 50 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Bq9nH9vftXbU00yA' \
    --body '{"platformID": "xX5qXtHY8gNPOwTJ", "userID": "OpQn4ZCtvuDpBWZd"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicGameSessionInvite' test.out

#- 51 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'DJctXtUyOVMa7fvT' \
    > test.out 2>&1
eval_tap $? 51 'JoinGameSession' test.out

#- 52 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'atnwwGFcWuERlhZS' \
    --body '{"leaderID": "JtjL2B7KATbqzrNR"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPromoteGameSessionLeader' test.out

#- 53 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'FIZTQ6mDDEtbMZwW' \
    > test.out 2>&1
eval_tap $? 53 'LeaveGameSession' test.out

#- 54 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'xeIHzNhyzzLZyv9K' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionReject' test.out

#- 55 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'sGX0perV3l5K2AbH' \
    > test.out 2>&1
eval_tap $? 55 'GetSessionServerSecret' test.out

#- 56 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5EyIFDSlVsRTL2Rk' \
    --body '{"additionalMembers": [{"partyID": "TuVKTKat9mXbHGfO", "userIDs": ["sjG1jG5033MsiHsK", "WCsgVFRoLcVTiPIm", "ivVOWe7qFJa96whf"]}, {"partyID": "O9jXWdWO50CP17st", "userIDs": ["dXpG06SwJINOWTAR", "IWTIj8bu08mEPr79", "1jS7fZ61hT729uCs"]}, {"partyID": "IBOx8LnabkdO5Ki4", "userIDs": ["wj3yEpIWeXZDlSau", "f7SKxciFSRZCnWrk", "b7iwBJ52Z2Y9LVI7"]}], "proposedTeams": [{"UserIDs": ["ugSSQfikWHREDxOD", "8wVMPFuDyylo7qJk", "7BX9EQkoFwCi6JZn"], "parties": [{"partyID": "ZMwVtAjgYOJjoyxJ", "userIDs": ["nQm1flF33RCrHG4U", "QiVDZwpZizOGJJCw", "J0aCClmY21RU0tHX"]}, {"partyID": "u8rOMNnoJuA4XBSx", "userIDs": ["xnwj49WqTakI4knv", "gcF5Qwhj1Ct0xtlR", "OyA0FvLgNibZX06V"]}, {"partyID": "GT6sRL333iGxqaNz", "userIDs": ["Imkv0WTAFfFxR8HK", "fSnoUVbVxgkbo3TI", "Y1pYqerCehbGuE7P"]}]}, {"UserIDs": ["HDfuqZHQf6LWR2C0", "jfALLU4c6AWJ6oj6", "06fKVLelnoG7JjOL"], "parties": [{"partyID": "pdgsTfedUhJjCzew", "userIDs": ["Y1gd4XWKpDGNdOgk", "oTx9KRUssnsFXd0G", "2hYYQw5UlqgLeS2i"]}, {"partyID": "z2Yc08aDArNgj8Aq", "userIDs": ["tTGzNbE9T1skuU6D", "7z927Bt3sHoLapId", "Uyq7HCDhOQt8Gc9g"]}, {"partyID": "VPgbj6PyUBUVOWmI", "userIDs": ["H4shuIUio69NjNtW", "XQVQHZfJMfXvsqWD", "U6n6IwGtOvlrYqBM"]}]}, {"UserIDs": ["qYXyxzhADa1uE4QK", "aMsKQ3IpyxP7hd9v", "mykQ8ZKiQdKNqgel"], "parties": [{"partyID": "gV9BIygbU0sTeitR", "userIDs": ["gcLYP9dbl0xJkMpl", "ZrGRkxSO2JhvrHnW", "xHpGtxAkKWbMfm9F"]}, {"partyID": "E4aEDjxflgIVPEIy", "userIDs": ["ZLsrD4wmDSXJd0vS", "P3FHuKz67d0svDDf", "H1X4m5Ih1P379bre"]}, {"partyID": "QMMbmQyvMxzgf6BO", "userIDs": ["SpjGzKid0GwF48xH", "fR19iyMHu2h55Ssc", "DexgGmxPcxc6lDUp"]}]}], "version": 83}' \
    > test.out 2>&1
eval_tap $? 56 'AppendTeamGameSession' test.out

#- 57 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "e6ECepHnFbjXOrfL"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyJoinCode' test.out

#- 58 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'vC3ZKLGPhf533VjS' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetParty' test.out

#- 59 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Iwg7CuELgAAxLmW8' \
    --body '{"attributes": {"ZPmznTr3aAaYXxrk": {}, "FBZr12EFGkWJJMGs": {}, "BvqBoh8LDtq1cXjY": {}}, "inactiveTimeout": 22, "inviteTimeout": 25, "joinability": "ytES3IojYpIFeFbC", "maxPlayers": 59, "minPlayers": 63, "type": "b34lLOxlsdo36OWA", "version": 93}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateParty' test.out

#- 60 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 's68TCqMdqecGYhKB' \
    --body '{"attributes": {"54tPSC2ui9cicGHL": {}, "LkC6ZPCnycr4s27X": {}, "0MqHJTOnv1wDeJpO": {}}, "inactiveTimeout": 58, "inviteTimeout": 54, "joinability": "PTnXeOP59AL1qVtX", "maxPlayers": 81, "minPlayers": 88, "type": "h2feEPqqqdvdZUQc", "version": 33}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPatchUpdateParty' test.out

#- 61 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'VaJdFFMPGm8ul8WU' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratePartyCode' test.out

#- 62 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'USPJCFIcurz9RJJY' \
    > test.out 2>&1
eval_tap $? 62 'PublicRevokePartyCode' test.out

#- 63 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'xB84jCjAN7aaD7yO' \
    --body '{"platformID": "WWCRrVDX9PrmjD3g", "userID": "gL6EqIbbP4ooxEol"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyInvite' test.out

#- 64 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'WT257u9kLrJ8T7AB' \
    --body '{"leaderID": "PlW0QWXYmWQdNcMV"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPromotePartyLeader' test.out

#- 65 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'PjG3QToo7n8elIY4' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyJoin' test.out

#- 66 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'Ac0T0oveJc3XLXaQ' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyLeave' test.out

#- 67 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'EqCvvWLQS9tReIZD' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyReject' test.out

#- 68 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '6jH5KDiTwVjSY3qT' \
    --userId 'Bk9GnlVTWfclBgYF' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyKick' test.out

#- 69 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"R2trpBtKPDy2LD3r": {}, "zRtdgCi27dkMZOJV": {}, "PJxUWprV0X6NvaG9": {}}, "configurationName": "nGwxWNW0QgzpwYaL", "inactiveTimeout": 81, "inviteTimeout": 71, "joinability": "x1e19WC1pv9nCc9T", "maxPlayers": 99, "members": [{"ID": "GX6UWSkW1yvbWuhV", "PlatformID": "OxyWiaw1RmRqyNBu", "PlatformUserID": "hlqcrd6GawfNOzFj"}, {"ID": "BjZnwnn2JqNzqso9", "PlatformID": "H44SPTdndZMDPdQv", "PlatformUserID": "9TeUI1qApyUCw2mk"}, {"ID": "YoRm9s3RWHIckUT2", "PlatformID": "z2V3K9ElgpyyJ1Cn", "PlatformUserID": "fYthcRQqeNvHuagN"}], "minPlayers": 36, "textChat": false, "type": "m0vwopxmNx1p5jdf"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateParty' test.out

#- 70 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetRecentPlayer' test.out

#- 71 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '1VOyOqokOrSwyWj9' \
    --body '{"robNC2RPvfeP6cVi": {}, "NqEnmkKlCHm5WTvI": {}, "2jBeN5bhFeDZJxZi": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorageLeader' test.out

#- 72 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'C7ULA90ld5MIQwCU' \
    --userId 'Eer6WARdBenUYVHe' \
    --body '{"XMveLWd21jCDXSY2": {}, "ykcPGpxzbh06Aijl": {}, "BkJdrJEjaZPH9vKJ": {}}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateInsertSessionStorage' test.out

#- 73 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["tI5bE6QMin93jTsO", "iWcsXK3iMYzPqvpF", "AjHa41V3jZjmHjbD"]}' \
    > test.out 2>&1
eval_tap $? 73 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 74 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerAttributes' test.out

#- 75 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "cUDGgUIYDgdbNS5M", "data": {"zhox635egIeVcuYf": {}, "zzPnUVEy8a2t9blJ": {}, "RoXEDfbkUxXeyU7G": {}}, "platforms": [{"name": "qE16CQ1wxQOMzJ17", "userID": "Djw5BWoYqJMiUcF4"}, {"name": "aAZeOUYN6b3aWwJG", "userID": "y66gUgskEWlP2PMO"}, {"name": "pDbQsuuqSpiiYNFp", "userID": "jYW7EGHx9LXQpNOD"}], "roles": ["LU8gz8zkwhthyCAw", "QX1y6eCaxaMBDZOP", "Oq4jnDrAhAvvAxvC"]}' \
    > test.out 2>&1
eval_tap $? 75 'PublicStorePlayerAttributes' test.out

#- 76 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerAttributes' test.out

#- 77 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '1KBzQgyCM9GDzV8k' \
    --orderBy '1zxbVVFBI5i3bObw' \
    --status 'UOsSeKaP2bzt617r' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyGameSessions' test.out

#- 78 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '49CSoLsirscuaRao' \
    --orderBy 'eB4e704wBeNfj9Wk' \
    --status 'fJXhx9JMUXPc2DG6' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE