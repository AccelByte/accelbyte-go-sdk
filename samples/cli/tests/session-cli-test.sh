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
    --body '{"regionRetryMapping": {"nefXEeQRaUlp8v6q": ["bwn5gTTW1b6qGLKv", "kW9OO52VXUGtT9Ye", "LeoHd57yaGl1GRoh"], "Eb1BHqgT3m0qiyej": ["7f8eLgMjJ59ca2SO", "8dV2j8HISN05EZuj", "mBfPHcXEAj3MBhri"], "0X2Qa7A6F12Ff5bY": ["ZKqtgB6QjUuoNjFC", "yhmzV3a5dzVPKHIM", "V4KEq2MlwiVAanpD"]}, "regionURLMapping": ["oivzY0AX3WHL2CKm", "uRT7xiERuMhPMAZl", "i7bBtPhLZE2jRBGb"], "testGameMode": "Ej0DFEgg7MCmqwca", "testRegionURLMapping": ["rlwheUMed3u4gjHG", "0YkmbuzMf1d7aV98", "SNqA0g2IitqBuowU"], "testTargetUserIDs": ["SMykfkdzfWieHaE8", "o3umu2eeXXzbr7Pw", "WIBSZHPFrJ1kijS1"]}' \
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
    --body '{"durationDays": 17}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 28}' \
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
    --description '7VBNVTGB1SO5kL92' \
    --certname 'h1L28gW509mfUd6E' \
    --file 'tmp.dat' \
    --password 'EGzMnEgdkLEV7Yr7' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 22, "PSNSupportedPlatforms": ["fiZ1jQbJrhnOOPD0", "7aIH2iBcUr2uwvrf", "dU1wvoKM24wSyqdd"], "SessionTitle": "wqT9favEzjQCZn35", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "1Wa422PfYyH3mLU1", "XboxServiceConfigID": "iv7urKQqeEATQIYk", "XboxSessionTemplateName": "SYeyrMWZlSghRQEz", "XboxTitleID": "qSiFuWoq23Ox7nnY", "localizedSessionName": {"s7kq4zqWrY08RIbO": {}, "E6hphoZWNKS2kVDp": {}, "PsIK6j13TK6T2sZr": {}}}, "PSNBaseUrl": "ypcvTRzliMRtYiVj", "attributes": {"O4W7XoqQRPhKXre8": {}, "SiVaAOOTTMwaha5U": {}, "2DTyUQrw5wUjhJHT": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "361sh8hUcLbX8FWU", "deployment": "VbAx8DKpUD1ohmFX", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "pED1brt3V9Ch6DFD", "enableSecret": true, "fallbackClaimKeys": ["b2iGfJVe18DIkxwt", "9ON3GpBfrUZLiXab", "ePPcJLrMjklOKVwP"], "immutableStorage": false, "inactiveTimeout": 97, "inviteTimeout": 5, "joinability": "hL3Ant1qzUNZBErM", "leaderElectionGracePeriod": 82, "manualRejoin": true, "maxActiveSessions": 0, "maxPlayers": 50, "minPlayers": 51, "name": "iJho1NNOaHJhEgPr", "persistent": true, "preferredClaimKeys": ["tLYIS3kPCfA27kIj", "27UiI1j2CAftAJlI", "T1M3mlWJ3nFb5GcW"], "requestedRegions": ["CMHVGcWSF7teLDYn", "luzVVlMZz5An2Q4t", "aeYibELgbpDYW3iv"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "4TnZkjTmCzxMkIsm"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --name 'ZoCScjguI1ztxPee' \
    --offset '37' \
    --order 'CyNDSnRAqeEgdICD' \
    --orderBy 'gj7t1WDDAHUNdrsw' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'Eb16i50SuyRe17iN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'whIFs2VyB8DpDXUG' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 4, "PSNSupportedPlatforms": ["DuCYCQDjfwcsh2KV", "9LBpuLalOrd7zTgo", "ZIB3HZl7ABupBSNh"], "SessionTitle": "vMsOiEEZBYG11XVI", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "a56oNcRcdjDwRLwB", "XboxServiceConfigID": "gT5VoH8j5mJwTm1D", "XboxSessionTemplateName": "TspNu2Plm1EAkHJp", "XboxTitleID": "SpMGqsJ0lYPCajxG", "localizedSessionName": {"Zv9s1w2PQk2DckxE": {}, "rYHkMcWXvnsa3Nm9": {}, "tPobFQPjzoTT4yyx": {}}}, "PSNBaseUrl": "XzL1Sp9treYgm6D3", "attributes": {"4n4X9UJYyyj7MzrY": {}, "xzoUM7oG84A9uXsM": {}, "pt3cvKHA0lNWRr0G": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "omgqpCZb8JIAV0mo", "deployment": "nDaqmRRSrocJS51V", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "SRy91Yc2wnx9zQTs", "enableSecret": true, "fallbackClaimKeys": ["eqqQaWxIRSNDYKte", "XuRT9Mhb4Ts7DOmi", "fQv3tRQNKisLqbE4"], "immutableStorage": true, "inactiveTimeout": 78, "inviteTimeout": 62, "joinability": "EdHIr3M59L2ArMs5", "leaderElectionGracePeriod": 4, "manualRejoin": false, "maxActiveSessions": 56, "maxPlayers": 21, "minPlayers": 72, "name": "SiNqbWvlvD0I3eqa", "persistent": true, "preferredClaimKeys": ["Dq0kLZjc2dTUf1ZN", "vVUMyfXR3ImP0dVJ", "7qWE06GJ2hIWXAtV"], "requestedRegions": ["wBz5B5Ax8b9iarDD", "RytCEc5y7mfzI6no", "lxjJN8thv2upsNkk"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "u0dShcO4Ch2ueqfW"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'bLUNAOCUsUq5ahrj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'CsNXCiaX64ELXO2n' \
    --namespace $AB_NAMESPACE \
    --userId '2un40esfFAdrTiUF' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'vTXjbDQwAEcQFfiU' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "8podbzr9oljWgAsX"}' \
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
    --configurationName 'TCjIESTRU2UPzX6F' \
    --dsPodName 'ZLgbOIVo6Vj3E7wk' \
    --fromTime 'XFXk5oKaEvvRHSCt' \
    --gameMode '0FnnfHSgIWQlIu3l' \
    --isPersistent 'IItdkPHAJ8kvMWrE' \
    --isSoftDeleted 'OG77obB3uOfmcXA7' \
    --joinability '3gVfXbaZdJATgqZY' \
    --limit '59' \
    --matchPool 'sgVq2cUP3TfEVOHF' \
    --memberID 'JsHwZyMt6vrH4GIm' \
    --offset '83' \
    --order 'HZXmkU6bfD2pTIbK' \
    --orderBy 'rUXG0t9psR63zW8b' \
    --sessionID 'PH8FCs1A6kBUPJFq' \
    --status 'EKkvqDP2DxPULDcG' \
    --statusV2 'Ot2RU4aVmMfteWjt' \
    --toTime 'sDZr5FNM7WvHwkW0' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"ZrgJLodfo1vO7sdK": {}, "j321iEnJOZzkmgb0": {}, "0Nc8SRJw8ro7y879": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["Bz8FHLdkYOe4k66G", "iCHsqOwe63ylkD3Y", "2H1pSfw6XCA5pIPt"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'Mlm8o7NuVCNlEsAx' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'cxRlLfCLLy00J6W2' \
    --namespace $AB_NAMESPACE \
    --sessionId 'teMlxMal7zN0gywo' \
    --statusType 'RNtC9sYc0G7uTsY2' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '47' \
    --order 'moG4MTvTTvnblEdK' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted '3hxmRw4dxz544ypw' \
    --joinability 'ThGCOnqqVpLuch8u' \
    --key 'YxA75JE3omxdpLga' \
    --leaderID 'BE3R39rwryBPI6JQ' \
    --limit '11' \
    --memberID 'FVyiWfOV2Qu1G5ZD' \
    --memberStatus 'JPxpuYpzTm8ZuN6P' \
    --offset '26' \
    --order 'No3oNc9nNKUH46OA' \
    --orderBy '9HqfuodEUD3M0uo0' \
    --partyID 'CKr5kyd0yfqHGhHh' \
    --value 'kYnm3OsjzrLyigqY' \
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
    --body '{"psn": {"clientId": "FsB3R92COR9ueUPs", "clientSecret": "YeLHYlnWGstAnCTV", "scope": "vaOfnoAgjJEsCfYA"}}' \
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
    --limit '55' \
    --userId 'RgLgVJkOAJDdA472' \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'JDatxiiVaNFp4PHI' \
    > test.out 2>&1
eval_tap $? 34 'AdminReadSessionStorage' test.out

#- 35 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'eOzBUp0GRsjCAzxb' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteUserSessionStorage' test.out

#- 36 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '3HRfsfw9xZPNR3nq' \
    --userId 'skJw3h8hDMSUso2T' \
    > test.out 2>&1
eval_tap $? 36 'AdminReadUserSessionStorage' test.out

#- 37 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'I8fSKSFko4O512V2' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryPlayerAttributes' test.out

#- 38 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'ul6W6widOxEPuLGW' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetPlayerAttributes' test.out

#- 39 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"WvMTBnhZn7A2vICZ": {}, "dUFdbeIP7OCHhKTt": {}, "eo9965WdomL4CHdH": {}}, "autoJoin": true, "backfillTicketID": "hJXgUFp1pny2gimY", "clientVersion": "BlpQ8QX7DOOBPWat", "configurationName": "l2siRFJAO0So0bBv", "deployment": "cNNaWAcpNANUQIAk", "dsSource": "LzHJ70YRlveSekuu", "fallbackClaimKeys": ["BKh28RvdPpjyVbsj", "y2QEvpi6Yf8Fqk3R", "CThdVeQU82dTUKMA"], "inactiveTimeout": 80, "inviteTimeout": 1, "joinability": "8Hv1vup7BPsSpl3F", "matchPool": "FXux7KJHgsQJGIvH", "maxPlayers": 61, "minPlayers": 80, "preferredClaimKeys": ["hIEoLw77JIYcTxX7", "d9xFxfL7boCqc426", "2CsVnndjpug4k97H"], "requestedRegions": ["nPdbXSyZ8sUY6pP1", "JONbL3NAobQnqnyI", "g2WErzamPZ0EbrFJ"], "serverName": "2qDH0pb9j1Gse5UE", "teams": [{"UserIDs": ["83m8wBF5ZzBRWpL7", "1O5MeOwqaZWKzuaY", "lCdDWM1eIaeKA3PE"], "parties": [{"partyID": "9OsmwzwumU7NIo9q", "userIDs": ["pAe61u0VZRwhrHSX", "XH0bTij7svmO8hq4", "dmKZM00e19MncYVx"]}, {"partyID": "SmBOUVL81sV9b77o", "userIDs": ["iyNEn5zico4SJKUP", "WNXLhgvpdMuJ5GjA", "RJb9Tbf0VgE2jqYc"]}, {"partyID": "naggm7symc3ACT6F", "userIDs": ["LOwlAqUf9H868gcB", "MbWIbBPIa8Ia9wGo", "mrHnbKlvn51xqibm"]}]}, {"UserIDs": ["KvAYKLZohhhXN1R4", "mDL9FOZWY6nAREPF", "Id5QQrgI1WkUSXuf"], "parties": [{"partyID": "gkR0ev0hOOBiuAkw", "userIDs": ["ZvRSSmW8pOuRIy6G", "7ThQemklT4CLs6iL", "Vz1Yz2fScWvA9ook"]}, {"partyID": "w1GU4lQ6VsuyaiHS", "userIDs": ["wtssKwZZeixEjHob", "pMIZbglA3uhtVxO4", "Cv4QeQEQGyMvsYKb"]}, {"partyID": "zKzBqTqsMN7KAzdQ", "userIDs": ["cD6fdlcLXGcYfNgi", "vGHeqdUzn3X3CgvN", "Pr27wpewr3g3LFkv"]}]}, {"UserIDs": ["Xvh4MEyjo1DcyrCK", "HGM8d1uImnZ9C512", "GRPwUthGvFFxrgth"], "parties": [{"partyID": "WPw8zZdFQeSIcQvv", "userIDs": ["D2wdAMldyQajq9t5", "hiaCyMtWT6JNAkyC", "8RW4PjqAPnNnhby1"]}, {"partyID": "mdiTGBPUr2UidL4r", "userIDs": ["x2icLJ6TDjlSWGe9", "dinzq1bUWU4APJpr", "KGF5IpSL4rwCFcoe"]}, {"partyID": "jd1bH12fz65VoXFK", "userIDs": ["zL6fB1wRWsJ99Ubk", "7Ov12cSPtABXHoW3", "wPATDHBXBUoavHIc"]}]}], "textChat": false, "ticketIDs": ["8dC4VPiU0ZUwbKJ1", "zq6C6eFYHufurZ8Y", "oGsDyHw5xLmApUk2"], "tieTeamsSessionLifetime": false, "type": "76obmfQNF8Jdtej2"}' \
    > test.out 2>&1
eval_tap $? 39 'CreateGameSession' test.out

#- 40 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"XkqzbQEgYWTBKSsm": {}, "pKgvyj9BEu23Trdw": {}, "GOmjiIYTgI5mMdoM": {}}' \
    > test.out 2>&1
eval_tap $? 40 'PublicQueryGameSessionsByAttributes' test.out

#- 41 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yuMvKzr8nr00qpVC"}' \
    > test.out 2>&1
eval_tap $? 41 'PublicSessionJoinCode' test.out

#- 42 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '5rn0IpNQXdYEeh0l' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSessionByPodName' test.out

#- 43 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'L2kL85pEwElwcMbZ' \
    > test.out 2>&1
eval_tap $? 43 'GetGameSession' test.out

#- 44 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '9jB3BwYMAfvOBto8' \
    --body '{"attributes": {"YYpkd6yS1fpyae9M": {}, "UW2CeVYXbYU9d9cR": {}, "bXBGu1RnIGj4hwrM": {}}, "backfillTicketID": "prfyxuaxK4fgP6zh", "clientVersion": "gXU1kXAIoijFCrrk", "deployment": "qLBlTRAmshbFkKWh", "fallbackClaimKeys": ["JZK4g68IIJVBdXSV", "psKL5Y7s2M2SHfb2", "TtbBFrJRWa1A8PjU"], "inactiveTimeout": 47, "inviteTimeout": 28, "joinability": "sUACwfRYGBUHQEsi", "matchPool": "7fPyQB01JOVDi9Yn", "maxPlayers": 25, "minPlayers": 13, "preferredClaimKeys": ["ehAJEOscRlPMcmsN", "jWdu1XHebF9zsZkx", "uQNIMKlQAeOkQblk"], "requestedRegions": ["pl6ShWx70fJlUtwl", "iCsA3uoPlmj2c9Bg", "VKyXaPBNPM3vKcRp"], "teams": [{"UserIDs": ["cW7K5b5AxUPPujPc", "Mufno7795k8wfqgR", "bQpx0kcz6abJIfiq"], "parties": [{"partyID": "klu0nnHy4fIcez0I", "userIDs": ["9zEPedr10qOrT4vq", "853ZLEliBNytV0LF", "b5wt5cJVRdnv0Mwf"]}, {"partyID": "H9e03mbLzTcOUxzN", "userIDs": ["mlY0a18qmpShHFBY", "F8HMkgPqIVy9aIhX", "5f5wT0zZmF9iuQTe"]}, {"partyID": "HflH8nCcF0PpRtnI", "userIDs": ["JXclESNrkJytRhee", "pJJzldXVmmEskxAI", "kQVCCA8NcqqvvDQy"]}]}, {"UserIDs": ["xMcHKnwQIQqpDXDv", "lYmBfd8W6cZYj4hW", "azprvGUbbgexUciF"], "parties": [{"partyID": "KCLXWICOIr4xpw1i", "userIDs": ["zZyOdQbxIpBJrVXA", "7PKsUViIr7DRgjzF", "29SYkZo51WduQRkY"]}, {"partyID": "YJSEuM8ZWRCgsMvv", "userIDs": ["6OHqLaNpBU0iso8W", "s2aOQ2TkYzrHFUU3", "e0Y2QzDeimbuTwbo"]}, {"partyID": "J4zci6MGKRMEWB6N", "userIDs": ["IKcwPsmWKK9ffgQU", "BlW94zFy4SOkOj1f", "JEUOu3f9j1eg69TR"]}]}, {"UserIDs": ["5WlRNy1xD0XogYEt", "ctzpYXrktE2ryeI3", "mU10ymvGVn2fGwYG"], "parties": [{"partyID": "Zm6GY7RLsqXZzTBU", "userIDs": ["HYslaPdJFiMDIbdu", "nGUV46DmrTVEr26l", "EvHRqvprONns6TLC"]}, {"partyID": "XhxCsk4zcv0h9B5X", "userIDs": ["Rn7T7v5hf8cXDVhZ", "bfmAgGdk2PnfrJ8Z", "3JVtG81e3xv8rvza"]}, {"partyID": "26NNi1L27QoYO2cE", "userIDs": ["EiLKHQmCAeBnDU8I", "xUXwrPptgVxuFJeG", "jF1QIRUbW2z6hNWV"]}]}], "ticketIDs": ["LMNxKeGl3n20keTp", "jkHae796dghtX4lp", "mBd5MdRE2YvsbSVj"], "tieTeamsSessionLifetime": true, "type": "QnMjB3ZiSKRptDP6", "version": 92}' \
    > test.out 2>&1
eval_tap $? 44 'UpdateGameSession' test.out

#- 45 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'S0bzs3ok2VVKUQ9f' \
    > test.out 2>&1
eval_tap $? 45 'DeleteGameSession' test.out

#- 46 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'IxqQUy5rox8JSWel' \
    --body '{"attributes": {"P8FyaxfJYMcjTgIs": {}, "BzVPe3p0AjckZ8m8": {}, "MEyHXCq3niGZrxgG": {}}, "backfillTicketID": "pdZ1dkF9Kqv5LJeS", "clientVersion": "GLvBgWyRbWOY0msA", "deployment": "nJt9yD8xfn7Hk7Ha", "fallbackClaimKeys": ["YLQxaQtJokHX3HqH", "Mv3JZhkoSr8nlB45", "Fzb64mHHmgIzUjZA"], "inactiveTimeout": 65, "inviteTimeout": 42, "joinability": "a48O1BE9hTr2tR2Y", "matchPool": "GTl0MUEbKl9sRvWM", "maxPlayers": 40, "minPlayers": 8, "preferredClaimKeys": ["r3pC8i7CvHS47uoO", "lnkPul5WUzJzZIX0", "PBmiwEsmrrX25oTb"], "requestedRegions": ["PChmunGiD1WN0gVY", "n18ovMDxajC2jBUs", "m89j3SXLY0hWgcyf"], "teams": [{"UserIDs": ["VdgxmB1fISI2FqTm", "803C5009idxkTbew", "q8JkM4SfaJZE0aB6"], "parties": [{"partyID": "00u5NzUIe8voNFPa", "userIDs": ["eWBjN2kZvsaDdBVb", "NWb7B8VbfLUNQuCI", "Hl4aQzO7GsVJjn1p"]}, {"partyID": "hDUmOXvtM7skc7wg", "userIDs": ["ZxWW7QVYT0TkSadn", "HXwhEvNkKP08d0GV", "GfvOMthwL0cn5fEt"]}, {"partyID": "hjFutBxkS4jxnCAn", "userIDs": ["7dPMxF6D81DbhbIV", "b37dsTtQ2QeU4sFK", "SA0jdsYdY6ly6eZU"]}]}, {"UserIDs": ["YDJVEXfqv6sFI7AU", "Q1G6xvzSbGiFZXy3", "xwNrC6cW0cCAVZ3W"], "parties": [{"partyID": "qTHLsAx1zpkuyIJZ", "userIDs": ["hIo35mb3DOxxojLm", "kHJ6UzFXvglfi7Jj", "s6WYguMo8hTnOCuu"]}, {"partyID": "pkp4vw1RqqqEfLAm", "userIDs": ["S8JEfoDgdxEksktu", "IwnQh2jWNivF41G2", "R3PbLNrhvcBJtFZM"]}, {"partyID": "8LWvZBTlYl3AJJ13", "userIDs": ["nFtipagDqS0P7j75", "awnF3oQiTQgSLnpe", "fQRggnuMSYF091oo"]}]}, {"UserIDs": ["akykqYoRXVWALcxd", "Co99xkosQsNuNBHX", "XS4kT8sS889KuNgq"], "parties": [{"partyID": "LitqKiD0bT6Ra10f", "userIDs": ["4a8SydWbRZv4pgou", "K9poH3Lxfvd7P5dI", "PNpyyxn6Z2nJWbll"]}, {"partyID": "15CxQFE7ZS9XS0t5", "userIDs": ["aOg1H6P0t4ASiXRm", "bBGM40NDpCQHiD1y", "mCpqygqxuDSaHQ5F"]}, {"partyID": "4AfetrAqlyGVrDuK", "userIDs": ["b1wy8FZvYytAm9HV", "tffkiRC8eL49EnNb", "xCyxw7gibC3xFGVv"]}]}], "ticketIDs": ["ZrZewMEYeNT4NTsl", "tLn6JUa1SFFu42KX", "tvJUuI0fphVVk8gf"], "tieTeamsSessionLifetime": true, "type": "xHv8YAi3Z0QqFjo2", "version": 5}' \
    > test.out 2>&1
eval_tap $? 46 'PatchUpdateGameSession' test.out

#- 47 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'YPBkwSLfprwRyd4w' \
    --body '{"backfillTicketID": "wXH2R5QvyQxNmdXL"}' \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSessionBackfillTicketID' test.out

#- 48 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '28XvhqRhWH3sqA0m' \
    > test.out 2>&1
eval_tap $? 48 'GameSessionGenerateCode' test.out

#- 49 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'k21u554y5inqFjiZ' \
    > test.out 2>&1
eval_tap $? 49 'PublicRevokeGameSessionCode' test.out

#- 50 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '3DuvvT4kQF64u9Eo' \
    --body '{"platformID": "YO20afKxId7HDl1Q", "userID": "dnUclAjKcQ3lzXxB"}' \
    > test.out 2>&1
eval_tap $? 50 'PublicGameSessionInvite' test.out

#- 51 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qbapL9N8gZ9shEd6' \
    > test.out 2>&1
eval_tap $? 51 'JoinGameSession' test.out

#- 52 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '0c1yQPNJ8iXQvsvh' \
    --body '{"leaderID": "E8uLzPwQ3a1tRMtR"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPromoteGameSessionLeader' test.out

#- 53 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ufF7dRBmtM9CU74z' \
    > test.out 2>&1
eval_tap $? 53 'LeaveGameSession' test.out

#- 54 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'Nux32pZuFpaOhEo5' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionReject' test.out

#- 55 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'Yzy575xzRr6RQux4' \
    > test.out 2>&1
eval_tap $? 55 'GetSessionServerSecret' test.out

#- 56 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'QGPxaCPJMaRCvIYy' \
    --body '{"additionalMembers": [{"partyID": "3ZD5bHGl1B4YA367", "userIDs": ["2zl70fzUbbLVxq8C", "sMOPmCLR8nsXG73l", "JKf2EPv4LZnS89aM"]}, {"partyID": "3LSY3aPmE3ltow0b", "userIDs": ["PlvelrDVT65asdUG", "7CoYmI2h9hlORy6G", "s6BS06tfs6r3C6cA"]}, {"partyID": "P9yc3Rbm8883jwYz", "userIDs": ["AUQKmnnBr08jvJCu", "3xh4mq9lwfs27F6X", "DNN0Mzkhwdrh7520"]}], "proposedTeams": [{"UserIDs": ["49UsLORdRsNccT9t", "QcwKyvJVt4gx4nNm", "QaCJk7KKpNZjUseU"], "parties": [{"partyID": "h77K4E6xy64PDLmM", "userIDs": ["SU4WyQxOtYer4csN", "Zoov18zobBw67CTa", "OPN5i8GTMPoGe5XW"]}, {"partyID": "8IlUzKh0Xpetk5Hz", "userIDs": ["H99CPkjJ3eJJKWf2", "y73fCNUm1uMW3Hab", "BgwWfWHfBJWCVksS"]}, {"partyID": "Gz21V6nK3X0Uxtc6", "userIDs": ["wwruLAv6tNoQF7j3", "6M0NTmVrwAtmEJwr", "ELThgAmzqMffje0X"]}]}, {"UserIDs": ["Q7IgsweKQGZkFB1t", "0erupR8I3Rejo2g8", "3lwiClWZ1bU1mIyI"], "parties": [{"partyID": "uSLpBzanEJ5ptwze", "userIDs": ["8pgV6suhWiX18PgY", "U2pOrJAlBdFu0pbJ", "dJD71PKyaKHe8FWc"]}, {"partyID": "PmiapiethFrsYHgI", "userIDs": ["7fRo8pFijHheRYQI", "gwllf2DGDqRh2UbA", "sBmO6cvYYBczsJID"]}, {"partyID": "dbLFYE0wfLo9IWx0", "userIDs": ["zwNRrISEYfUHshDb", "winWdaU9h1wKw2Og", "bHBw4ytS4kUHc5gk"]}]}, {"UserIDs": ["E6h9Bx41oRfMWam0", "SEoQBw4dR26Bw3kd", "FFEv7AgEvwqW1VoZ"], "parties": [{"partyID": "IB8NrTWED7wF0oNg", "userIDs": ["RG9mvylbsWWHmvVV", "YtupoH0T40B40eXe", "sy7RQ73G7Tq4YN00"]}, {"partyID": "rCvuKEMe6DnO3084", "userIDs": ["6IC7gTrIs1iCuB4P", "bfN87J3svpE8ex7r", "oji8l9GETbdRN2lS"]}, {"partyID": "TMXQfA70DxgeQuyc", "userIDs": ["Rs0AhTr8xFDqvYdZ", "VhRwg0e69VDwAevZ", "JoDJc8VxAnnuHY8B"]}]}], "version": 17}' \
    > test.out 2>&1
eval_tap $? 56 'AppendTeamGameSession' test.out

#- 57 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "oEBvItj9GoHKPt1G"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyJoinCode' test.out

#- 58 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'uCaPsnYd80zOQhZH' \
    > test.out 2>&1
eval_tap $? 58 'PublicGetParty' test.out

#- 59 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Uzaq8OxnlPZYVWlK' \
    --body '{"attributes": {"dCZcrpYthlRr2KVi": {}, "EFCGtQSuimndR2ii": {}, "RuBJztEAd0cdCYVS": {}}, "inactiveTimeout": 81, "inviteTimeout": 77, "joinability": "sTtTVmkQouiRgOfG", "maxPlayers": 99, "minPlayers": 79, "type": "oGSxxF17P0dbPNY3", "version": 72}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateParty' test.out

#- 60 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'KEl0NNrzk07vK8KT' \
    --body '{"attributes": {"RPMpfsbXC6hqOCXe": {}, "iOKCgsLoEUwaC2NP": {}, "LUoYUzUHToXpC4M5": {}}, "inactiveTimeout": 15, "inviteTimeout": 9, "joinability": "RkSiPA1Z4H9lk2Bv", "maxPlayers": 21, "minPlayers": 50, "type": "pK2jWc0lRPeYalXN", "version": 6}' \
    > test.out 2>&1
eval_tap $? 60 'PublicPatchUpdateParty' test.out

#- 61 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'W5XSLUXtBiEBZinS' \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratePartyCode' test.out

#- 62 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '59iXjDqHXa8RLHVE' \
    > test.out 2>&1
eval_tap $? 62 'PublicRevokePartyCode' test.out

#- 63 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'o1Pfo4Hol1yHCTs4' \
    --body '{"platformID": "txHDwH0FHfEZYqQf", "userID": "gyGEHVy3BXQqffIr"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyInvite' test.out

#- 64 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'AYNSJHzBjiXrO1Xl' \
    --body '{"leaderID": "IrFCtK7rbhESMWbX"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPromotePartyLeader' test.out

#- 65 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '8tfC4kfK9173J1qC' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyJoin' test.out

#- 66 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'vqUlheb4iwPiYZBx' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyLeave' test.out

#- 67 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'r2Bake5M5hzginb7' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyReject' test.out

#- 68 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '2etgmG5yLIMD92Yc' \
    --userId 'aoDDq7n3uXII7Awh' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyKick' test.out

#- 69 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"2UMFz0vCSTLroYqL": {}, "NUuMqVQH8tfCtzXz": {}, "knHugJONT5L7XVdU": {}}, "configurationName": "3bMKWTr2g1YKJpru", "inactiveTimeout": 35, "inviteTimeout": 8, "joinability": "2cSyEGD0kSV5hAvP", "maxPlayers": 10, "members": [{"ID": "xA3TVaNOL3RJFZbj", "PlatformID": "Zqpwl0JMlDtLuv4v", "PlatformUserID": "vLRRTL3kSgLWVMDY"}, {"ID": "ZaeWFZLhKWWPdogt", "PlatformID": "SgHvv1uLnDHZShIz", "PlatformUserID": "eDBxWAvZvANZSKZq"}, {"ID": "Sj36egO5qPT2maBU", "PlatformID": "lYnFJwhYRBBt2GJO", "PlatformUserID": "KoypAqAyBlLVhQUI"}], "minPlayers": 4, "textChat": false, "type": "qTQ1DL198DZEkODg"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateParty' test.out

#- 70 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 70 'PublicGetRecentPlayer' test.out

#- 71 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '1AzGWeZdoom8DjdQ' \
    --body '{"1eETlVOb5m6maRx3": {}, "o2ABVYbMTJ2kFTPc": {}, "MF8PY5lAZ45bejr5": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorageLeader' test.out

#- 72 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'KDDR66U9nNuOZvDJ' \
    --userId 'VHC5oQT862TGo9Yh' \
    --body '{"hjZI2GQOZTXIFacR": {}, "gbfxzcdQZh45aKUy": {}, "Fbb1cjgNxh8nZkhy": {}}' \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateInsertSessionStorage' test.out

#- 73 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["blFxsN261uAFkM9D", "Tj0A9fTn8TnYfsF6", "3cF2RIeTdq46g4qy"]}' \
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
    --body '{"crossplayEnabled": false, "currentPlatform": "mJC92mupfLFwS5nT", "data": {"xAX4KYDDueEG5B3t": {}, "jYe6UMba4uX4tTh7": {}, "ILetzwRbO1USKOXw": {}}, "platforms": [{"name": "UNbOnb0tLPw6fgo3", "userID": "yhiSucsLBZWlOljx"}, {"name": "TyKIrR9L43CrE43w", "userID": "1xRmDgOI3eOWxrXc"}, {"name": "1LjgwVlf7GMZuD10", "userID": "nCs87l1qLLhmOpK6"}], "roles": ["5PFO0r0htRKJTYGe", "PdNOJskf2JmwGQGM", "637v4UhaFL76jcM8"], "simultaneousPlatform": "OTy2z7eBwkM4W72J"}' \
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
    --order 'hcAaiFo4Bqic6B3U' \
    --orderBy '45VWEBEmysjq7Nde' \
    --status 'EfkHET7KWNO5rJA9' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyGameSessions' test.out

#- 78 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'y3iDNuoSKkypHIaF' \
    --orderBy 'WB4YBSsqpJU6sfnm' \
    --status '71fHOOCi9g86ZJPk' \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE