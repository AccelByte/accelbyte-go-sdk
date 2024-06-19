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
echo "1..83"

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
    --body '{"regionRetryMapping": {"wL8YvEXdQrIFu9rd": ["7IjO7UGVjP2j5NWp", "cOUZtkfolkGFe0pO", "BXeEPT1RmlIEA2Ka"], "tTEv0f428Iif2zyV": ["Ql05fmwuxTS6fJOC", "UwEyTycYv4zA5FbH", "saRTfWPi0HWR50Cf"], "oN8bkppo34cr448l": ["ZROiT6P7yblI10v5", "9kjx0W2u3gm4FTzt", "IoY6p1yK1CssDjOV"]}, "regionURLMapping": ["5C2NGfQsy3C7nBeg", "Xj5244kpU51UkZIo", "CZQG5plKLAPPwstH"], "testGameMode": "z0J7Scvs3lgL1FPy", "testRegionURLMapping": ["mTEFkVpJy2WVXFQm", "5tsjtD8UMmOi3j9F", "0Fei6Ic0iuNBjv6h"], "testTargetUserIDs": ["D8txsSuPWVtRQ1kD", "D4hgGPzX6lBzOmXC", "vxI5MdbByht7iuLO"]}' \
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
    --body '{"durationDays": 91}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 37}' \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'IrZt9g9YIiriFMWY' \
    --certname 'cfkfzjngFePUTEam' \
    --file 'tmp.dat' \
    --password 'LSKARTQdxgwWnEHO' \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 33, "PSNSupportedPlatforms": ["T3g8bASMbprHXu3g", "pDE9WPbmd6t4HW4J", "bhXM8bI68aZ7376K"], "SessionTitle": "IP8zjFKVyKZFI7FK", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "R1uRHxrw4SVDt1xv", "XboxServiceConfigID": "kezGmfcL6FuAcs7R", "XboxSessionTemplateName": "xJPT9XAPt3YexWP1", "XboxTitleID": "gMxQNn0g2yyoDirN", "localizedSessionName": {"8EOhnGNE480WaktD": {}, "GmFdAL9KlSBS4pCT": {}, "cccw2HASks3TBlC2": {}}}, "PSNBaseUrl": "1B4IsjmzbxK8Pfo7", "attributes": {"HpWkLuClvrq1Q90Q": {}, "YeGVhX4FgFViSrR1": {}, "73QnNjdUA6n4BiWl": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "sRO7djs3tAN9VBZF", "customURLGRPC": "OtY9QheDMWUxcCGQ", "deployment": "RyGR81IvhYba0cEq", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "lfGTIxqek15Jjtfu", "enableSecret": false, "fallbackClaimKeys": ["NMffsdQF1WuRSlbi", "vxXsKPs21pcwXigl", "MehOgWRtJmqFTzQI"], "immutableStorage": false, "inactiveTimeout": 44, "inviteTimeout": 61, "joinability": "kywvFen4RkemFhnB", "leaderElectionGracePeriod": 9, "manualRejoin": true, "maxActiveSessions": 53, "maxPlayers": 27, "minPlayers": 87, "name": "EmbHhMU6c2lGw7lh", "persistent": true, "preferredClaimKeys": ["VUew6YbHYkKBaTBj", "OpsLssHEeHATaCPQ", "FxIDvXsJXHuYWDry"], "requestedRegions": ["7977ZzwmDct3e2Aj", "V88gQZ2wgqRxaaQg", "J8b3xZ4u3W9MRf2B"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "dZ7GOhv88E5U1wTx"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --name 'fPLr9woty4WmQ0BI' \
    --offset '78' \
    --order 'kbpPc62g2pCa5UoN' \
    --orderBy 'DCg3adPUXWyHcGXd' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'fwpGFvF3459dtcLT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '3DlBBCWg3A7cDqRF' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 84, "PSNSupportedPlatforms": ["UHg6RaJazvZdLzxW", "Ae9d6KqKydwjcTqz", "qfxSvu15eLL6ed6C"], "SessionTitle": "EuwdQTdLidZvv2Fr", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "PzngLhvytwoOHOSu", "XboxServiceConfigID": "FR0581dmZoJ6lt56", "XboxSessionTemplateName": "VlAxKtZ2mgTSFYKO", "XboxTitleID": "FXFzvcxHh36JKmLu", "localizedSessionName": {"NcVQgTaQtJAUjS8Q": {}, "fnoZLnLGJtcPI4gg": {}, "y0H05VVxtyf4xel0": {}}}, "PSNBaseUrl": "vHPXGIBjXYvee0NC", "attributes": {"RfAqQ05A0YcVPfAN": {}, "peft6titWFPUgD0D": {}, "aRHUZoEJQhnATQEQ": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "cxc7IuNwMOyz9KJN", "customURLGRPC": "KwEdD5852ynYiUeo", "deployment": "DWq8oxAAx3iiiDG7", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "1oKJovch9LEwVy3E", "enableSecret": false, "fallbackClaimKeys": ["07M8zhS18DMiHYdo", "ITaoPfD1OVzTBSNS", "4zrWSbsMGnVYETct"], "immutableStorage": true, "inactiveTimeout": 62, "inviteTimeout": 12, "joinability": "iKm7KrA2k5Vsjp5F", "leaderElectionGracePeriod": 44, "manualRejoin": true, "maxActiveSessions": 66, "maxPlayers": 11, "minPlayers": 35, "name": "Hu7iNwzlBucUp52r", "persistent": true, "preferredClaimKeys": ["Zc0o05Vo1AUTVkVT", "JlUm3FXpFglGzUgg", "w2pEtS2MtVT1WqAN"], "requestedRegions": ["FvfuAjJqBIql9TRq", "ndbq8TfrBBZ4X56X", "quuhbIjd1mcafoXK"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "0nCac8wUWACnYVlW"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '1Tyj7eGsXLCg44XM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'l5czpJMppEaPBaVl' \
    --namespace $AB_NAMESPACE \
    --userId '8xYLfbpHaZmgvlZy' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'iKBvp7cUzafqb3V0' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "u2sRpC3YSzGzbvgU"}' \
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
    --configurationName '1AGymuSjx16oDfsh' \
    --dsPodName 'H1K3MIQIpOrDUzlk' \
    --fromTime 'a4o7pPLT6b5K3C13' \
    --gameMode 'Z55VMejXtiv7L590' \
    --isPersistent 'beE15OKLiItoKxgs' \
    --isSoftDeleted 'ie9P8OX0k8aiOMme' \
    --joinability 'rDcTD8MbD0TUcQAZ' \
    --limit '30' \
    --matchPool 'lFImkFr2tSYkVQid' \
    --memberID 'Ab2ki4C5SYTZPACc' \
    --offset '93' \
    --order 'EXI2ia7FAaiUHXME' \
    --orderBy 'ESeeOgD9JkC5whjJ' \
    --sessionID '6NLwCz7Rl4yS3BGk' \
    --status 'nMBa8ZVmafJZLGNB' \
    --statusV2 '11AzgAGsEGDcnCYj' \
    --toTime 'dB3DE2JJAW5pTm8M' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"fkO5Yc59GSV5vO8j": {}, "HngOQtf5yvgCIG3w": {}, "FOlzgFAi4R8WGZAE": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["wWB2ne4OCIfiJLGU", "mUZg1USup0jjegxC", "d8IhgYBghshE8MQa"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'l339Iz1Jqs6wkm5Y' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Uorl0YldBoBsyISX' \
    --namespace $AB_NAMESPACE \
    --sessionId 'w4kGdyULZl7pjnYC' \
    --statusType 'qCWVEQgUOUo1vkex' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateGameSessionMember' test.out

#- 30 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '92' \
    --order 'bReXQAAZfYAOImO9' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetListNativeSession' test.out

#- 31 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'KpQjvU3qxd7DxvCt' \
    --joinability 'LnBkzPr3MM8xspPX' \
    --key 'Fl6tvehH2YbZL2TK' \
    --leaderID 'ukZg94h5yLFzpQce' \
    --limit '61' \
    --memberID 'SHGZIcRT9AwEXvJO' \
    --memberStatus '61STqDZGdRC186LU' \
    --offset '44' \
    --order 'JoVRvAwQ5MRSpVS7' \
    --orderBy 'sH6nRken9r0BfLz5' \
    --partyID 'dba6xAlpwyRVkzHC' \
    --value 'LCUt4eStAILR9Qpd' \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryParties' test.out

#- 32 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlatformCredentials' test.out

#- 33 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "qpruchhIlmF3xDp7", "clientSecret": "NqeLHxBRZTAc5g4H", "scope": "rIJ2UdSLQHR85sR9"}}' \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdatePlatformCredentials' test.out

#- 34 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminDeletePlatformCredentials' test.out

#- 35 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --userId 'Lwizs2QM43s56Au7' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetRecentPlayer' test.out

#- 36 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --userId 'EDc7iwXnNhCZU2mv' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentTeamPlayer' test.out

#- 37 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'gpizMTRmg1l9MDhc' \
    > test.out 2>&1
eval_tap $? 37 'AdminReadSessionStorage' test.out

#- 38 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'N8MeT6zLDv5tMBzx' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteUserSessionStorage' test.out

#- 39 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '115GA6PDXeNqadkf' \
    --userId 'Ejw7pzhwlOabv4UT' \
    > test.out 2>&1
eval_tap $? 39 'AdminReadUserSessionStorage' test.out

#- 40 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'xXTav7KXqpKkLmf9' \
    > test.out 2>&1
eval_tap $? 40 'AdminQueryPlayerAttributes' test.out

#- 41 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'orYDcCvge9pJhysB' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetPlayerAttributes' test.out

#- 42 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'BTsv8rDdIIA4VYEk' \
    > test.out 2>&1
eval_tap $? 42 'AdminSyncNativeSession' test.out

#- 43 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"KTX1u22OxnI022yV": {}, "7VHRbLfypgJ6umaM": {}, "XBpDyYCWYjrusNW3": {}}, "autoJoin": false, "backfillTicketID": "dQJQcsdydwOfCVVp", "clientVersion": "sT2Rg0plxagCYaUd", "configurationName": "1qRz5BohGQmywKRi", "customURLGRPC": "WjnSQbAjAJ2U97u1", "deployment": "lFninJUcnceY8mvS", "dsSource": "I5PiTXg82LPgPeQi", "fallbackClaimKeys": ["yDSg9aWXp3kZbPY2", "Dhuof0jBgtvelgqS", "lenvp2id8bJl5vkQ"], "inactiveTimeout": 16, "inviteTimeout": 22, "joinability": "Nrs4PT9Rc93ARwJY", "matchPool": "uU4z6XrmlJSfFEnG", "maxPlayers": 17, "minPlayers": 65, "preferredClaimKeys": ["ivuzixSbogTC5vem", "VTzYI4i2hz3d15AU", "lwvtwUZeuifZ7y1Z"], "requestedRegions": ["a3BJStjH2h7OsPDw", "19bU1DJ6sEfb3PFe", "EL8j9DHsrIIATzRj"], "serverName": "Eu6FLUjdHl4FNg5v", "teams": [{"UserIDs": ["HluOc4Q4EdkLjqtG", "bj9Qgv3b572q4iSP", "YPgZAc1MIuMb0sYJ"], "parties": [{"partyID": "ymdIQ4ZIvXGbimmL", "userIDs": ["nv1GLN4lmdwrQHT4", "imiqScGJXWlXbBq3", "EEL1JaZaLufV9vDj"]}, {"partyID": "lxIysbJjZTrkxPkp", "userIDs": ["HCtABKZ3IM0DN9b1", "idMiSW6BfzCSi42U", "Myq65kWfiGlwxhvN"]}, {"partyID": "V3dYY9kFapg3aEVD", "userIDs": ["jAMaspnBQ1naMmq4", "kZKcc1euD2hu4FLF", "hTIDxqKm8CsYZiih"]}]}, {"UserIDs": ["LkgjjGVs5LXMhnz9", "T81edwnvkWFYWvim", "2c0xbwXtpma6BC4K"], "parties": [{"partyID": "Okz10Y864rSaZjmd", "userIDs": ["8ISa33PHiMwObD1b", "eJPqGPIPvi98nRXN", "nB7BnHopaYjS05Hk"]}, {"partyID": "yuoop8JHFNnf3XoZ", "userIDs": ["EnJVrjPNQANgViEt", "oth8amp9y0w87sRg", "YrRrfKTDZCvzBUln"]}, {"partyID": "FX0LJfFanw5fyrGp", "userIDs": ["dNorQ7sSwIEUGq2H", "F86Ctzjh39lDETma", "Ec5n9XPWjIwjtRWG"]}]}, {"UserIDs": ["pW56mk65JvRZ44uo", "nkGrsEtlx8IPsnGJ", "gFgFhMS8TbtwV70Y"], "parties": [{"partyID": "TL2j6xqQdpcMqgOC", "userIDs": ["F8dqfXjdgZoXTXR8", "FtJBxfskftNvmGBG", "6Oh2WcZwOxpuSbk0"]}, {"partyID": "L3tdD3BH7I2oxsbm", "userIDs": ["hp1kVPZA8IIx1r4Q", "hYS5c3PeQoJEU6o4", "SY9k80LFhYxonTvU"]}, {"partyID": "f3ej8cewJUFldVzB", "userIDs": ["5pXstKMRrD7ll4iO", "cd9Epf8NGFGHupYe", "iXajKi0VCRESjdMV"]}]}], "textChat": false, "ticketIDs": ["6bR6uNt21HbnxhPs", "6atrFiVouad7YGzh", "KFzZoBIZ6L3o0WZt"], "tieTeamsSessionLifetime": false, "type": "nYOBhYX060DcUKDS"}' \
    > test.out 2>&1
eval_tap $? 43 'CreateGameSession' test.out

#- 44 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"blVT4iykAZgkc4Dx": {}, "H4447jvmZbOEzn9H": {}, "dKQTFFU7FL2q4w25": {}}' \
    > test.out 2>&1
eval_tap $? 44 'PublicQueryGameSessionsByAttributes' test.out

#- 45 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ndmCkU87oVuu5DYF"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicSessionJoinCode' test.out

#- 46 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'ZTv6vtyhP3vsnGJG' \
    > test.out 2>&1
eval_tap $? 46 'GetGameSessionByPodName' test.out

#- 47 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'gr92UucBxdx7UbEN' \
    > test.out 2>&1
eval_tap $? 47 'GetGameSession' test.out

#- 48 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'bhLTpjnme6waeJ7S' \
    --body '{"attributes": {"jvwSAUO1sWgefFit": {}, "qs4Uw37HBUjYr8Jj": {}, "xdxfyD8vdISIj2d5": {}}, "backfillTicketID": "hrpDiaf5cRZc3hmM", "clientVersion": "a9EzUb3SYkBqBTsC", "deployment": "h8WMFFaqjfqn0Si7", "fallbackClaimKeys": ["ol796j5qDc7BpgVz", "dWousH79eoLE3xQq", "CODzwOCmPHQy7M9Y"], "inactiveTimeout": 2, "inviteTimeout": 66, "joinability": "0yQLga996t9nppqn", "matchPool": "iOfZo6dHTketUJoK", "maxPlayers": 50, "minPlayers": 43, "preferredClaimKeys": ["LSFWrF7T6vUTdWFi", "Dfhqw82NlK2orPng", "P44TVprvYLr6NFTw"], "requestedRegions": ["gF2quxdCeo6xGGvq", "tSXAZJ1VGZhU11Uz", "ta6JA24Xvw7BfXPB"], "teams": [{"UserIDs": ["qR34GdaK3ZbETsE3", "YUgbncz2bWWXQMtG", "OBDpdTFoKPQ8q2ZE"], "parties": [{"partyID": "964VAgSxDarIKaVI", "userIDs": ["0gm1bBNyOXii6zET", "2avKE0PJdEEydk7q", "jf9c88olwVTAnC7E"]}, {"partyID": "wWc7GJOY8QBi623d", "userIDs": ["DEOs5r6fc7HCE3Rm", "Srpu7CKqiOiSpHog", "osrwRa5eFiokVoNR"]}, {"partyID": "ONmkFzViHgt4GsL4", "userIDs": ["Ont6EaSZwXEAZF1l", "o1Xkqi1ZqCnZS4VB", "l39FU3mx2OuYDsxL"]}]}, {"UserIDs": ["ebauXB8eMfVU8YEU", "zhgTnn6E50N3wz66", "Sx4pqg3t4Uvr0OE4"], "parties": [{"partyID": "bQOHyv3X3QtsihMb", "userIDs": ["yCn5dtEaS4D1vVOR", "hiLlq9D5mLJ4m6Sp", "GtdAFdWRuEKxQ9Fr"]}, {"partyID": "yJM92ytGb72T18C8", "userIDs": ["RxWZDafQozx5T4QD", "TWFUeKy7IMjar39a", "dAuYgEtgsMDKSdfT"]}, {"partyID": "NWaVUyrebdkaHEge", "userIDs": ["CJcswA6qkEf1Iw0d", "43LKtXtaiOkPJbB6", "lXzvxk4N7jU0kec0"]}]}, {"UserIDs": ["R9cNOgMPa2XJlVCm", "DgqsWPDT9TYma6ri", "N6SgI4vYFM865zeh"], "parties": [{"partyID": "uPHzp3JfvQw66SBc", "userIDs": ["viJzwzsKJQVGeaLO", "5MdCYfW5wrpACHwP", "f9NTqAuaWwLDwLq2"]}, {"partyID": "SK4uIyV5ZjcVxFki", "userIDs": ["yHQPAoDr7L1fezZK", "EH24OjpQgA9dVGb1", "c5H8w9mlxVqmzMEG"]}, {"partyID": "I6tacNyjLX0HZO6H", "userIDs": ["yMdKDwgdd2z7XlFu", "PfD4QdBnh89lYGHE", "9ncrFVVmzRLsw96q"]}]}], "ticketIDs": ["Zv8Y0iFhAbT3zBFB", "CLv35tW4fbYAsIlM", "oGTLXG0FZZUyJUuk"], "tieTeamsSessionLifetime": true, "type": "eMZh6geF1nL3i6zW", "version": 56}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSession' test.out

#- 49 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'm1cuYIJwwusNVA1Z' \
    > test.out 2>&1
eval_tap $? 49 'DeleteGameSession' test.out

#- 50 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'SRdfbrZyqJ2uJlVs' \
    --body '{"attributes": {"TkyHxvrGlk1URko4": {}, "enyqgHDRJ0tHZVWY": {}, "STW3jdg2RTkb63BF": {}}, "backfillTicketID": "XEwYBhD8js6WSIYF", "clientVersion": "jdncEoKWnkF9ZQFU", "deployment": "lWKJQ1JUlRbI6FfG", "fallbackClaimKeys": ["DSD8WcbAj2w2l4hZ", "ago690Z90IwjRo6r", "jaXTnUHiwltn72e1"], "inactiveTimeout": 98, "inviteTimeout": 51, "joinability": "FFMI99x9fp91Dox7", "matchPool": "iNPfwDbiO0gCS9w6", "maxPlayers": 60, "minPlayers": 60, "preferredClaimKeys": ["O1ZKpgLoXNDdFNsT", "zbII2A49ha0TsUY2", "ovUJAlXNxyAAwekM"], "requestedRegions": ["Vshw9km2eV5c4eSP", "Gs3OeC3iCDBkwYnK", "J6PP9byizsHT8zlY"], "teams": [{"UserIDs": ["FSa5y4eFtTl0cBQ8", "dwyKt2j4OLNbBbut", "XnWiB78mR7eXKDWR"], "parties": [{"partyID": "Fhxz0Y3G4M9SlO6N", "userIDs": ["FyTu83vG5cu1l0Yb", "IkDoz3cZwurmFDTZ", "V7fDa2gvu64qd71r"]}, {"partyID": "rWbelWReWqdnL8TF", "userIDs": ["o7moATmhs1rV6xkG", "1dtJ57zV47ahC2KO", "5cas99Mz3n1uN5sR"]}, {"partyID": "uI0O7QFI7ZIcM660", "userIDs": ["4beh1ggM4XxOnlKD", "vbjMR7zT8ApH2NpY", "ansHLZGnxKYX1rWA"]}]}, {"UserIDs": ["pNScgmCpCk5JI6qk", "NRMpnc0Md6Bm31N0", "ZnnGDHQ4HFIIjrB2"], "parties": [{"partyID": "5RQlh0e9pqxjCjGl", "userIDs": ["A51bljHh1nWLSTYx", "Zh9rhEqb37xpPNyU", "ojsS6r79zDgx3IM6"]}, {"partyID": "xTljRO9nC9sGBNbN", "userIDs": ["kghiXLPqSaH7T1bM", "vLKfKl2gy4weJPt1", "S4AQKB5iEFcGxL2L"]}, {"partyID": "PccQ636jccLAfwF9", "userIDs": ["WdRN2c5xawdSTma1", "YcrFNTXTRUDLCFwL", "8A6FUIhdltnpeysq"]}]}, {"UserIDs": ["YGTQI8QBCon0q7zO", "a41900pZsIYCTC1p", "8jw9ADEDvku0ApMf"], "parties": [{"partyID": "1L67Cs6H2ghDF1cp", "userIDs": ["xlefrZEIAlkz61hP", "3QN3oMtYDqyVJeWS", "5hvUlarheYddXSAD"]}, {"partyID": "ZvvoowlJYl6RHWsR", "userIDs": ["8XTVoBHcwHfj9hkZ", "S3hVE4uyZZtYNa6u", "XVgc5QChPNeLq4Sb"]}, {"partyID": "uYIChhcfRYNdBb76", "userIDs": ["ut4BIW8qYejXuFJV", "ZCiduugJusAAhrDP", "qK1cCjj1LSgdlsoO"]}]}], "ticketIDs": ["6SWv6mAs5DGPlwGM", "6fnsvDk2G3v37qJV", "KcP0vprXukCTvhV4"], "tieTeamsSessionLifetime": false, "type": "fpMWFK2hpXcL8xcf", "version": 19}' \
    > test.out 2>&1
eval_tap $? 50 'PatchUpdateGameSession' test.out

#- 51 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'aTwaZl41CtUsn7H0' \
    --body '{"backfillTicketID": "7B60PjZ7Pz3rWOr5"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateGameSessionBackfillTicketID' test.out

#- 52 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'GundbPrP0Q1GIfPM' \
    > test.out 2>&1
eval_tap $? 52 'GameSessionGenerateCode' test.out

#- 53 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId '0EuFVEX1KL0DMKoR' \
    > test.out 2>&1
eval_tap $? 53 'PublicRevokeGameSessionCode' test.out

#- 54 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId '5OmBguwGkuHCHhVB' \
    --body '{"platformID": "m3ZwZCr01jMLKjLq", "userID": "h9HD8LJ3ubjOclen"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionInvite' test.out

#- 55 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CYiSlICSim8Gm4CU' \
    > test.out 2>&1
eval_tap $? 55 'JoinGameSession' test.out

#- 56 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'FL5gOjzcYbDEOdU5' \
    --body '{"leaderID": "LtWzNtycmQ5M7g2q"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPromoteGameSessionLeader' test.out

#- 57 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '5nipEGD6YIWG6bKp' \
    > test.out 2>&1
eval_tap $? 57 'LeaveGameSession' test.out

#- 58 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'ByvvICCklnstXPI0' \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionReject' test.out

#- 59 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'XDDRxVX8HSP1DeWB' \
    > test.out 2>&1
eval_tap $? 59 'GetSessionServerSecret' test.out

#- 60 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '2HX5QP38WQdEP02Q' \
    --body '{"additionalMembers": [{"partyID": "uR7Q8oJtApZ5baRv", "userIDs": ["PGYqCrriShQ0xYMu", "X4CahVjcMuvz8tnb", "f6ldRaf7PbP5g3Qd"]}, {"partyID": "Ae4g8hGPzgNH1zPp", "userIDs": ["iha5AKbty9jMP8lZ", "hibV75K2gHiKDZ8v", "XaKmuJT3PRX2znMN"]}, {"partyID": "TyLocA78md4QJ5fn", "userIDs": ["X1pko6QPddrHAtG3", "teSPLuqgglgIrEnr", "g86x8yACRVqMb4kX"]}], "proposedTeams": [{"UserIDs": ["C36IVCEcOzi5e92r", "ahXqWl1ZBRTwJjgq", "ORQsPBlePvLyVEGQ"], "parties": [{"partyID": "a0fgSdWQNwmiU7bP", "userIDs": ["yYs0wvi7MI02GxQT", "JuBh60j9lMsC2E27", "N8adJlJPdGbUHlVs"]}, {"partyID": "NMMumwZwXEqXwYpm", "userIDs": ["FyXYYqT2ADaq9sSB", "w8RXtAeZwwLa3agK", "oRdOA640N6sM4hPM"]}, {"partyID": "kxYifqTbt3xjCVZ7", "userIDs": ["Hf6fSfnjL8VkIjt4", "unut7tKxDTPxvKce", "Wh0NEf76DBZyYLjo"]}]}, {"UserIDs": ["iLPTyviD2HlhvgGG", "BucaiZ5gPUAlj1b3", "AvM9exmUq9VOb8zB"], "parties": [{"partyID": "GLi031GhFcCpWaBq", "userIDs": ["edQTWhuvno4iYJ36", "QhFlDel57HkT5M3u", "rPzd8voulSjeWjAy"]}, {"partyID": "xen8NKJfb1T7J4GO", "userIDs": ["YiwiiIhXAf2DyNsA", "rDO8YpW0slsPmFDq", "L2wsnMG5aHqeTrlP"]}, {"partyID": "bbTj0A9ISTDIvqnr", "userIDs": ["zu52ji7vGTe58TcS", "o2mhl2gZD5yribdH", "kM3RvTPdkISLh1Q6"]}]}, {"UserIDs": ["iW5dlwq5VjAWCkPN", "O0g1AQKwNbR8lMS0", "F5dOBNGXP9sTPbIN"], "parties": [{"partyID": "tC5L6kDDWXpAHTQR", "userIDs": ["zTYcV7d0k0FcH92R", "z5zFeQarA1qiNTXN", "aiyaYNIGxAW6KAjr"]}, {"partyID": "sUy8afI0rHq1WNBW", "userIDs": ["m8nHAnngUJOh5W2H", "XsREcUeWoUeGG6BE", "ftrPEcW3M3j2m3mn"]}, {"partyID": "iwutNPd27MLAWciO", "userIDs": ["siJp0nGS6SneKLIs", "oOXa7tCYfwgh7JQW", "QrjGhZbd50wavZw8"]}]}], "version": 5}' \
    > test.out 2>&1
eval_tap $? 60 'AppendTeamGameSession' test.out

#- 61 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "uUqRGE5LBB9iVYEI"}' \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyJoinCode' test.out

#- 62 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId '7nqAhmxO7G0t3hgk' \
    > test.out 2>&1
eval_tap $? 62 'PublicGetParty' test.out

#- 63 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '3AikZLe3PG9GynBl' \
    --body '{"attributes": {"mwL0TdV3s0v5ncBh": {}, "iFy6LBtzTQfeMnhu": {}, "NAoldMhVx6xw2KL5": {}}, "inactiveTimeout": 82, "inviteTimeout": 63, "joinability": "2ujfNYdbgC0O4hlH", "maxPlayers": 13, "minPlayers": 30, "type": "wJxNFw8yNP8B5yiV", "version": 9}' \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateParty' test.out

#- 64 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'WI3ajusfmlp7S2R7' \
    --body '{"attributes": {"Tf4Y2faySGZtIs5L": {}, "ue5G6g0mEjBdOrWD": {}, "BAPsc7Q1t7jkM5IQ": {}}, "inactiveTimeout": 12, "inviteTimeout": 37, "joinability": "yxhNciXGCYdDRVpa", "maxPlayers": 17, "minPlayers": 8, "type": "XDEHlQ2I9rsllfNk", "version": 11}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPatchUpdateParty' test.out

#- 65 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'bWfqQCkNqfLZBBvd' \
    > test.out 2>&1
eval_tap $? 65 'PublicGeneratePartyCode' test.out

#- 66 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'MwwrZkxY1RH9evmH' \
    > test.out 2>&1
eval_tap $? 66 'PublicRevokePartyCode' test.out

#- 67 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'Rjb6LNZNF7H977LH' \
    --body '{"platformID": "JhvuOwVrMXX3k3wD", "userID": "RMqG56LWO1ddsno3"}' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyInvite' test.out

#- 68 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'prBzFLslDsrl86VP' \
    --body '{"leaderID": "fTahehMQodKFdTTo"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPromotePartyLeader' test.out

#- 69 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'nBRPS0flI9WWKnTg' \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoin' test.out

#- 70 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'cuelGOOxgtPxkIGv' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyLeave' test.out

#- 71 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'T0GwXqmg8dUdg8Xi' \
    > test.out 2>&1
eval_tap $? 71 'PublicPartyReject' test.out

#- 72 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'dV7II4p1M0YMbM3n' \
    --userId 'POyIIEv9oYSWq5Po' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyKick' test.out

#- 73 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"6xU2qJS3q9QJ5x4Z": {}, "LQ9jtyABtRZHhNwI": {}, "qLyJPxqkG6w7APbd": {}}, "configurationName": "L6fLlLrDwsnoNgop", "inactiveTimeout": 27, "inviteTimeout": 19, "joinability": "2luKjav1Mx52ZIXx", "maxPlayers": 13, "members": [{"ID": "cioNy2CTzQypGaal", "PlatformID": "7wJaSo7hBSOkVX2o", "PlatformUserID": "4xG0sC0e301oNCTL"}, {"ID": "Ql6e5NgSjaMVbSzO", "PlatformID": "6B0cq2LrM3QNOG9W", "PlatformUserID": "dE81Y0lhV8xQLGR1"}, {"ID": "2p8GrVyJCunPNn43", "PlatformID": "6FEUPCOXVuD2TS21", "PlatformUserID": "fh8CSotV1kbqAHKw"}], "minPlayers": 64, "textChat": false, "type": "2HYA7h3AxIm9BuvF"}' \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateParty' test.out

#- 74 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 74 'PublicGetRecentPlayer' test.out

#- 75 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 75 'PublicGetRecentTeamPlayer' test.out

#- 76 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'hu8vnTCL3S9c22oL' \
    --body '{"rp2uzOjsO5txxyGr": {}, "dr6kyPN9az7hG3Dw": {}, "WnKM6dr3VL3Pzx72": {}}' \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdateInsertSessionStorageLeader' test.out

#- 77 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '42qygKkz7GomoTlW' \
    --userId 'ZfNpUTbZ5suuBPgX' \
    --body '{"UKQ7BlQ1EDd36KMC": {}, "JEVr4Isl4AfBTAuU": {}, "37dn5yQX1wrxbqa4": {}}' \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateInsertSessionStorage' test.out

#- 78 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["FKqjlF3M1l9Hr9qD", "ARL7mesRjhuMyJoB", "ty0WyeTTg5X21vcS"]}' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 79 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPlayerAttributes' test.out

#- 80 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "bSPvHwdLKNd00jhv", "data": {"RLKdVRESnP1YugD1": {}, "dF9OBOME0uRwmKJ0": {}, "rfV9pPFpGoe18Gks": {}}, "platforms": [{"name": "BMcxGiOeHAwSSUY6", "userID": "1Z1I0qKhj2TsFGzn"}, {"name": "PcPfroC7vrxkty6s", "userID": "mAPaVxfxN1bmrXv7"}, {"name": "YO9hU0PAPjm9D3sL", "userID": "c6dfNOXvNvPOUjtE"}], "roles": ["WseQkaO0abnkbEsd", "zSGj2FxAqJZvhmUZ", "Hu5ipueMoilieLK5"], "simultaneousPlatform": "ipbgD8TnNt7TFW0n"}' \
    > test.out 2>&1
eval_tap $? 80 'PublicStorePlayerAttributes' test.out

#- 81 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'PublicDeletePlayerAttributes' test.out

#- 82 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order '6Aw6BgoCDwzVjfWX' \
    --orderBy 'HTRn3licm9zgl2Ux' \
    --status '2Z5jx2227nRbKaH3' \
    > test.out 2>&1
eval_tap $? 82 'PublicQueryMyGameSessions' test.out

#- 83 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'oNvKNMEjIOEoZzgp' \
    --orderBy '34JpA921TS3aa1Jm' \
    --status 'hUiUYP9YuWRmFZ3y' \
    > test.out 2>&1
eval_tap $? 83 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE