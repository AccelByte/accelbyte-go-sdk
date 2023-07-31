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
echo "1..60"

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

#- 5 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 17}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 17}' \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 50, "PSNSupportedPlatforms": ["5Pv8mtZEthLEDLlZ", "PERWm9Tn3lH11YQr", "wAK1PoecYx0M1IQC"], "SessionTitle": "WWo9mPD44HBGY1Sf", "ShouldSync": true, "XboxServiceConfigID": "TPicKRt6SvaU2SL8", "XboxSessionTemplateName": "VnpKhHRZWqhq1d3J", "localizedSessionName": {"QZwnZpT453fwI18v": {}, "MR4gOsFOI7F8txxG": {}, "v63icH6Xa6wiiwq3": {}}}, "PSNBaseUrl": "Z6WP8xilxyiSr67W", "autoJoin": false, "clientVersion": "E4oWjoEDk1tAIZNu", "deployment": "oTDJrJElTHKbpLGG", "dsSource": "R15LFQY7BGVC11q6", "fallbackClaimKeys": ["PMuAyvkTkf1jTFuS", "fWXCNOEkjTi9mVmq", "AR2IUzhJGMVxG00t"], "inactiveTimeout": 47, "inviteTimeout": 51, "joinability": "NIaeMxTA538ysslH", "maxActiveSessions": 67, "maxPlayers": 92, "minPlayers": 40, "name": "dHYbK38PAqfv2O5c", "persistent": true, "preferredClaimKeys": ["ClXefKxrIJJNYrBi", "OWPdli1DfXBkr9NL", "8URnrrKcpwZvOSkZ"], "requestedRegions": ["87ULMlwGqosA3PFv", "MPcEsYKjAR6YRytH", "q43dh5XmgWYZ5apH"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "EdLgWOO3apzAEvoP"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --name 'dtS7FKe1eBmqlHjE' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'tGfDtj2ClcpAVJCk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'GtR1bYQbbZMt8I3F' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 60, "PSNSupportedPlatforms": ["dL5GPqlvkNuNXEHZ", "j8ebZBgYCvGU8DYf", "O1gFbC9upN2I7rGO"], "SessionTitle": "FsmJKcZjON3mRgln", "ShouldSync": true, "XboxServiceConfigID": "Kx8by4DuJRWPQe6q", "XboxSessionTemplateName": "TgGufqsVwb4RyZ2o", "localizedSessionName": {"bnz87ANZ1CNqOJ49": {}, "D0U7qV2VpFndIP3Z": {}, "f9WLhGNcvrOcE2My": {}}}, "PSNBaseUrl": "UImSdMIajwvpKepV", "autoJoin": true, "clientVersion": "ATznUYJCMZ1d5B0h", "deployment": "tddQspqsn5zgegr2", "dsSource": "pzFssgPEaJYZn3lc", "fallbackClaimKeys": ["ml9ijgh3cSb7jvPd", "6s54OsCRqK5cu3Vi", "UpbH98CnTiEHg7Xm"], "inactiveTimeout": 12, "inviteTimeout": 0, "joinability": "7EQaq4gthH7FjsdS", "maxActiveSessions": 49, "maxPlayers": 73, "minPlayers": 82, "name": "FbCTGxwhMgUOGzwx", "persistent": true, "preferredClaimKeys": ["pXhGBsQBX89gEbrs", "rNSKCWYV26SVDG1G", "ABrbMhU5YSrU2BhH"], "requestedRegions": ["9Pm2dxDRWHjJLnf1", "sHc3vhO40VI1Rad4", "GgVL0MMVTjzL1u0S"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "qdmuq7LBMwEeQnap"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'NK3rxiF2Mg1FhYDk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'AVcChN6vM05CbvpS' \
    --dsPodName 'bpS6FWeafr1NGfPm' \
    --fromTime 'Cm52FQfb2oeqTUWi' \
    --gameMode 'uA0cgDl7MiiBXADS' \
    --isPersistent 'huny2fzBNZSDKIci' \
    --isSoftDeleted '1Wde6NqtSjgT47UJ' \
    --joinability 'BNyfRJkcSNxtGas2' \
    --limit '62' \
    --matchPool '28XgwtgVbgg4fAAV' \
    --memberID 'fZiV8tK1PTniugjP' \
    --offset '54' \
    --order 'DZ9i4fjnZ8w6D6G9' \
    --orderBy 'EQUUrIZ5KGkutJEu' \
    --sessionID 'P5TBNmFfMPbWOv7U' \
    --status 'Us8VfZGisRW8E8lH' \
    --statusV2 'jNw9WgJYr7umx47v' \
    --toTime 'hvcgZSpsZ7hUiviO' \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["teKjDtibqiEZXDGi", "8vhvoXTKtcrmURcY", "aCcNKZTiyqi0DK34"]}' \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'Sb3TOzKvGRwr6OoW' \
    --namespace $AB_NAMESPACE \
    --sessionId 'kmY2lCLLQUXyJf2v' \
    --statusType 'tI2CYXL1sB6XUuMD' \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --joinability 'pTUzsFPFvMgkz72n' \
    --key 'vmI4HxkAZ7VUECjl' \
    --leaderID 'IVXpaIVI5ZJ566k2' \
    --limit '41' \
    --memberID 'tuW6YFSdUgGrAsAB' \
    --memberStatus 'Up6ctwLKOvYDWLaQ' \
    --offset '13' \
    --order 'yW2Glcj4CiALrWUg' \
    --orderBy 'QhtkrzlH57Y7RNvr' \
    --partyID '7bqscpdHm26rb0Pa' \
    --value 'T3vw5NxTFXPpg6OH' \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminGetPlatformCredentials' test.out

#- 21 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "p3ivRni9Sh0Jl4FY", "clientSecret": "4EXfZZLgKv8iCct5", "scope": "7BulIzjw1OQegQNZ"}}' \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdatePlatformCredentials' test.out

#- 22 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminDeletePlatformCredentials' test.out

#- 23 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'l2iO3AuYr3XOUOvZ' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryPlayerAttributes' test.out

#- 24 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '39Wymuh8IS2tujOl' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetPlayerAttributes' test.out

#- 25 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"1bkwFvDzBdSSg0BW": {}, "9Tz2Yw1Pw6uPLP0I": {}, "QBfkegu8vJiMDjqa": {}}, "autoJoin": false, "backfillTicketID": "vC0NU3yM973iVwqT", "clientVersion": "uQ5cPhKydFZ8y4Zm", "configurationName": "1obdvGqkvVaE8ulp", "deployment": "V4GjYMvYhLJwLyz3", "dsSource": "eD8c3KfTBUYEYYF2", "fallbackClaimKeys": ["wVw8qMYAJB8GzAfg", "r6sPyvf8XSbymDFU", "CTN9uQLa97h9dsiH"], "inactiveTimeout": 63, "inviteTimeout": 87, "joinability": "IiTlbhVM2bNeWNav", "matchPool": "hfS88D91J9Ly9Mna", "maxPlayers": 0, "minPlayers": 77, "preferredClaimKeys": ["sKHSw2a3NuXo3IkR", "hPiEBCcXpzrlNIJo", "YqniNmT0cReud4mf"], "requestedRegions": ["6EZAE3T9a5i5B36d", "4tmJPahaZUr2S20h", "nqe3OaexWiOxYHec"], "serverName": "XGvbDvBOHcZcKFLC", "teams": [{"UserIDs": ["4J4YZWnIbOG946WP", "t6Vz9sWT0jhg6tNJ", "n7kkZzPgiDFswiNp"], "parties": [{"partyID": "0F3FuP2ZviuAd6mf", "userIDs": ["qW047BndjkaeYcgb", "RfhbJQpY1UhcPhEM", "UZyCv1usm3CNO4ZO"]}, {"partyID": "Au9LNTC2agwAy00o", "userIDs": ["5AC6QJ1u6KD96Jar", "g4uqbMSD60yVqzar", "VovzYJi9l18uyR1N"]}, {"partyID": "OvVw0ytRHwqO4if8", "userIDs": ["JH88v7A1WzAzHt8g", "VFrXDtSALYhP8t53", "TRHy5gPfAAUKnI6v"]}]}, {"UserIDs": ["iYSphLphZVhFEwuR", "T7Q0XT0I3VUalBVM", "OPrnDHserMSd2xJz"], "parties": [{"partyID": "c4CbqkSzOdWrHkr8", "userIDs": ["Bq1CvWRWuZupeas8", "tFOPV9obKaPw4dBI", "qPyILf41HCqTsu4a"]}, {"partyID": "jBobU56hVpDqa5a7", "userIDs": ["GoQwQha7j4TQMle9", "ecMX3TsbgcwbGmK0", "qYZ44UJgm09EzJI4"]}, {"partyID": "1GtniH5XyrVB6qfr", "userIDs": ["8JttHjDA4UE1V7KD", "Tz6DFXG3wT2Je2zA", "KwEZNW02o199ZD5s"]}]}, {"UserIDs": ["BOPMCDHavEmz5rH3", "9a4u4XSM7H0AP3nb", "8HF4SQsB0mLGXcHf"], "parties": [{"partyID": "pjbOa5OPUOKKV8WN", "userIDs": ["u1SsI519l5EtywaH", "AJuXsyshTSLl9Uz6", "fiIHFgxk9ZsYjkyx"]}, {"partyID": "LYy6C4VFEhJUmd7v", "userIDs": ["5HPcYTzcng0t3zIs", "mAYrnRInF23Zg9Bc", "vcrb3sxeFWiwGcK4"]}, {"partyID": "FDv2oPbcVIe7z5rf", "userIDs": ["MAGthHOQBMYbSng2", "mWOXId54Crcr2Z7I", "x5Rn8zJkCXhzTCle"]}]}], "textChat": false, "ticketIDs": ["DDrR6HZ5wjPsqQMq", "b2qU20etBp1V9prT", "PsY1n93zyeFskobt"], "tieTeamsSessionLifetime": false, "type": "os2TsVLim0VOkefO"}' \
    > test.out 2>&1
eval_tap $? 25 'CreateGameSession' test.out

#- 26 PublicQueryGameSessions
samples/cli/sample-apps Session publicQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"s4WnWRdOviHL6DGz": {}, "IA3b5yvbgLSeTf2j": {}, "UkwfnBGea0KR9q2a": {}}' \
    > test.out 2>&1
eval_tap $? 26 'PublicQueryGameSessions' test.out

#- 27 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Pp73bBfEPrrSAnDH"}' \
    > test.out 2>&1
eval_tap $? 27 'PublicSessionJoinCode' test.out

#- 28 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'pnC9mEMguLo2egvB' \
    > test.out 2>&1
eval_tap $? 28 'GetGameSessionByPodName' test.out

#- 29 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '8iFEZvvMhVq4zPZ4' \
    > test.out 2>&1
eval_tap $? 29 'GetGameSession' test.out

#- 30 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'wdButsO1JbVvZmkF' \
    --body '{"attributes": {"yH2goS4p0qUoDSRV": {}, "NEApWHfBhzCfjyB9": {}, "y5ae12ztlJrxBIvV": {}}, "backfillTicketID": "mUMxNNfGtAARENVo", "clientVersion": "pXhatCVF6GvcegJr", "deployment": "ko5s5otjw5k5ccoX", "fallbackClaimKeys": ["QHmr43GNZhHh8ZJe", "dYWcx2EerHok0THK", "lbnFlerNzGfNaeW5"], "inactiveTimeout": 33, "inviteTimeout": 67, "joinability": "Ne6TpwTymiU4AH3I", "matchPool": "1MQj4EG3zGGxbtEp", "maxPlayers": 2, "minPlayers": 44, "preferredClaimKeys": ["KhV7tu0WY0A6Ja1n", "tL83YFygqxm0kujF", "uc2k5nNPeL8f9LCu"], "requestedRegions": ["1h1cd3tO3U5d7isw", "Ax9g50DaYLUTTQUa", "wpPUgHTKXM0zjKRs"], "teams": [{"UserIDs": ["eOyrGigjtPpfR6VE", "eqVpRWp8rf2OluPV", "oUqLaedpTpIO4zFi"], "parties": [{"partyID": "tGKBzd924Q1CPmu7", "userIDs": ["gnFmWsw6Boj0OJ94", "2frH8fQzHvrV5EvP", "WTGRPXqRABrN4VBY"]}, {"partyID": "fjyOlyjbcsuoPXdH", "userIDs": ["7ZX0Y13Px6e90Pjz", "EVHR938TqAAWlTEG", "Drav7iI6Hg43FQJn"]}, {"partyID": "8Xk0H7C9LBy8Oztk", "userIDs": ["dm92SsbxjqywKFl1", "eJYrNLlSrCIiDNuF", "l1qRvlLqxiOV7u2j"]}]}, {"UserIDs": ["oQC20CgMHclwQdBX", "6qqoltJIuQ3JqCQB", "lwazsc6hVDgfIlMj"], "parties": [{"partyID": "DysE3BKg0bDLLtLz", "userIDs": ["D6fMtJFFSKQPA2p8", "9auW6eSOYwYJyeVi", "jkrreKdQtCCLban7"]}, {"partyID": "TDf6ZaZtkyBs7SxD", "userIDs": ["8JB39WL9QITNVZF8", "MBgLetk3JMOHh88W", "vFzmeZrAd1xR4Mz7"]}, {"partyID": "nsbzLHrJl5dGmRPF", "userIDs": ["31IGpokJUuWmNuXi", "gsMT8jEUYRGP7SY2", "mPK4qche8z5DgklP"]}]}, {"UserIDs": ["vuU9zHBTu5Q590wS", "XseiAZf4XFMuvUmk", "SqEmf2Cy7gIux68o"], "parties": [{"partyID": "DldHSNtshZVChdRy", "userIDs": ["AgGC8CyHjJvMmfKr", "gkWNx3ZqXpMtUdnt", "TI5Y2hq14d0JwBTq"]}, {"partyID": "dadTDxl9U4IIakGK", "userIDs": ["ma8wFNvUdsc69iKr", "MF81ODKKqvewmoOZ", "PfmFgiva7RJf2NiF"]}, {"partyID": "Q5tqBwRbcvje1Sye", "userIDs": ["VzaXHSZmnKR4kCdZ", "PznkNmLiyG9FVLTQ", "rYyOYVvVpwyPmMKV"]}]}], "ticketIDs": ["ABWnWgzoeIZk1Og7", "ZEkcaSkj2bw0Tu6L", "oI9pEWesp9myvuMX"], "tieTeamsSessionLifetime": true, "type": "M4tjRPO6AF9EmXYj", "version": 96}' \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSession' test.out

#- 31 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'M0CfgiV0lP2gT787' \
    > test.out 2>&1
eval_tap $? 31 'DeleteGameSession' test.out

#- 32 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YLBvJVB73hzbIfv8' \
    --body '{"attributes": {"Io9C7UjxLtJ1ZdLt": {}, "Z7mA4SxZ3ulQaNKO": {}, "PH8msGMJl9Jiirxi": {}}, "backfillTicketID": "uezoMQhjjcnIlLyX", "clientVersion": "nx7RcjUkQea7Yhda", "deployment": "8hDhGEjn9vq5nsg0", "fallbackClaimKeys": ["TB4A4hphRbowlH5b", "c7Qimsm22VrguMdM", "PxBpv277fJR0VHIt"], "inactiveTimeout": 92, "inviteTimeout": 56, "joinability": "MCCPCafbGOI5j0mP", "matchPool": "SoZznwVVW60ttBm0", "maxPlayers": 55, "minPlayers": 24, "preferredClaimKeys": ["XI6thb2dpUqtDGuq", "FW1prCol25gD79wy", "bt8HI8u6PRL5cmpf"], "requestedRegions": ["pHltbWSuOgLc099c", "X86taHaLSrzyCvfb", "sEEm0QrLCxZhJjPR"], "teams": [{"UserIDs": ["Vi3QMa2G59Fvh05Q", "L9MGAjXKWuwyCnuu", "grVhnb3m5vcgylDq"], "parties": [{"partyID": "bakdRZyucMHrBTar", "userIDs": ["g9si2jheQvStXOrR", "bSKyHJUd4YBzXhRd", "DPsycZbj9TBDBLA9"]}, {"partyID": "fnp1KeU759LxFn3K", "userIDs": ["Fj1yEBoBWVeSIuYZ", "74ub9EimAXiNvahP", "VmQpsx0tzUImI0fv"]}, {"partyID": "gdEPrsW4tv8RMf9s", "userIDs": ["s4MBk5zuP3jVCtlB", "JhBEtW5UBmlMFm4i", "oIkfZCJhqwToeq0U"]}]}, {"UserIDs": ["Nbp2WF8zftJqCXTi", "hmB92MPqpEQFoss3", "MCw7lL7EFlSBIcQM"], "parties": [{"partyID": "JVfjfAG4sPReOFp9", "userIDs": ["O41VsXDJEBnPe6Bn", "tAp84XzxkU2TSgUV", "hwRGepCaBTxxsLXD"]}, {"partyID": "ZaH6mWVjZJOvHz3u", "userIDs": ["81HWIPfG9ADCyYce", "4jQlZ0zUgy2PJ8uX", "vaGrRwkGIDrBX7ol"]}, {"partyID": "Ym7DxwhjHPFKD4cn", "userIDs": ["e4ErztCGszb8LNWY", "ZNfFYXK6CgaeExX2", "BZ0dsPX1WzRirSeu"]}]}, {"UserIDs": ["zXnuiNjEAEPDh5zZ", "UOayUyYLO8cgTHwt", "ng8Yz6qdf6ODhEN5"], "parties": [{"partyID": "8U6fvJWCT1SRQ7QM", "userIDs": ["nk27lY1BElkNO0z4", "6U2Zd9QfaL8gPidH", "D5TsvTMGpAjuZ9OD"]}, {"partyID": "I618OAtS7cXi7tq3", "userIDs": ["jUgTVrdTQjeILYgB", "8lv0luVXwvWg0meB", "XSswx0O0e9zuW4UL"]}, {"partyID": "Q61FGL6K6JtQbCpz", "userIDs": ["wtkWWyztoHOHfVuZ", "a6oIYeKsS7PkluCT", "yrOtOd4kA9j89PMw"]}]}], "ticketIDs": ["qnYfUnuLduBOUzn8", "rPBvI440ADuHSCgU", "csHDgqLACfD6ijeV"], "tieTeamsSessionLifetime": true, "type": "RL0MwfNc4IrO2ji0", "version": 40}' \
    > test.out 2>&1
eval_tap $? 32 'PatchUpdateGameSession' test.out

#- 33 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'pbsyTk7Pxo9DX5DZ' \
    --body '{"backfillTicketID": "OJkLFQShfX73OIbA"}' \
    > test.out 2>&1
eval_tap $? 33 'UpdateGameSessionBackfillTicketID' test.out

#- 34 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'QTwANedAzzFj7xeF' \
    > test.out 2>&1
eval_tap $? 34 'GameSessionGenerateCode' test.out

#- 35 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'JwF7wbyTmmwh8FNP' \
    > test.out 2>&1
eval_tap $? 35 'PublicRevokeGameSessionCode' test.out

#- 36 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'Q5rxhDdt88E9dZ9N' \
    --body '{"platformID": "s2cGfW9QfhhRELzj", "userID": "vLGlQ4Ekd04Qt6Bl"}' \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionInvite' test.out

#- 37 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'sCKkuXH50LkOyT2K' \
    > test.out 2>&1
eval_tap $? 37 'JoinGameSession' test.out

#- 38 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'S8fn8YTvHn7pq9HG' \
    --body '{"leaderID": "xF8hSvUaUhvYnI5G"}' \
    > test.out 2>&1
eval_tap $? 38 'PublicPromoteGameSessionLeader' test.out

#- 39 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CfQ7DDjPqGk7H3sl' \
    > test.out 2>&1
eval_tap $? 39 'LeaveGameSession' test.out

#- 40 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'fPIWSMSh42CzvTmX' \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionReject' test.out

#- 41 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '39LeITsXvCI1xejw' \
    --body '{"additionalMembers": [{"partyID": "rWOcsoaGrb0V2eTz", "userIDs": ["YRr97QLKMQZg0S8E", "UsHPty6kpAb7r3o1", "6oCQJM2q7a7pQnOD"]}, {"partyID": "bvI2SUuZypWmUIVk", "userIDs": ["PbLZ5Bu2uIuZN4H4", "mCat1sDRMzs4F3TO", "ly16qKW0BZow7cTO"]}, {"partyID": "w8T5li7yzlWL4Wnm", "userIDs": ["MwLXRceUe8hIl0kl", "waEll3jAmLggjzt0", "wPQ6nnGJ6D7onIEr"]}], "proposedTeams": [{"UserIDs": ["iHyniWYa1AuuGT9b", "LPPvYr5LkFZtgv5e", "BRN7i3x0HYaM64mm"], "parties": [{"partyID": "NY83RiqidjKYApHH", "userIDs": ["jXmStzCZrUWn5DS6", "IMyQEjd3b10LDbLA", "WPyiEn3oPpvJJk7v"]}, {"partyID": "gIDX59sHzIo4E2XZ", "userIDs": ["vILWezJwbtT0fILz", "59w9GPskQ6rYtZTw", "yKUKvZYtzCNGWHzv"]}, {"partyID": "qi23avgctXANuEq8", "userIDs": ["c8jtJwZ8wMrU2cYB", "UVxZX6VtWx0A8veO", "rYjCUnYx7jBRf6cO"]}]}, {"UserIDs": ["6OoTArCF8OgXOum3", "O8ZLmSZotAAifTOe", "pJOb2ep3vLENuWKR"], "parties": [{"partyID": "ckuqHVUmpxKiZehD", "userIDs": ["1yQKLahIbqcl2Uld", "JqwxYy8kmrOTtAwt", "i4wIZO2foh2UcTgr"]}, {"partyID": "GPcRE9LQ1gORbNSY", "userIDs": ["9fegFL6zlhFcxXf9", "4R1jI3ekWGiaWbqf", "03TDmTALMlxRyuWV"]}, {"partyID": "Ew8ftcWfbrWrZbYW", "userIDs": ["GppvCk4HMIWoUpVF", "YxJYu3fMIl4nZ475", "5Xa0uj381lHAwxXa"]}]}, {"UserIDs": ["JcE9r3dREiNaNEAS", "znSkyZWrsrlm5Rcc", "5JjkAoVSvDGkT3nE"], "parties": [{"partyID": "IeeNZFBZcKgr4Cqq", "userIDs": ["RwOYGytPoeAQqWJI", "F2BMUb5ZGba5z0fU", "B03PXwUaezs7xx7u"]}, {"partyID": "TkzW12aOEA0kaDui", "userIDs": ["Xhi0FB1b4Yoow1tr", "jTNZbspccHAyRIWj", "EOjs6C7Tj4t2nlwz"]}, {"partyID": "XbOYKSnpHeuZZ93d", "userIDs": ["dieUqWj7GOK1zBMI", "c6shp7YwfWJTFWFV", "r1OurWM2Q9g8t1VR"]}]}], "version": 32}' \
    > test.out 2>&1
eval_tap $? 41 'AppendTeamGameSession' test.out

#- 42 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dLogQr5y4Z7E6VsU"}' \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyJoinCode' test.out

#- 43 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'm8WMZbdXBf7YacRF' \
    > test.out 2>&1
eval_tap $? 43 'PublicGetParty' test.out

#- 44 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'CpP6H3co9SgELPZv' \
    --body '{"attributes": {"8HoB9EWevbErZwFS": {}, "HIZhtLyGEK7z3002": {}, "FF6a7sBvK2HC2UsA": {}}, "inactiveTimeout": 36, "inviteTimeout": 9, "joinability": "ZwZ9pfpAPxTqSOot", "maxPlayers": 76, "minPlayers": 52, "type": "obuKsANJ610mDBna", "version": 88}' \
    > test.out 2>&1
eval_tap $? 44 'PublicUpdateParty' test.out

#- 45 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'HMHEV9mbYJe2WJYv' \
    --body '{"attributes": {"lx2o8jMAG6rXURXH": {}, "wakSh7Vkunv2jtJh": {}, "tNbz28riYdobSZmv": {}}, "inactiveTimeout": 23, "inviteTimeout": 32, "joinability": "j2K0N6pQHU6XcEU6", "maxPlayers": 57, "minPlayers": 32, "type": "UMASeRWXtHF2G20L", "version": 42}' \
    > test.out 2>&1
eval_tap $? 45 'PublicPatchUpdateParty' test.out

#- 46 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'FvD70YKeMf5oAqas' \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratePartyCode' test.out

#- 47 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'kwsxOAsTsrECorfp' \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokePartyCode' test.out

#- 48 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'SdaUcPlc7K6w4oMR' \
    --body '{"platformID": "KXhyV4TtmJAmhZta", "userID": "58y6nuNBSdCpRxGK"}' \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyInvite' test.out

#- 49 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'iwpv6X5ThMV5m6oE' \
    --body '{"leaderID": "S2SR32Fu0sSI6ssx"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicPromotePartyLeader' test.out

#- 50 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'vtZgMUUWYngu2uwZ' \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyJoin' test.out

#- 51 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'YgUShvWLjtp8Ynjq' \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyLeave' test.out

#- 52 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'IzsQy8HDENxdHEqu' \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyReject' test.out

#- 53 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'pqwdrG8uhx5Ak0bC' \
    --userId 'C628EHghM1pYgRQX' \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyKick' test.out

#- 54 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"myfkb1lFjKbs2Stx": {}, "Wi4Hy5kfTSu7qmBi": {}, "VxIuQf3qbW3GFu3u": {}}, "configurationName": "F6ToL8fN2Rro7F5k", "inactiveTimeout": 61, "inviteTimeout": 77, "joinability": "2cbDo7jWGGoVVW9G", "maxPlayers": 63, "members": [{"ID": "IS1eJELECTzoBqEB", "PlatformID": "qTECCaNypYYPdHNz", "PlatformUserID": "457r0yQt12wdnCKX"}, {"ID": "mCiKU03mzk2jBODz", "PlatformID": "JJZgTSUbHiLXsfVU", "PlatformUserID": "b6wInUvSigkZzIiq"}, {"ID": "kGsP3Gp3CPRtMXdK", "PlatformID": "yYC4Q0EK8tlgE3VY", "PlatformUserID": "ObdA7GedAKlCUzsA"}], "minPlayers": 14, "textChat": true, "type": "fIfhWFAebrrhsqSJ"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicCreateParty' test.out

#- 55 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["K4w3e2olUtps75wo", "2SvkA3i5bzq96agc", "TogyduaB69bASVl7"]}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 56 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 56 'PublicGetPlayerAttributes' test.out

#- 57 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "Hj7c6RGb15Ejepkb", "data": {"rjid8EMC15SvJeGl": {}, "JGaeZI40kIzPDDXs": {}, "YbDHVPoKHoL28YoF": {}}, "platforms": [{"name": "E0T1Jf270OhFrJrF", "userID": "lXl1zbvKhNaO2GY9"}, {"name": "2102xP2aS67VXnkN", "userID": "txrNuLSOVTF82Pbz"}, {"name": "0qq8AWJw6yHZwQPW", "userID": "9ka4ZJRmU9hsQjwW"}], "roles": ["0N0SCJiz6LyPGtD5", "nSMAuXsAyxhOjDzw", "kd460ZJSWwpV6SEF"]}' \
    > test.out 2>&1
eval_tap $? 57 'PublicStorePlayerAttributes' test.out

#- 58 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'PublicDeletePlayerAttributes' test.out

#- 59 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'mJlSjVu1inknxyDD' \
    --orderBy 'ANUXIqDilel78Jid' \
    --status '9PNHm149itDIsqr0' \
    > test.out 2>&1
eval_tap $? 59 'PublicQueryMyGameSessions' test.out

#- 60 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'LnwvA3DwXtVpJTJq' \
    --orderBy 'zZmhGcpPI2fGTCLX' \
    --status 'GFg274nYyLgitcD0' \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE