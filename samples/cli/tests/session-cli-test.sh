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
echo "1..66"

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

#- 6 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationAlertV1' test.out

#- 7 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 88}' \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 57}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateConfigurationAlertV1' test.out

#- 9 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationAlertV1' test.out

#- 10 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 33, "PSNSupportedPlatforms": ["9LKxHoksOs8Qpq4Y", "KgQb0qVOFz0QI8c5", "Z5LH9p4MD9IuZwwp"], "SessionTitle": "MimircJlaOG5wE7L", "ShouldSync": true, "XboxServiceConfigID": "vzretA8tMm6QS0zM", "XboxSessionTemplateName": "6jeK8OLayYNapnXG", "localizedSessionName": {"uQxtuCh8rWpG3yO4": {}, "IUMuN4ioWbcgP8sB": {}, "XIA7o3mlQABfDbdv": {}}}, "PSNBaseUrl": "LYW150FRjjjNGJxO", "autoJoin": false, "clientVersion": "q1zm4k0Erhs3aXp5", "deployment": "iFkcVj04Kig4ZdRL", "dsSource": "Qd0NFJCtAuyIOr7q", "fallbackClaimKeys": ["HTHQDgS0xESsMqCQ", "AsAyt09pemaYEYYj", "nbcaCbhB54CnBGED"], "immutableStorage": false, "inactiveTimeout": 79, "inviteTimeout": 68, "joinability": "WOBtnbeHlAOHDRCS", "maxActiveSessions": 93, "maxPlayers": 65, "minPlayers": 19, "name": "zo8ztlw3zZHgueKV", "persistent": true, "preferredClaimKeys": ["EiebqSINFrNzcYuX", "qP5KqCeTI7otGrzP", "o5llrNJjFEbrSaEj"], "requestedRegions": ["M8zahbmDSqIdbxJf", "MQeHWhjVzOlti8bX", "chzZ4muL0vzaYwJq"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "mGIEUviNTCoVNtuI"}' \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --name 'SdpcGnu1wWqTAOOQ' \
    --offset '86' \
    --order 'rUqLtGUmuQkqyuid' \
    --orderBy 'ERvggrJsAncqvtoI' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'LuZDduutrIJ9MF1K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'xuBc485npL7ff0TQ' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 22, "PSNSupportedPlatforms": ["YYmWpentUEGEkIgr", "X8ELWazGZupS89oc", "HxgBGup6TzpcfmRz"], "SessionTitle": "MP9ki0cqCc6KtwoN", "ShouldSync": true, "XboxServiceConfigID": "l1Yv06uQE5dANK3P", "XboxSessionTemplateName": "feT2FfEgJsY3sMTC", "localizedSessionName": {"sHFa2stL4wlOanmQ": {}, "650tJsgMJxM1slCs": {}, "xOcOnbFba0rfmUdJ": {}}}, "PSNBaseUrl": "1WEpa4UWjyV0xTJl", "autoJoin": true, "clientVersion": "wqstcNypyyAnyth0", "deployment": "6nsDJoxqgPHfJ78O", "dsSource": "rsiqorUXyUJSMAqW", "fallbackClaimKeys": ["vy4rsjmLnyCNFYQ2", "nXfGt2SKTUksL7AU", "Cu8sE4nqaLQI6xq2"], "immutableStorage": false, "inactiveTimeout": 86, "inviteTimeout": 45, "joinability": "VgxyapFmlSFMqf3A", "maxActiveSessions": 38, "maxPlayers": 79, "minPlayers": 56, "name": "gFHTC2NnvR4WLx0m", "persistent": false, "preferredClaimKeys": ["xKVypheMhSB4jnZh", "DDlZb3FogVpwqdAw", "JoGpyX4Tuk2LQPAT"], "requestedRegions": ["ozD9im90ZQUJNNti", "seSlRdmir2wVFDSn", "yEGpffW6M6rZJ39Q"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "Ju7JZa9L1rZ7Py7x"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'Lnlvk2nxoZmSUJp2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationTemplateV1' test.out

#- 15 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetDSMCConfiguration' test.out

#- 16 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminSyncDSMCConfiguration' test.out

#- 17 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName '8tMun6cBoYuQbqtC' \
    --dsPodName 'naBjoNEyo5BWmBkh' \
    --fromTime 'cLrxHHEIGN2k2BCf' \
    --gameMode '4TwknAaOWsnSBzU5' \
    --isPersistent 'C4NHvl8QPVPJJ171' \
    --isSoftDeleted 'ZtM7JRG8AHdH6M6t' \
    --joinability 'McGwZdNhgM1xaSGd' \
    --limit '33' \
    --matchPool 'x3h11f88fneX166l' \
    --memberID 'ZiQByYeOYrER3IQ2' \
    --offset '17' \
    --order 'XEQC1l5earLYrt8a' \
    --orderBy 'cNSwHPP8D5yo1rVL' \
    --sessionID 'NxTdLfIjLKqYPidS' \
    --status 'sXK6IdiZNOzA3QhN' \
    --statusV2 'hpZqYL1gaOFLSze6' \
    --toTime 'KRS02Rq8Saq1bC0k' \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["YRRbMcfdMFxf7fBb", "0RrJXcGXaq92h9Hf", "tK3aeWezO6Kxx3zc"]}' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'z7RAOJWNBqI2QhvL' \
    --namespace $AB_NAMESPACE \
    --sessionId 'YkqQa2qV5VkMsHnt' \
    --statusType 'NYzKwraR4fzI96WS' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'yJBBqCMjh1t60YGA' \
    --key 'P3AxnUtWngWGGuka' \
    --leaderID 'IApPtsbcVhF0l6wr' \
    --limit '90' \
    --memberID 'sYQnnU8xZW0OYG7j' \
    --memberStatus 'xhyLPGIrMlCWeRy3' \
    --offset '10' \
    --order '9MMetrS31SE9X5cZ' \
    --orderBy 'VeJhbjd3XcijLeug' \
    --partyID 'Tc7jyKAzQqWBcdKu' \
    --value 'pHvSst42zEflpABt' \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryParties' test.out

#- 21 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlatformCredentials' test.out

#- 22 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "0jFFr5NUEUWKTeKl", "clientSecret": "O84Ovjbnw8JKDyY2", "scope": "FlrqsScs3PEnNdou"}}' \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'NbIM7VkU2lisFTeG' \
    > test.out 2>&1
eval_tap $? 24 'AdminReadSessionStorage' test.out

#- 25 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'CxTkyio8p2J82BuM' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteUserSessionStorage' test.out

#- 26 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'kcUGhoOy6Mn18N5R' \
    --userId '04S0mo2Yh2YbzEhL' \
    > test.out 2>&1
eval_tap $? 26 'AdminReadUserSessionStorage' test.out

#- 27 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'OooUCqu3BYZae5lM' \
    > test.out 2>&1
eval_tap $? 27 'AdminQueryPlayerAttributes' test.out

#- 28 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'dPBx55jFlJ1eFMiq' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerAttributes' test.out

#- 29 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"lrmGcWP3Vh3tWeXa": {}, "zxp2NcBd6nYafi9L": {}, "kJEu0owaXe7CkUEi": {}}, "autoJoin": false, "backfillTicketID": "3TpdOEcash5Lt5UU", "clientVersion": "5qXNFj9C1iuDNzHV", "configurationName": "ARwRca0IpFgwueOI", "deployment": "nckYCS5YXSLTB36K", "dsSource": "WnmTD16EepgEPt6h", "fallbackClaimKeys": ["h4v62CxbhKCv1EQ7", "prdVrYLxYamxto3l", "drav7GVAhChKlqHl"], "inactiveTimeout": 27, "inviteTimeout": 36, "joinability": "G4EP1a73KCbjhpYg", "matchPool": "YQf1u8zSxkS0Aseu", "maxPlayers": 88, "minPlayers": 78, "preferredClaimKeys": ["IOKNbVq2ba1XS3jO", "MKCePFzbNH1ImCGt", "yTooyRAUyK8qqQa4"], "requestedRegions": ["mQTQpGoaeQSxtkda", "k7Az7dGGyhhgEI2i", "1ZZGEd17AQtECkp0"], "serverName": "wOiKtdSAybxWbdk7", "teams": [{"UserIDs": ["nNIq2bptr5pVAG2n", "PIR0qMw12quaLJbZ", "V0mhVajxQVdZ6cWP"], "parties": [{"partyID": "gWXSDfCKfNEOIdvz", "userIDs": ["iFeKnz3e2MaCg6Ll", "1XoFn3sjmWhq1Vc3", "LpFu4nzdNqJN5WsS"]}, {"partyID": "vYFZ2pzEim9clYem", "userIDs": ["aYUt1krMMHQrIJQK", "tQ6bMMOKD5pgyD6v", "mieq6bvRVwD3yIyE"]}, {"partyID": "F6rSdXQSCBJuHKfx", "userIDs": ["JMZZ6da3ZXFffWGB", "8T3oi26sutx5EHlN", "D0P2D8TTR3ivTafi"]}]}, {"UserIDs": ["TcCM5WHRq07JEkd1", "uGPavLI0Bjs1UUjm", "DI1e3JuxC13KhZ0h"], "parties": [{"partyID": "DKu6PGfZbBFYDroi", "userIDs": ["3Eq9TBSg5d9l3oES", "7VgTITOrwIIXeL7d", "xAndvAUrx8T4YqzI"]}, {"partyID": "LDO2KJaEbcTpBfxy", "userIDs": ["tqU4FlOxEZsmaeSY", "TO7KKf4dPCwX0gO8", "Qphhq5eVR4M7YCT8"]}, {"partyID": "2wuI9wRpCLgTorJ0", "userIDs": ["KsxQC5wuMTFv16BS", "XHMFf8Kuu6c4KrKa", "Wo3kGmByO6rL0LKh"]}]}, {"UserIDs": ["bOwGgK3wnEwZFKC7", "mPePBqisGjYtnztg", "Dc5hTAm7luoYMwBQ"], "parties": [{"partyID": "fNUwwM7PsBdCsrtT", "userIDs": ["cq53LRVHBI2JF0vE", "UCFv2UGtcQHceEoM", "Xfk64IFhj0x1z7qS"]}, {"partyID": "R1DsYyZzCZm1XvXa", "userIDs": ["zHF41hmKN4BXdfCq", "joWg7pjaCGP5VrE6", "2KrmjKXC6qfCLTWG"]}, {"partyID": "O19Hn0GGF3kXUdO7", "userIDs": ["tDOHO5ZExDH6paPw", "dpiqDBk2JftZ0mFK", "mefBARUV6RnNXVQ3"]}]}], "textChat": true, "ticketIDs": ["wy9wPbCHXC7LRFVY", "RXcJzBFEKizlyMiK", "MNE30eJbYfKk8HrI"], "tieTeamsSessionLifetime": false, "type": "10q638u6Q64DzuK0"}' \
    > test.out 2>&1
eval_tap $? 29 'CreateGameSession' test.out

#- 30 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"UYRfffl3i32MbYO7": {}, "wjUffdCUtGx5yj0t": {}, "FsH5yxPCP9grZmMF": {}}' \
    > test.out 2>&1
eval_tap $? 30 'PublicQueryGameSessions' test.out

#- 31 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pp7ZaGupgFQDfElH"}' \
    > test.out 2>&1
eval_tap $? 31 'PublicSessionJoinCode' test.out

#- 32 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'b1H7bRM4Bvo7215r' \
    > test.out 2>&1
eval_tap $? 32 'GetGameSessionByPodName' test.out

#- 33 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'hefYYO8grZ338DiX' \
    > test.out 2>&1
eval_tap $? 33 'GetGameSession' test.out

#- 34 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'LkdpyvKA2LATfBId' \
    --body '{"attributes": {"v2MG3dVoQXVxqBt5": {}, "4OHHJcX28P5tyKr9": {}, "FF6p6JqK3s2dDcS1": {}}, "backfillTicketID": "w1omCrEY286uH1ZR", "clientVersion": "yLAjmbByaAl0oIkM", "deployment": "lYd4utIWM4o37Qny", "fallbackClaimKeys": ["3b8SrNdWMMltGBHX", "b1lLHEqmFth0iXQs", "CLBSlrXietvDMfQd"], "inactiveTimeout": 30, "inviteTimeout": 5, "joinability": "HWfjo88efoA6hx0L", "matchPool": "I6HRJz3ydPPsv4td", "maxPlayers": 39, "minPlayers": 18, "preferredClaimKeys": ["gPRYM8uyCSWajhNL", "xai7rO5BDUsMXsZO", "qFNfNWcGwWgBKav4"], "requestedRegions": ["CtAn50qkMzl0ZCly", "JTsj8EyKwtNu84XT", "i94Lk6ZJhNNUjMmq"], "teams": [{"UserIDs": ["c7hwgmQH7IHzQG1N", "Nmy3fvmOzHbC7Ev8", "fNy69nqJBBuOoXAt"], "parties": [{"partyID": "ImarUNfQ7zAfyp3j", "userIDs": ["sYe800VKrdUTLghH", "ChLy113fDl8dSaiz", "rROMlGraGKPLbVAe"]}, {"partyID": "QNX5Rnk0kD40ftFz", "userIDs": ["dhEFFnglT1lpcadJ", "LKFs0dIBV0IMaVeI", "toxCj2rJ7BArm1ML"]}, {"partyID": "DJafjbNWdpdMP2lz", "userIDs": ["Iq1TOEN665o9coeV", "PAtfWdBnqsJKYsYN", "H7ogBiAfgFmZDOst"]}]}, {"UserIDs": ["BdE1JkwUGfIajeUk", "1ND8JFZ2jgiL6HKR", "oYlU4F3jvIGXmobE"], "parties": [{"partyID": "g4JBYvN5opIFWPuL", "userIDs": ["iCqprZ8rl0qlOJbQ", "KaXAcLLMrUu6Bkv7", "VMRQ93splLQpp5Qb"]}, {"partyID": "CSddNdTKx0TAvhRD", "userIDs": ["czGIOAvyLIHaBS2o", "fXgmBX0fS7CvbQaQ", "LVmPKKBhcVSsCqoO"]}, {"partyID": "BQ5VFQJvk7yjlQnO", "userIDs": ["xL0FAIHviWwQqF6m", "bEAmcDbxINCUxJE9", "D7Ne55jHYksXGff1"]}]}, {"UserIDs": ["sXgBXHDqV461RQx8", "x1H07kZ6fRhzxinb", "N9o8InB2I97DqrPF"], "parties": [{"partyID": "oL40CJjOXTcgdLTh", "userIDs": ["4TpA1YoZpgQF7oYq", "0jhxRo9jta32dJel", "awaaN3kCALaDMBBg"]}, {"partyID": "7zL7VPg5mnf6JSar", "userIDs": ["QDJZ9eIJxn6ZUOYR", "S8G05A6yP2yA3aqp", "TAclQSOrfdkwrH69"]}, {"partyID": "8pOQCg0gZF0bwsiv", "userIDs": ["VLb3nRW1wreEoq11", "JNkV5gkH6RW69hyG", "cysh0qjvrnjLpFts"]}]}], "ticketIDs": ["IfKnKxmvqgjGSP8V", "SDwISw0BzGos18d6", "t3JnDaTmVm2vVGr8"], "tieTeamsSessionLifetime": true, "type": "jG4TiU5XWT6l79jG", "version": 97}' \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSession' test.out

#- 35 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XqZAx7mAqUOF1doD' \
    > test.out 2>&1
eval_tap $? 35 'DeleteGameSession' test.out

#- 36 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'fSMLZz1UV1zVXywZ' \
    --body '{"attributes": {"tLqaHd1dFeDlgLaK": {}, "nVrKOREjfgw8zycZ": {}, "RxUoZo9LL0ZDjCji": {}}, "backfillTicketID": "AxJxQH0d1J8qIZSN", "clientVersion": "905dYhXKQpO64JG9", "deployment": "hrg4wgXaSajrpzPc", "fallbackClaimKeys": ["JxLgmL0ZsQSMPPob", "fQCLdT2ozxLfBCrs", "dEuDtQMxZ3vDf56X"], "inactiveTimeout": 36, "inviteTimeout": 98, "joinability": "YPQDTOtdJG4jam0V", "matchPool": "vCAXRG84tG4XcZIX", "maxPlayers": 17, "minPlayers": 70, "preferredClaimKeys": ["DDJv3l9wYYMtcoEA", "6XJiTie4jW4zbTNj", "zI08ZqZg4878G6KL"], "requestedRegions": ["DPq97Hal7wrXA06W", "VmLsRhO5pahQgYys", "ve1xVxKmG6pxTy9Y"], "teams": [{"UserIDs": ["DjEdwmn2bduFRS0k", "OMQrmGf2yf3kgKzS", "UVWHsApqvDW46TPd"], "parties": [{"partyID": "NR6LaTcQ54Xy0gBR", "userIDs": ["iw25wie2LLq0A2Qm", "vPirY3FIKnDHOKzb", "XlHnOL0PfBC7GIbl"]}, {"partyID": "3lvTnkI5K55xuCm6", "userIDs": ["JS0u5cKjwSryavsE", "aZqoMdt2BgeZcZm1", "SpAE7yU5id3O0mNm"]}, {"partyID": "SZDQMLuDTW2qncBK", "userIDs": ["vjRTPFfiKPOUonCK", "FLW0jUeWl3I8Huzi", "EP4vOs6UusWCU3Wx"]}]}, {"UserIDs": ["RWiZOIYejfnX9KFp", "ehgaqcIowjHehr2n", "BTtaZ1vQTZyilLQ0"], "parties": [{"partyID": "Brs8AfoY5iZHT4UL", "userIDs": ["Uq6JgCLcjlVSy6ih", "lyqqvR1JkNvPDcc7", "EBNYmDF2z6vvmhOL"]}, {"partyID": "xCKIlTPjv73rInw5", "userIDs": ["WRgzchDkolCmN8Xy", "1drnmPHVhtEPWiUG", "p061hMyqjQHX8xPQ"]}, {"partyID": "ADEcCiTsj8qkcOjz", "userIDs": ["R8JsQz714x2JvzkV", "2GmvuipboNqbgbUQ", "gh1NZOd5LQV7CghY"]}]}, {"UserIDs": ["R7OLoiEHu2XwMDm7", "X8sfdP05VQwiFg7x", "KEx1SJJ3AX3WHrxB"], "parties": [{"partyID": "M3SjDPnIDDnOdvR0", "userIDs": ["NbN6WWqvgBx6X8P4", "AQgRXhJ6MTFzdu3A", "yfwP4AejlcgUuzj7"]}, {"partyID": "SaH0dgNERdaLNCc9", "userIDs": ["9WDxwM5d8tCysYOW", "VCNZb7JasbMTPP0V", "Fps4H82TyVM6BTwO"]}, {"partyID": "jenur4tHExhAkJyS", "userIDs": ["XdmD1DEq6VuEiwjG", "pfkOLMuLrK0WV7dR", "PDK81seZIVJTfiak"]}]}], "ticketIDs": ["t30VKyuVUiApxR1j", "6DcsnPSX5ZcpZgU1", "4hSTDmeqs6EsViYD"], "tieTeamsSessionLifetime": true, "type": "a0LYpfgX4gywi0zW", "version": 78}' \
    > test.out 2>&1
eval_tap $? 36 'PatchUpdateGameSession' test.out

#- 37 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'TDszfK2OzYpN9wMj' \
    --body '{"backfillTicketID": "NGAhuNaiYuYygpvJ"}' \
    > test.out 2>&1
eval_tap $? 37 'UpdateGameSessionBackfillTicketID' test.out

#- 38 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '14HbuQSBDLdawQ9L' \
    > test.out 2>&1
eval_tap $? 38 'GameSessionGenerateCode' test.out

#- 39 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'WDTzfs3xc7sZmicF' \
    > test.out 2>&1
eval_tap $? 39 'PublicRevokeGameSessionCode' test.out

#- 40 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'VxzZmQwNT4BlPl3m' \
    --body '{"platformID": "fl8PXKC8obNygGT3", "userID": "Kk6eUALho7VFaF7d"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionInvite' test.out

#- 41 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'JyEVfHY81oPvj73r' \
    > test.out 2>&1
eval_tap $? 41 'JoinGameSession' test.out

#- 42 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'cMbShXS34Mzhs41F' \
    --body '{"leaderID": "9nu4m0NXMCmmeMTP"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPromoteGameSessionLeader' test.out

#- 43 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ULHNwuCZmajy5e2j' \
    > test.out 2>&1
eval_tap $? 43 'LeaveGameSession' test.out

#- 44 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'q6WV2EdMzwPMrIhX' \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionReject' test.out

#- 45 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'zzri2vwIBzptPaqV' \
    --body '{"additionalMembers": [{"partyID": "kjbB7ccYwEaXcLk5", "userIDs": ["KUBMOt5LN44dne0T", "toC4qyuIf64HUslL", "L9Ex2Nri8lD7VOBK"]}, {"partyID": "WZNc2Iebudn46z3X", "userIDs": ["8pxdtmxZKuxXWIIE", "AkljNQPlvXtOL0p8", "44FteEtlbUXthBnG"]}, {"partyID": "hmYM0JKofPhxPk5o", "userIDs": ["6YyRo6Hu88rRo05d", "WzHaIiva3U81tMgB", "OljGMQFwtXP0WjTf"]}], "proposedTeams": [{"UserIDs": ["s4Rne4HKxkknQfhl", "1XYZ9QQvUJanEo4D", "noffGpy7BVTxJ4r7"], "parties": [{"partyID": "fbKcsmNtihUH23r1", "userIDs": ["46jolLugY0oX2mPD", "MKrCrA7jNtH85sWP", "bmXvNhEaoH73KuGJ"]}, {"partyID": "Ikny7GxV9Xu0tKHu", "userIDs": ["FttujAQpUDU3skQd", "SBBRfYutNFZZIq0n", "YAilMLGcZD6XCku3"]}, {"partyID": "UZgn0lADBUpgoRWA", "userIDs": ["zfFmy98cRZb4Mhtw", "VOfqrlFvbHcCGg6N", "arCGKSisXeOAcXMV"]}]}, {"UserIDs": ["h3HSAil8a1xextaW", "1e0y4XenaCFLyIjc", "jm7aBcYnTfUgPsPE"], "parties": [{"partyID": "v20yCdpCIMwEN6m5", "userIDs": ["80M6jcVlRGBlUal2", "Ay6b6jvnvV3l4p4E", "88cgTXynwaMy3MRN"]}, {"partyID": "JFXq6QnfPXH7gSRl", "userIDs": ["SlnmBz3DfcovrMBd", "lVOLlCRzB2fze3Ab", "CFtcNzNcRwZJLdyC"]}, {"partyID": "PFh1QbkmfXNKUUxG", "userIDs": ["Oj74Kiba0oBptjT3", "gL84BfAPqw9v92BI", "0zQcfFvg0RHdjkWp"]}]}, {"UserIDs": ["1Ne1FVBEnOr4CNzs", "frnSIk5IPB2Ew2Eq", "9th6FU9nGWNqPmgO"], "parties": [{"partyID": "5PMI4oGhSO37cE2D", "userIDs": ["4UAt4ECEugmuLn6o", "GmH4IkKFUCdC6Bd8", "jfPdHd5valNr2C5f"]}, {"partyID": "0q3PMO8XYNdrQscO", "userIDs": ["77Y4FHL1rLRsvpFd", "QkX3CEupcB9ZUmjn", "QCCfRdR52lUQwr3L"]}, {"partyID": "8NfRdzzg0UB2eGWP", "userIDs": ["VjiRtl50FqO1YuMc", "JEfNYif5lgGbrQAQ", "CEYlJkOtEG2g6Cp7"]}]}], "version": 25}' \
    > test.out 2>&1
eval_tap $? 45 'AppendTeamGameSession' test.out

#- 46 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2rHPTno9CksofQEg"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoinCode' test.out

#- 47 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'lDXtM9ZBV2TonX8z' \
    > test.out 2>&1
eval_tap $? 47 'PublicGetParty' test.out

#- 48 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'vgWQ7mOxwzDUEZqQ' \
    --body '{"attributes": {"j4OopIFSZp9pZunN": {}, "tbwSLAdrjbc1FmQL": {}, "RHtCYgt8YXeks2kL": {}}, "inactiveTimeout": 81, "inviteTimeout": 2, "joinability": "TgZ4pMuOrAGaP6RA", "maxPlayers": 46, "minPlayers": 100, "type": "yfko8z3WSdOlARHe", "version": 19}' \
    > test.out 2>&1
eval_tap $? 48 'PublicUpdateParty' test.out

#- 49 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'xiwEHNGsQjbTcMMM' \
    --body '{"attributes": {"41Em0MUbdvsyTWf4": {}, "RernRcxosUiqnn9H": {}, "bSwmOSdBcG9XWOmG": {}}, "inactiveTimeout": 35, "inviteTimeout": 20, "joinability": "yZq4P4qNEBTyMfwa", "maxPlayers": 66, "minPlayers": 49, "type": "X0arOdfuaTDIZRF4", "version": 88}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPatchUpdateParty' test.out

#- 50 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'fHDJxVhNuceBHXdR' \
    > test.out 2>&1
eval_tap $? 50 'PublicGeneratePartyCode' test.out

#- 51 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '4OICJQHHszQpuvUm' \
    > test.out 2>&1
eval_tap $? 51 'PublicRevokePartyCode' test.out

#- 52 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'vvpKclXLdBi0zXkg' \
    --body '{"platformID": "2XmWwULONG8pe754", "userID": "ZV2F0deYoSsqX3vh"}' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyInvite' test.out

#- 53 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '81qw7QfTkY4iut3i' \
    --body '{"leaderID": "e1AEqo0iaXYbio9h"}' \
    > test.out 2>&1
eval_tap $? 53 'PublicPromotePartyLeader' test.out

#- 54 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '0ZejSPgtW1FbZt8D' \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoin' test.out

#- 55 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'FDK0HsDUpmWBO9JY' \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyLeave' test.out

#- 56 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '1DQ9ITDclYyrxAQ0' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyReject' test.out

#- 57 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'j05dYjYQOaJ0YFnP' \
    --userId 'CvE0SQoun0xmyHaO' \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyKick' test.out

#- 58 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"ospnuIgsFtVVFm5q": {}, "sqDXvJCtKD2p5PIH": {}, "JsUnbiNs7dJK1tbt": {}}, "configurationName": "VH33TIyz14ZJIAKq", "inactiveTimeout": 62, "inviteTimeout": 31, "joinability": "2POJamfxdONr6vmI", "maxPlayers": 33, "members": [{"ID": "ccEsehhTYLmKCx9L", "PlatformID": "4gUE8fS4IVlBlOFR", "PlatformUserID": "SAysqjatkbkHwqFQ"}, {"ID": "QSaN8SUVhohlFoeF", "PlatformID": "YrvafFkqLHMKFsRz", "PlatformUserID": "WXn0WDzSnghnVRti"}, {"ID": "TuX4vvIaGuZaTdmw", "PlatformID": "KXuDCVFNOkO9mFiv", "PlatformUserID": "ffH0WzYeSV0wKYLI"}], "minPlayers": 26, "textChat": true, "type": "3cSmvHL5v1yIR78l"}' \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateParty' test.out

#- 59 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '6l3meKqDxzTV1vwR' \
    --body '{"ScCUKmB26eaZr0eD": {}, "XjrGmWTqYCPsAdpp": {}, "DquV7M3dmvvB0TBB": {}}' \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateInsertSessionStorageLeader' test.out

#- 60 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'q7TZhs6Cy9FuPi68' \
    --userId 'YGCW8D5c3n5fJSQn' \
    --body '{"KigfJ86y7Hx8usKK": {}, "hvc1GLUOaw8Eo7og": {}, "cCPXQdXTiQGjTVxf": {}}' \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorage' test.out

#- 61 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["uRsiPYD2ut4SBAIk", "lcuZA8Mks2VAQuwJ", "oYASOtYpFjfyPRlG"]}' \
    > test.out 2>&1
eval_tap $? 61 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 62 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'PublicGetPlayerAttributes' test.out

#- 63 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "YK5g6DXWDLcU4vIv", "data": {"4NAX7Oh5rFlHU5bR": {}, "Xgbz7pel1aQ1ZygY": {}, "FLCU5sIN2mAC0nGE": {}}, "platforms": [{"name": "95jR4S0PftuIBeNO", "userID": "f7xYSw4IJkTp7dvd"}, {"name": "mfBQkwY6UzSn7jiC", "userID": "xSCobKUOIQu0Alcu"}, {"name": "uNP5l7wWohJSQPw5", "userID": "dZ1sfThXUig8BjEA"}], "roles": ["MFGTW3hpdGM84pHd", "72be2lSXEMYYeBe3", "wELxsib7L6SjJHD0"]}' \
    > test.out 2>&1
eval_tap $? 63 'PublicStorePlayerAttributes' test.out

#- 64 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'PublicDeletePlayerAttributes' test.out

#- 65 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'HGNmegxDi5NjyzIx' \
    --orderBy '01JoJYvVEABFtXKM' \
    --status 'NjCv5kLHB3xnqHhB' \
    > test.out 2>&1
eval_tap $? 65 'PublicQueryMyGameSessions' test.out

#- 66 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'IoSk8aBktgba8aFK' \
    --orderBy 'p87Nv3d01jrXAu8h' \
    --status 'FUZiEdahHbN0mmd4' \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE