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
echo "1..76"

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
    --body '{"regionRetryMapping": {"VDSAuxG4nYfvN1CI": ["PHBQbqNSR7T5rk29", "TwEIeoSoPFOkbbMv", "wTcDKJt554xpg4XA"], "UVFZNUo9b88tsWfo": ["b5dVhEEcslL9JiiH", "TgR6tgt2RFYRLVks", "z6PhSsihZ8qNj4uX"], "B3KMqHxkh2AuOPxK": ["3Ag5Sfpn0brNNsRQ", "QIHFngFqDTURcIUF", "qCxvHN9j1cfa0n2O"]}, "regionURLMapping": ["srXFc4lvT9vTsnSI", "NefLKfk6kJCsuhl0", "A3GdOop3U6Aq9sOZ"], "testGameMode": "pxQC9WYtZYdLayvA", "testRegionURLMapping": ["ScquMwy5M2bLEchs", "8lDiAZOBCLSVFLJX", "1iZb8oGhNkfgomr2"], "testTargetUserIDs": ["GgRO2tDhpBlJOBzw", "9OgJKR5kgMbLRlmw", "6Cy86uBD8qkYEgAw"]}' \
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
    --body '{"durationDays": 75}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 48}' \
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
    --description '4yCZF0XVJOSV6AUF' \
    --certname 'lGew0mkQAUi7wFsZ' \
    --file 'tmp.dat' \
    --password 'JRTBWfnSeBcogPQu' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 56, "PSNSupportedPlatforms": ["MWuEr33O1rfN3lr7", "n4To5VvajlL8kPK2", "xc68NoPam4R3GXdj"], "SessionTitle": "X7JhbjKgAQVQIo8e", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "XCNo6EageN46Ir7H", "XboxServiceConfigID": "vig8w3AvdRCu5Jih", "XboxSessionTemplateName": "BGwsUk2ipgAXT7WN", "XboxTitleID": "zMItFSpT304tZNhQ", "localizedSessionName": {"F4tdCP8PsB6kIGtc": {}, "URBKM5DgJOobMko3": {}, "Ye5IzjJ3JNYD1ikY": {}}}, "PSNBaseUrl": "mn1AWcNhps2YCx60", "attributes": {"vaLkPa7DeFQyupZj": {}, "CpwRy9XnrpGJAhJc": {}, "BlINEGkbgCf8ycMA": {}}, "autoJoin": true, "clientVersion": "XKALFqskuV8E9YJ8", "deployment": "LRbCPBj9bbtggyqL", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "U5T1yU80HrTzjsp9", "enableSecret": true, "fallbackClaimKeys": ["vETsxqRCfW5QW9SO", "J8YJSTolx3n6ynKl", "kluYC4eOFb8vpAjo"], "immutableStorage": false, "inactiveTimeout": 9, "inviteTimeout": 36, "joinability": "LttoGGJ64rKWngg4", "leaderElectionGracePeriod": 14, "maxActiveSessions": 30, "maxPlayers": 10, "minPlayers": 43, "name": "B2Nr4rB1gzkgfiHa", "persistent": true, "preferredClaimKeys": ["2vr0uIgNu78nCHyN", "aDkYBoUYD7pAfUsk", "EhiprTQtTzLRo8OA"], "requestedRegions": ["AEHtMiRdoyoBMy4F", "RNzAe1xJ92SB1XGW", "v3z34KG2ydhE38Bx"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "tjlKGbt887HbbL69"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --name '1KMjnSO1q5wzTtou' \
    --offset '61' \
    --order 'an4OWYqVfb5Ecjt6' \
    --orderBy 'vuPqSPe3JDy114fd' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'sylPm0Yxaa4EMjcQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'mWDaWlXnVXPQerA6' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 82, "PSNSupportedPlatforms": ["vaw590leJy6m8Sh1", "AEdtZmbaPfhmmlXT", "YrQIILRjqh26VPLC"], "SessionTitle": "LahDGp8oTYTiEBKV", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "CkmSF7zFxAl6yapb", "XboxServiceConfigID": "YpvQJKvvL7cxhHL1", "XboxSessionTemplateName": "8Cbe2ptHSllVzRoq", "XboxTitleID": "hf2eBJ0aG5EjLqnE", "localizedSessionName": {"xdLLkUA91CFSxUjU": {}, "59SXyKZlO0osbOLB": {}, "53NzJ6NWSIXb0csv": {}}}, "PSNBaseUrl": "l1Xo3aHDooBDP4EX", "attributes": {"rPEkowEQIfzza4FF": {}, "d7vArlGZCdp9Pqlh": {}, "pTzEGZs8GoLkSQ2g": {}}, "autoJoin": true, "clientVersion": "dBraXvyrV03ylEvu", "deployment": "s8S1yqEmCCwmswnt", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "0KXIS4FKYsr3YeVe", "enableSecret": false, "fallbackClaimKeys": ["zGYLTT2qWe2eEjTi", "xJqIFpcx0nKBJoQc", "Y2MDZQ6z12hDOlV4"], "immutableStorage": false, "inactiveTimeout": 41, "inviteTimeout": 21, "joinability": "oPQzrxbdf2QkBm8F", "leaderElectionGracePeriod": 47, "maxActiveSessions": 60, "maxPlayers": 2, "minPlayers": 91, "name": "LAqCkREIUpKe84qF", "persistent": true, "preferredClaimKeys": ["HiqIAaHJh1mm2oXk", "PCCVJ9KAbFaOcBvg", "kw35XYJJOsCaSwij"], "requestedRegions": ["srhCy4mlOezjeMoN", "rcZSfT59ejK39HcQ", "f5QUz0JQdURf88et"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "aIoy5AFkuErbfOQr"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '1bw4imzeyG9XeswZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'bu2gZvuzYUKPmdGN' \
    --namespace $AB_NAMESPACE \
    --userId 'iAhB6J3eguPKpD5k' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'T9jcGX5eBBuO4b2x' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "HcXcnzWTs0VKkOgT"}' \
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
    --configurationName 'XESbmNyxUWlhCEuZ' \
    --dsPodName 'zPSlRyI6ddQ1EgRi' \
    --fromTime 'WxGRyTx7evHZgi7F' \
    --gameMode '3KIXZ7oxyOrnTEJb' \
    --isPersistent 'bHcFs806Gkcj9IFP' \
    --isSoftDeleted '1iayWLK4L7nvYmXE' \
    --joinability 'vzDqh3ChghMo3Xdm' \
    --limit '56' \
    --matchPool '36MVUsY7NYCZa0Es' \
    --memberID '9QeDetw9UB0IKwtW' \
    --offset '6' \
    --order 'IU2GSU5WzwjPSd00' \
    --orderBy 'ZBthN0YpKm0e7X4w' \
    --sessionID 'oUv9yWdipub6XQCj' \
    --status '9eN8Sg1iiC8US9Op' \
    --statusV2 'rgACqyM81bvrlt4u' \
    --toTime 'QJVmDXRoqmzCR9mJ' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"VfWRhSMaylm0fDrB": {}, "NgBvArVZIhW09nmf": {}, "13Vvul1Bgo3oku0Q": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["LDZ0FoJ8JyJvxgYg", "XipZvpyYRoW2WZlH", "IIrjeP4f2IpSFPae"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'Y7fvy7o46MNBRfrs' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'JgxsmOs3GgcwXRzS' \
    --namespace $AB_NAMESPACE \
    --sessionId 'sroLsHfmdH7McgTJ' \
    --statusType 'NJZW0miT7wLaX66I' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'dBaX8l58wOT2nVzR' \
    --key 'TQVqBMTR7ULYbqqB' \
    --leaderID 'aUhCtvMTgj2ImTXQ' \
    --limit '39' \
    --memberID 'BZaLMB3iXQ0shfZ6' \
    --memberStatus 'dDfSELV8c7sIXqn5' \
    --offset '63' \
    --order 'oCqVBPaKkf9vTIDJ' \
    --orderBy 'X3FEfoEiwx8O14t0' \
    --partyID 'CGQNvl0NAY2ymhN4' \
    --value 'rrXKWLtRiU2PT3Ad' \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "OfwWv9sOYW8ifzwC", "clientSecret": "CN4AvMPtGPTZKrOE", "scope": "oWJLOhQL8tUIBxhN"}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'sgPbFyG0qaccU5Ya' \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'pBs70wK3vo8A3nM0' \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'QIGZnD8yP9ROKtzz' \
    --userId 'bFCoVkD7YloNMo3o' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'aThCUnxQWiP0t9mI' \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'Y3Z14X4xmCuaPxMq' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"OruNkAptfPY9xxwi": {}, "ZZT6RE5YNWcRNZZi": {}, "gaC2rMmEur7N6joW": {}}, "autoJoin": false, "backfillTicketID": "xuUu9d9bXeIeTNoU", "clientVersion": "Qpbx4CuBCV7PdFjY", "configurationName": "SFD2y23miyIBQfI7", "deployment": "HQemSDEoomw7LsGn", "dsSource": "1YnEDD6Xjfjo3Ito", "fallbackClaimKeys": ["px9H95tptRJe8eIP", "F3w2xuNMgjJeS8a6", "8hYrDWwzKZqaH8J3"], "inactiveTimeout": 56, "inviteTimeout": 36, "joinability": "ObAh9zl7LN8CULXE", "matchPool": "7ZDxcW8CyXLqvuCc", "maxPlayers": 52, "minPlayers": 84, "preferredClaimKeys": ["VhzseNRYm1VvA4xf", "t1rxKAAdZO120yNR", "jusdllykNYmoizof"], "requestedRegions": ["cz7651pzD1q4osiu", "uzakhqgtPPyGaBVw", "MCClZfOI2dJy8jwK"], "serverName": "55uOP705yv6e2Ckr", "teams": [{"UserIDs": ["kCFCf5onY8PrdeXN", "bZzd68vXBS1CC4qA", "b3AF378p1gE7MPbp"], "parties": [{"partyID": "EXdK1gtMRYbQiFto", "userIDs": ["s8d0n9CcxZAygtX0", "rfDMuKyOv9heZNyW", "x7glg7DivQWugSLR"]}, {"partyID": "vmcfW3bOHERbvWXa", "userIDs": ["SrvHpMb3FuifyQkb", "Og0MiftYtRLXUta3", "mnBaH4Am7SkNgMoN"]}, {"partyID": "HU5goNeFFpyjbc02", "userIDs": ["AQVlqtfSNof3vC5Y", "r0H0aZ9GyVmko0NK", "VipING7UrhvPlCya"]}]}, {"UserIDs": ["2IgMdPUyVONhrLAC", "e3euGnYiD0141tig", "FfUgogAoWnwUx0sM"], "parties": [{"partyID": "wk4ZKH3Z4QWwACKe", "userIDs": ["6JKlTJ1wUDxmekvQ", "Y1PJzEcw2uF7a1mj", "95SuCL4WnbDokeZy"]}, {"partyID": "HaJINKp0qULGJSQx", "userIDs": ["rLGd96Ih1mB60SA6", "q2N1rARqVHFz8m4d", "QcVhbLcYL4WNikiq"]}, {"partyID": "S7i3L6hMqXK0l2GT", "userIDs": ["MBR5jJXmM2OVa7Gt", "01cmAEUyGzJmkJAM", "1dt3zZB6gpzX9G4S"]}]}, {"UserIDs": ["zbZKHlxq9U2shXR0", "cepx64WYuliIBhba", "CkJq4v4EDlCyWu9A"], "parties": [{"partyID": "xmEOavfofUmVa9jy", "userIDs": ["wppfItQiQx1JzKKh", "7cVdtV19F1tjoast", "MmRaKS1w55hA9BPX"]}, {"partyID": "QArvVygHLXHJ0zSX", "userIDs": ["RkrQYYSfrhCJyNzT", "U3jArmZFldf0lED9", "hLlvKqbOROTb3XJP"]}, {"partyID": "2gEcRHZX9hlYRHg1", "userIDs": ["vZ9x8vZuCAHVDTvO", "r3fVUhINmzlVqHeW", "xaJYYQiCawSY7eAt"]}]}], "textChat": false, "ticketIDs": ["WwQuNg6cBFRI9kNw", "OsteFmlpnYYtkwoy", "fianp16ZHCXqLxt5"], "tieTeamsSessionLifetime": false, "type": "dcl6ygIv72SAoqR0"}' \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"kQ0vR4MB9HJXOGf4": {}, "7zV4X6vAF8MQprJ7": {}, "8fzzdCoJW9XdA4rD": {}}' \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iZSQSfbKMVm7Uj7z"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'a7abFHqt6bK7QfRV' \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'd0JI9lHaUVjOpRCV' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TBUzYT12n6XkNMDv' \
    --body '{"attributes": {"E2ZMYpq5lS6TGLrY": {}, "NieEAHH4oAP1xIz0": {}, "wgSDNtec2OmQQuKk": {}}, "backfillTicketID": "8tMEy3J49w43kAWM", "clientVersion": "QBahYFdrNwyRePPV", "deployment": "jweZnYbQXGco6mD2", "fallbackClaimKeys": ["cRsogFi7Iu84gx7N", "VC1JCibL46nQ0tf4", "cAdC1WLyHOA1K7cA"], "inactiveTimeout": 51, "inviteTimeout": 73, "joinability": "kom1rGmyUVK257Af", "matchPool": "w8yAvCsbEJcBt55R", "maxPlayers": 10, "minPlayers": 99, "preferredClaimKeys": ["s6ga7m8u5WBtVZQL", "PNuOjGXWxfdZLTql", "QxOC9VIyy5dOypSI"], "requestedRegions": ["nUQB83ujwRutERB8", "GOg8i9GeSa1e9CZL", "vjfgdN7KFBJoD258"], "teams": [{"UserIDs": ["vKDUzB6HEehj4VwS", "cvOggy4vsElxxtGA", "hsEklbn3ZTufZscF"], "parties": [{"partyID": "yMpyUY4n4QFXQlSc", "userIDs": ["ET6DgXC7zC6LUBRt", "T7jK7zmM6x568RSF", "BfMAPyG2UCTlRtyK"]}, {"partyID": "DClMoE9VMiJvg1rh", "userIDs": ["JBQu419BG21MRDXh", "pfBhIMCSUaxVMxYh", "v7JeilwfOLVvsJry"]}, {"partyID": "heJorIO4G6784azT", "userIDs": ["n1HPt9mVcQbE2Gvi", "bizX6nVwVUN14K19", "Hd9FIt29cfJZVg11"]}]}, {"UserIDs": ["KckPfQXgtBpfrZbu", "4hVW0xmiBHyGemcU", "wmdnksq6BuAhlRTj"], "parties": [{"partyID": "bG3INwogf9xNuAL8", "userIDs": ["WaHf68OlJUnjPQK3", "vmi6rBeDGqVNjDEo", "Ug6sqLHheDFWK3Ui"]}, {"partyID": "kQq8Da9XI7oVD43f", "userIDs": ["0GFWOVI77vhrVrGL", "zVj0KRkKmRYYK0EM", "K084wGTmcjbPC1v1"]}, {"partyID": "5kZSjb5wWLHaqVOD", "userIDs": ["fs9v5Hx5GRD3VqCU", "nW7iCzALQuzE5SBv", "xeqMaI8YLQnUOlzV"]}]}, {"UserIDs": ["PADQaUQvvgl7ACDv", "jdjOuMOY87zTTwZs", "pba2b0SVMdT9y1Sd"], "parties": [{"partyID": "uIyKt2vDifX8wBE7", "userIDs": ["CJA272VxQE7a7mBg", "R0ojzw2BllCf0YKX", "SEg2YB4Oww4sW7Az"]}, {"partyID": "gZVu7FZNQUbKvYML", "userIDs": ["vVz1e5YN0tOF7LGj", "KJ2oTfbyQjBGmhn0", "sTpJUDboY91dl3t3"]}, {"partyID": "4sRd0zf02ISztwFT", "userIDs": ["TCCmfY4828V0Tqon", "kLLpoDdX3vp4v7P8", "GXMAhPV2Kfmem3fL"]}]}], "ticketIDs": ["Nbo9eibu0SljyEF4", "y0vp1PFW6PsCaqcG", "5yueqpAapmZEdG3T"], "tieTeamsSessionLifetime": true, "type": "PdFngolK42O06eAu", "version": 66}' \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Bwhqd2hDbyHwDnbT' \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'mAkSQRD2PFbkAVmL' \
    --body '{"attributes": {"G3TH8zgOz5QSLrk0": {}, "UkZa47jw0o15OCSf": {}, "K8fgf3HGMU63mAJp": {}}, "backfillTicketID": "2V3YOeVwun4kXm9O", "clientVersion": "7CftfSoiFsMA5vEe", "deployment": "B4lGbDkuowOMTXQx", "fallbackClaimKeys": ["g7g9adDrcVsTEjsv", "KmnjGgcCHOwBzljm", "uf0Kc5BH4mCEN91H"], "inactiveTimeout": 92, "inviteTimeout": 71, "joinability": "sd5fqOIUHnfPvYE1", "matchPool": "tqtgD0nn8FrWEwEg", "maxPlayers": 77, "minPlayers": 79, "preferredClaimKeys": ["R1GeUbSas5A8xblS", "UOMhtgN3cLf2gIeo", "YBxhz0ruAZvnKL1L"], "requestedRegions": ["zvHA2xgGttp8BU5c", "M9F7gtiETW5qlnZ6", "HY5ldyCBs1j1N1CN"], "teams": [{"UserIDs": ["29mPBRC9mTWRCTjE", "5Hza2kPaijSKlxcU", "91sGXP6mOIm1Ga7n"], "parties": [{"partyID": "e3Knk931x6Gj9PmM", "userIDs": ["Bk6cS7rQo0qzWOrm", "aZ4brdUtPTDtK3LA", "TOSKGUPyewaBp62q"]}, {"partyID": "qd3mPw0J22pJChB9", "userIDs": ["P2AY1XSZnkKBCb1i", "kFVRJeYY6PMjuVJz", "17nhckqYXek43n3M"]}, {"partyID": "Az8s6JZZa76f3RYI", "userIDs": ["9vJhbH0S4pmHWfj1", "NOvhU8xAGl1IyG8m", "575tYPjHit2N2Wry"]}]}, {"UserIDs": ["ChV8bg1VHO5hGu1C", "2llogvkCDfFqeOGX", "59TkeoOJS61PomrQ"], "parties": [{"partyID": "DXTLbhpgCsUsFKO6", "userIDs": ["zz3GulUapmTolaKr", "pSIhkaN7wkR06AK8", "Pt4nvLQdyiAcven6"]}, {"partyID": "5QMvLXCziIBLVYs1", "userIDs": ["YT4smAGNCgJhEsMM", "HMstAPsRYeip6aLa", "Lb1WnMk98NTrXZrZ"]}, {"partyID": "rQyU8LHDaGTrtWlN", "userIDs": ["3cv6L9uuRLiJqubv", "ZCinGA45mbs6v8wa", "kguf9sulcSSAkidc"]}]}, {"UserIDs": ["FYEY0enjJfjaWXNQ", "FoheCPNTLtZ6b0gR", "5BuZwel9BWk69rDt"], "parties": [{"partyID": "U6NjrX0E5TBs05Gl", "userIDs": ["aRPqUGNEmA4hPi1Q", "LwaFt2jFUrDXdaUq", "Yg8uVO1ybvwAfCiO"]}, {"partyID": "toPoEWAYuLrsrYnu", "userIDs": ["e9R1RgThGrBqf2fv", "jVsoSGW9MDIs8gpY", "hygTZ4JaJtpqFNPi"]}, {"partyID": "X8qru66Gv4w51zc3", "userIDs": ["vL31c7arj1bMVaV3", "Zz5uxPaNCU1LiBwq", "yOPbTzkguWdYkdhs"]}]}], "ticketIDs": ["R9a5zyOPqmPwTHQb", "TWMt0wulJ012wSXt", "cxfBsPNZrQkNKwBj"], "tieTeamsSessionLifetime": true, "type": "77GE6TgkYaFbimEp", "version": 18}' \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'e7P0FyRjCvJrcjiR' \
    --body '{"backfillTicketID": "4pE2Pxx00hKwpq3Q"}' \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'bKbzVD8TTUzrFl5X' \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z1UkST0vloCKjzYr' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'hCGpuRSEJxjXHSdS' \
    --body '{"platformID": "HF2hHDKZi0WEhtM7", "userID": "KiPvFFLW2LYukH48"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'GF64bGcmH9Gv9wpy' \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'YaMKmuIT468kYQMI' \
    --body '{"leaderID": "VC5mVIgA47pixM5A"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YOPGFZfZvMw6JcXu' \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'kv304kBp4FR2diX9' \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '8ZmTW3Cx2lAYds1t' \
    > test.out 2>&1
eval_tap $? 53 'GetSessionServerSecret' test.out

#- 54 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'aKmk2zPVgpY2zJsR' \
    --body '{"additionalMembers": [{"partyID": "e92joOHotadMqDZN", "userIDs": ["iTQSgOt9rklmc1ZW", "gke7p5tPcEowfyO9", "hHWlK0tzaWyY7xFt"]}, {"partyID": "7MoQexHmpR6dRY6V", "userIDs": ["7HRWI22zgCCLN0t2", "cBLtFc5cIRpc85Zg", "TPppXIpQcqIuBWjH"]}, {"partyID": "OIjFdbUCldwjhuuS", "userIDs": ["6l18BhGUkhxylPUp", "wDQ622Y5SiTWd4of", "vEAYFEBVECDX4QmV"]}], "proposedTeams": [{"UserIDs": ["t7go10kQafdCxakd", "TtpWe2BG8ERzxZfc", "YvCjQrHpuEnWuPTB"], "parties": [{"partyID": "kiFMgvxHVCC15GUv", "userIDs": ["eoAWj9Jd0KTOJJkL", "WkjBYh6zBou9DO7f", "0M8y7khFCnJ482Kw"]}, {"partyID": "fKeMs1keIRf5MbIy", "userIDs": ["0pH73TDZhGMNAMuq", "pgCNz3988tX82pAl", "N1U2Umuo5iYrNCPo"]}, {"partyID": "tutkp3qIfXmoQ5UK", "userIDs": ["UpbrIYINssIpjvyc", "JICWESlwM2oS6NlO", "7JizvuiDMrC0Vi3b"]}]}, {"UserIDs": ["6Hyq8cixHCHWCHxF", "QjuHV3YjxP6iSZwF", "4b4oeXVTOma48x2u"], "parties": [{"partyID": "sgYAZyIINak8Kyuy", "userIDs": ["IUypQeZazMR22rxY", "Nob9HIMzYPMl5hG7", "qtPPjIeuK9JdzOTX"]}, {"partyID": "fMw2Agwge1M3r50S", "userIDs": ["v1f7oQA8d3QsS32r", "PdkvQTPyLMWOOKTE", "FPpKVURiTM2F8pCE"]}, {"partyID": "DDOTy3VVqPHTRHK6", "userIDs": ["DykAJQ4f8pz1VlMz", "TGvUShytKRbL9Ftr", "nV6skSiDiYtOL0ez"]}]}, {"UserIDs": ["HXTdfoiqDGPn1rXB", "MowMpyhXCnI3w1Bv", "NfdaxQP2NWTdH8Yc"], "parties": [{"partyID": "zRtdS5THZxWTFfqN", "userIDs": ["jAcG0XFWgqkVLEmT", "c1SHCh2WLniFByvZ", "3X1uTqt5YWjaT0Ru"]}, {"partyID": "n3p6Qcr1SdHk61yt", "userIDs": ["IBu2v0G5EteU8w0j", "dTXttiSMhHySEGBg", "UecIRfCGvi7zvXCt"]}, {"partyID": "NLi5lu30QwEU8a0u", "userIDs": ["VnoM68XmYrdfx8JK", "7l999kDz7QgPBCWR", "mJiKft8kQS7WnhWj"]}]}], "version": 51}' \
    > test.out 2>&1
eval_tap $? 54 'AppendTeamGameSession' test.out

#- 55 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "q427C9wrfmV8JGRv"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoinCode' test.out

#- 56 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'ZIJaahg2xEKhgZwu' \
    > test.out 2>&1
eval_tap $? 56 'PublicGetParty' test.out

#- 57 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'jrv5Y9MfonDxl9GD' \
    --body '{"attributes": {"E91uN38Mb6rUOwYw": {}, "7LlOCwuvvmmjfaTL": {}, "LrMvjPl6wfWHOD28": {}}, "inactiveTimeout": 73, "inviteTimeout": 23, "joinability": "D1SfjkFlbjetDfC3", "maxPlayers": 93, "minPlayers": 12, "type": "iGLy2x2ku01Jw6di", "version": 68}' \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateParty' test.out

#- 58 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'IuimuyjcHCtCZXfL' \
    --body '{"attributes": {"LXIOsNnuAxHincFw": {}, "SBhb7ugBMAynwLki": {}, "luMGF9gae459jk5P": {}}, "inactiveTimeout": 53, "inviteTimeout": 76, "joinability": "lACArolmDdy83VGQ", "maxPlayers": 92, "minPlayers": 18, "type": "C4Dx08r1iesEmMrz", "version": 19}' \
    > test.out 2>&1
eval_tap $? 58 'PublicPatchUpdateParty' test.out

#- 59 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'V1tWRAUbRZdf9Pl1' \
    > test.out 2>&1
eval_tap $? 59 'PublicGeneratePartyCode' test.out

#- 60 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'GJHA20zYHIcFa6G5' \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokePartyCode' test.out

#- 61 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'drUSFmPLvnhNAAjE' \
    --body '{"platformID": "Yqd2QTj3MumxnneS", "userID": "egtXs217FvrslzOU"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyInvite' test.out

#- 62 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'gUWPsRrFPn1Iubrp' \
    --body '{"leaderID": "WAhzKMBY2d6nCD4c"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPromotePartyLeader' test.out

#- 63 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'yj0MC9ZbAOoFCNEc' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyJoin' test.out

#- 64 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'IsIk0r5JvQgpLaCO' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyLeave' test.out

#- 65 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'ijFtblbefN8n9kUS' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyReject' test.out

#- 66 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'vicT2TAu2zqT47po' \
    --userId 'GV44rR3eAXciPext' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyKick' test.out

#- 67 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"lgJotXxoF5W0MdnL": {}, "4fuxPfnQWN15Vhln": {}, "TDQ4luNwfKePQKLu": {}}, "configurationName": "IIWZIdHNmNOmXbkk", "inactiveTimeout": 51, "inviteTimeout": 35, "joinability": "pjCyVOGdIblDKaWj", "maxPlayers": 61, "members": [{"ID": "yJcMIATxt0yAyNeo", "PlatformID": "qFa5JSPjLWkx3eZE", "PlatformUserID": "Lu1HRFbffBI0tpx8"}, {"ID": "a9Rxuh7cLJrSZ7Ba", "PlatformID": "PyzBgocuL80ZdtSe", "PlatformUserID": "mlrcrOdf15aC4Ymi"}, {"ID": "litc7yAf3wB6O6CB", "PlatformID": "sGXaJQyr2kWknCqb", "PlatformUserID": "y7k0liVHYRJ1brUB"}], "minPlayers": 58, "textChat": true, "type": "ymyQlUUdW1PejsJR"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicCreateParty' test.out

#- 68 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userId 'yld5Qe8OCcllwOA6' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 68 'PublicGetRecentPlayer' test.out

#- 69 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'On6Dv3mz0bjnJ2la' \
    --body '{"IbG0cPcEilJyR2KG": {}, "qHxWjQ2JmEgSgQdh": {}, "2wo6mW2t8Wy6FT3A": {}}' \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateInsertSessionStorageLeader' test.out

#- 70 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '2PH9gGw4FyqNfFx6' \
    --userId 'Ot2hsKPjJWuqV2rN' \
    --body '{"gWI3ZtS6KpKaEglx": {}, "L3PQQMccSwXoxxwO": {}, "OKyjWwVj3KhHPoaS": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorage' test.out

#- 71 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["z5pzVSBLJzHqJrZU", "PspQ0zDhHLElwZVF", "JAEHbYAXHSG4q0HN"]}' \
    > test.out 2>&1
eval_tap $? 71 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 72 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPlayerAttributes' test.out

#- 73 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "q27pdDPxtc56o9Y0", "data": {"4drLJZIGvmvskjvX": {}, "ZJBeUTJyVYywSvNQ": {}, "OeKHiuOsYTTix56W": {}}, "platforms": [{"name": "IkCOvmMlAtdsWfPS", "userID": "MYcFc4yMu45FjWfI"}, {"name": "oKxUgzJPHo8Nr1Oo", "userID": "kGi0B9rUhl5wyQwO"}, {"name": "f6iqccFHnrCUs9A0", "userID": "fnHyx8xWPMC3lmGK"}], "roles": ["dPjiHXMDZ5O4ejOs", "Dy3aaROm3kbjZzc0", "CQG4TZqD5IAalXHz"]}' \
    > test.out 2>&1
eval_tap $? 73 'PublicStorePlayerAttributes' test.out

#- 74 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerAttributes' test.out

#- 75 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'jtEPFHIntK3FuS9Z' \
    --orderBy 'CJOLAqoBxRsQlh6G' \
    --status 'aKKVePfBAIny3OWB' \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryMyGameSessions' test.out

#- 76 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order '1LVuoMVLkeVmI1BO' \
    --orderBy 'PLx9CIXmtuSQltRC' \
    --status 'RC50H9TS8Z3hoaEf' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE