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
echo "1..85"

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
    --body '{"metricExcludedNamespaces": ["e4Q5JDrsiQ8XSG94", "OlxTFOJ0sa2N6wm6", "2d0NfBYtpAHFZiPp"], "regionRetryMapping": {"mWVBF6ekgfh78nvg": ["hBDevobi58EiMJbe", "s5o5l40IQeFBnnOf", "zZVk4aSjmiOIfBYn"], "aUifdzcFTRydsuaB": ["grNIz51EdJjH11Oe", "DM6oUTJzcw8y4Sh1", "aPpuwCjPJuy7VFJy"], "whWaKWshQ1oxwrfa": ["brioWjGSltTX7RFU", "aVU3DXPNEhk3l4TZ", "Z3RTQjjZ97KARZy3"]}, "regionURLMapping": ["YnIJ1rgDwWtp8tdQ", "4Aqx5Ox77GxRRVtI", "jZiwXRDsZwpYxtfO"], "testGameMode": "lVTLlnqjFbYCWdC8", "testRegionURLMapping": ["wipolw7yt8Yqg61V", "sreRvXl7DMKHDqgV", "n6XgmcukhRguzBOi"], "testTargetUserIDs": ["gNF5auvNfyB3QwP4", "wuQrlX09l4HqH0l1", "qAtNwoJJpRoRqkM4"]}' \
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
    --body '{"durationDays": 47}' \
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
    --description 'N9grqs6eboKyal3T' \
    --certname 'qLkqU3tNHxzNHpC7' \
    --file 'tmp.dat' \
    --password '2sUGWamWnLpUxhJC' \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 74, "PSNSupportedPlatforms": ["i09hTJokUDVugdXy", "uXGcBSWSmV9eSc4B", "o087iiUp9KYrOf8b"], "SessionTitle": "QmmW45Z3NhCEcMaa", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "pv6il7hsVvLaROcP", "XboxServiceConfigID": "yRtWAJLfT4spqxK0", "XboxSessionTemplateName": "SGUOXfhm6T18OxFM", "XboxTitleID": "O3nRC5CnLacJ8W3t", "localizedSessionName": {"6lVFiq8FYCECjfn1": {}, "93tVGXtATDe3p47u": {}, "kxLGgJhvdVB74h7c": {}}}, "PSNBaseUrl": "nsGoQ4FFLr6DkUss", "appName": "Z43YbNw5BsjF8Zqj", "attributes": {"zW4LOoMPbzvB0E00": {}, "QArzfRofEEnMA9MV": {}, "SuaaXWHVDSsnKBw5": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "pPbQ8cwx2ciXR9xW", "customURLGRPC": "10dBOvFgTJWTfYvw", "deployment": "Qm9c4LyrI3LFClzS", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "WnngrGm9Z9Q5X4bQ", "enableSecret": true, "fallbackClaimKeys": ["VRjtxAmUnbsgS85g", "RzyH88WeAB4W6Bkt", "LfBeDZ8NDvpmpijH"], "immutableStorage": false, "inactiveTimeout": 69, "inviteTimeout": 37, "joinability": "DvxxEoCmaUcMXLTw", "leaderElectionGracePeriod": 24, "manualRejoin": true, "maxActiveSessions": 42, "maxPlayers": 97, "minPlayers": 66, "name": "OjpQxCzRjhVciyu1", "persistent": false, "preferredClaimKeys": ["CIZ2DDrJZLlNiFtl", "IfGzruGyeMKgljKn", "dVY8n4Fna9iK7QuN"], "requestedRegions": ["xLIAzLUS0syEfgkT", "4AUB7xG6MQTRlRmS", "BziBMPDukzt7aqiF"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "0xBoDjtXmms4gQuH"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '81' \
    --name 'MbD8zlWbAZEC5Op2' \
    --offset '63' \
    --order '1hErsWUGEVzaB2DF' \
    --orderBy 'T4Ssuj5EvEtNauT4' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'TvjWMtyTPbzEsAOi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'eZANZKY925KBXaAQ' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 15, "PSNSupportedPlatforms": ["tbLUWhnuC4SSGtfW", "ELwijwxMGAeh3cz7", "GQsAajfSgpMuN5zQ"], "SessionTitle": "vZqfkdJp5Z6xGu5f", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "fOcYs1tgqyHAfvVS", "XboxServiceConfigID": "uLfSIUUI761wc42M", "XboxSessionTemplateName": "VX39HjJhJwuWdeso", "XboxTitleID": "GNH24JJ3uSwSNoo5", "localizedSessionName": {"4lOWJ58nzFo40sou": {}, "ExmeJIZYzPGdmv0H": {}, "cdXkUPMRoQg3Lsxg": {}}}, "PSNBaseUrl": "7tbNvpiVIHMX7y6J", "appName": "RDZb5OHFzcKoO5gu", "attributes": {"CG1ERLG2N6AnwcO5": {}, "qWkbj0Dewn0BR1oH": {}, "JznOUn342kWC9U0h": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "X8wyRRYaz1Xmss9z", "customURLGRPC": "dvdugVThtz5NMPqz", "deployment": "dtPFwpwZhLy72PUr", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "oBsLt8t6fu90vzW1", "enableSecret": false, "fallbackClaimKeys": ["muYXlYiS7mfBUFcq", "tO41rCY90AEKi7DZ", "GcLlo7LHsydABjOQ"], "immutableStorage": false, "inactiveTimeout": 21, "inviteTimeout": 62, "joinability": "Xa8Zje3D69JX9OBP", "leaderElectionGracePeriod": 75, "manualRejoin": true, "maxActiveSessions": 80, "maxPlayers": 26, "minPlayers": 94, "name": "qBCyRcxWBqOg6TUS", "persistent": false, "preferredClaimKeys": ["tdDILFrkJVaranBx", "2vCszdknvS27BpRV", "4G7EYkmxx5XNlvFR"], "requestedRegions": ["wsFrxZUC1ea58Zoo", "tY9RPPPIshG7xdMG", "LMB9GGoHeFe1YhWA"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "MQxqXHwbPPVCvdjW"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'LEWhXO0esTc2gxfl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'IvDIeyU20D7Yzxfi' \
    --namespace $AB_NAMESPACE \
    --userId 'GMUygPVmJvFHHIKb' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'LV80pyb3NUImTn9f' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "D9qWwjcY5igwtXnq"}' \
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
    --configurationName 'jTl0DMpQ8zD3Oj9p' \
    --dsPodName 'Ss7z8gBPWWBhLpRV' \
    --fromTime 'wkDf9GAzU0oZzKEZ' \
    --gameMode '5vbh7CBboJ3iy5Is' \
    --isPersistent 'OWneAM7MIamD8XWj' \
    --isSoftDeleted 'Qog7FSjctbhQZ4JY' \
    --joinability 'igLYFTsUBX6TR8nF' \
    --limit '80' \
    --matchPool 'G4h3PusPMVKKBCCB' \
    --memberID 'Rl2XCXJCUvPicwuF' \
    --offset '50' \
    --order 'TYVQVFySVsRSYpt3' \
    --orderBy 'KBFUqXJ5iRR2fa67' \
    --sessionID 'o9RcPxZbIxlnteqN' \
    --status '3b2lK1EQnDqre8mb' \
    --statusV2 'QNO8ujvf0Nzg1pEr' \
    --toTime 'hlJAltpa9L5byEhe' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"4OPyF9wkGskXsdJE": {}, "VjGRRF4iGnC5grCE": {}, "5Cu71YugpKVkhHOm": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["XLN9EjNBJeSg2ieG", "mg1ykIIGRmCXjgq6", "vX3C8kLql0B6Ad0K"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'cun2tABncU5Ofu07' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'lwSmeY3ftfWbXhZf' \
    --namespace $AB_NAMESPACE \
    --sessionId 'UKLQHrOJmYGCKoEi' \
    --statusType 'r5AJ5MRZiBgUij0h' \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateGameSessionMember' test.out

#- 30 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '29' \
    --order 'vknoOQ3KkBZta2qj' \
    > test.out 2>&1
eval_tap $? 30 'AdminGetListNativeSession' test.out

#- 31 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'oB08NWyr0VzTsuCB' \
    --joinability 'czmxQPjD7tjdc1oX' \
    --key 'j9R1w903unlWonpD' \
    --leaderID '3O6f9LIEJk20Kjht' \
    --limit '27' \
    --memberID 'ysrDqx08EsCvUjBs' \
    --memberStatus 'jNSTDT9tb7ET5znd' \
    --offset '41' \
    --order 'iW0bd7CMKaTzp6jr' \
    --orderBy 'rpVQ1Rxl6s7grP6O' \
    --partyID 'zdnIgjDlRdNzsgKc' \
    --value 'fpMHJVUd7OlXtZ7h' \
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
    --body '{"psn": {"clientId": "ZCsBTNtRhOw4kECj", "clientSecret": "bWa2CDcTm3zpXCIK", "scope": "WqWMYVd8CvTAjRfg"}}' \
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
    --limit '59' \
    --userId 'w3a54c7v9p12w9E5' \
    > test.out 2>&1
eval_tap $? 35 'AdminGetRecentPlayer' test.out

#- 36 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --userId '8D6tOckpLaFSz0Wa' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentTeamPlayer' test.out

#- 37 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'DEdWqwShKM7SIGho' \
    > test.out 2>&1
eval_tap $? 37 'AdminReadSessionStorage' test.out

#- 38 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'sToAHr5tSNxZbDga' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteUserSessionStorage' test.out

#- 39 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '1sltJ2FKiVAEvbXO' \
    --userId 'zZx2SOIDoO6rYHnr' \
    > test.out 2>&1
eval_tap $? 39 'AdminReadUserSessionStorage' test.out

#- 40 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '8i5cinAWjSWgoISi' \
    > test.out 2>&1
eval_tap $? 40 'AdminQueryPlayerAttributes' test.out

#- 41 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '36VKqk5d6RpfB7TR' \
    > test.out 2>&1
eval_tap $? 41 'AdminGetPlayerAttributes' test.out

#- 42 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'OzpJgfC2tPFZHHx6' \
    > test.out 2>&1
eval_tap $? 42 'AdminSyncNativeSession' test.out

#- 43 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "wxyePmOYHPIBLZy3", "attributes": {"Wa9wZ9FB2pghbFUf": {}, "KO4HjaNGxzkWFOyH": {}, "nTBBRt7xTZ5JhxwJ": {}}, "autoJoin": false, "backfillTicketID": "6xNXQBAU8dRCVFme", "clientVersion": "Ceoi2oSaik1z2GCh", "configurationName": "scUmcp83FYTaKtyk", "customURLGRPC": "7DTnayGIdOGlITl0", "deployment": "RwsWl159Y4nvuGud", "dsSource": "bk96RFvD2beMysjZ", "fallbackClaimKeys": ["SOTv8KgtupN1FAbV", "nm7VSJuQPE88xuQo", "VspSKSAzxodExeKM"], "inactiveTimeout": 78, "inviteTimeout": 42, "joinability": "rNOsp4493ltg7450", "matchPool": "4DXTQ2TGtSchxmgG", "maxPlayers": 18, "minPlayers": 40, "preferredClaimKeys": ["DAMA8nyIsBDYyGHm", "yY4MGplowDF3Vkq1", "RLw42BYDnYrE7wTm"], "requestedRegions": ["Vj7TsxCq6thKhsZh", "GPyQfkYmr8c58NMZ", "cYrM2sPTLtMZrI52"], "serverName": "tWJZLNJkil4c37Sc", "storage": {"leader": {"3ln1MIMvSBfLTcCt": {}, "8KiPcTdfgQ1QN5nc": {}, "FXJO5Y9UekiQahiU": {}}}, "teams": [{"UserIDs": ["xVAiLvQ68UqSurE1", "EPfao8QPN0gAWB5M", "t2rkl1aO3VtEzMvV"], "parties": [{"partyID": "qoYVjOtmCxhY1RTR", "userIDs": ["rz85BVWQwTfOAR0x", "hPjEQFcVpE2pFpdb", "AVHrSiO9LyBjRVBg"]}, {"partyID": "PFU6sD88asgMh1Ll", "userIDs": ["yH9FcfdALlbLMZUB", "YOOncY7YDfmuhDvp", "ad4Leh6VbTSmxSyI"]}, {"partyID": "wh6lll4BEXwlnffd", "userIDs": ["xrcJEblNSfkmFClD", "Gvw6OG2psdbXqokT", "N1Maw9Iy9lzvy3Yv"]}]}, {"UserIDs": ["SMN9tpF40euZKO4B", "XYyljkkvkLxgxMbS", "mi0ywGbcQ9zZNYTh"], "parties": [{"partyID": "KMX0LZ96hmWI2T0B", "userIDs": ["ShZpZf0zMwYzgof5", "MZ8sBqWUiMKfMGvf", "oUiEgCPE5XXWebK1"]}, {"partyID": "l5BvbIdrrDKDVvMu", "userIDs": ["5DhvhQt9JFjsSAdA", "LQUulhUqb1Ildwqs", "XUDKYjr6WuhwiX8A"]}, {"partyID": "E2mNxQ1HqcBQGX59", "userIDs": ["pFoiYHAXYpvpBi9K", "FDNUkX5M1FvKNRik", "UebV4NIEP9wEaeeP"]}]}, {"UserIDs": ["g43Q1T7V8JLWLQX6", "ejQnCJIHuYeNIlN9", "5T3YoKFQsW3cGzjI"], "parties": [{"partyID": "1Dub0iNO8bozzVDu", "userIDs": ["MXFVsf8RB7RJlftp", "xa4S9JVKslNOqw7C", "8vPAUOazECqLqZS7"]}, {"partyID": "Xg4qyJZEPfFP7bHU", "userIDs": ["xpwfH5cn3QlijAmB", "5Y8b3bOo1FF70zJU", "eSBgvZBvnoLJPmFV"]}, {"partyID": "BzfKdqsf48JDQLKW", "userIDs": ["d1zAjHUuVfi0KlkY", "SKXNM54yMeKQKPsy", "OPd9g6DWNlKs6vUJ"]}]}], "textChat": false, "ticketIDs": ["vl5nXY40Onl5eqYa", "2bL18tG7qqDXB0rT", "Gs80ilmyp6WnBepW"], "tieTeamsSessionLifetime": true, "type": "OKgkt5nLWABvkLI4"}' \
    > test.out 2>&1
eval_tap $? 43 'CreateGameSession' test.out

#- 44 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"Avo6P7RpJj8ZOuyy": {}, "tj1dlBOC9uvJawut": {}, "WxqhWiwC6NljTuEc": {}}' \
    > test.out 2>&1
eval_tap $? 44 'PublicQueryGameSessionsByAttributes' test.out

#- 45 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "06kVnIonSylgTixI"}' \
    > test.out 2>&1
eval_tap $? 45 'PublicSessionJoinCode' test.out

#- 46 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'Beo78v0icbEAOqjy' \
    > test.out 2>&1
eval_tap $? 46 'GetGameSessionByPodName' test.out

#- 47 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ykFh4Gqf9ruhDeGJ' \
    > test.out 2>&1
eval_tap $? 47 'GetGameSession' test.out

#- 48 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'EJdditTN2lf3peBu' \
    --body '{"attributes": {"SxJ83a57gcUOFaIB": {}, "Xvf3Em9RQJlryEx6": {}, "h4NMwJ59AH5qPMvv": {}}, "backfillTicketID": "g4pLcfavpi3d3E0x", "clientVersion": "PmLR39H5S9dc4t5p", "deployment": "7DdXNvu4rSju5OYn", "fallbackClaimKeys": ["uFrb5T8fA3uq3tJo", "zdvB6gTj5ACw7Ptt", "F5Umj5BKDw0N3NIs"], "inactiveTimeout": 63, "inviteTimeout": 76, "joinability": "pmRJbrtHO2WdB7fs", "matchPool": "1MErhdB6TyC9849O", "maxPlayers": 52, "minPlayers": 99, "preferredClaimKeys": ["NdzHRCPpIAB8UIuP", "HP271VGrUYQPaR7D", "0FB6E8e0uBQ8fYgF"], "requestedRegions": ["6Xx9gQWG2PrPuspe", "t9caf2aDU9gk44YC", "v50y88Ox8LxyWpP4"], "teams": [{"UserIDs": ["nSECXF5ftVhrTLmA", "7MCwWKA4xUkKY6t1", "OptJ0cNT61V4hiwT"], "parties": [{"partyID": "enLhcYUOwefCobDm", "userIDs": ["aqx1uCjcc7fWgzyc", "8PQB2pAuxwTaJHUP", "qri007HalAfgvctk"]}, {"partyID": "qIlvz4zqm0NDidQ9", "userIDs": ["N69sTYiwraPLUnOy", "CFxNMdC79njoBQpD", "nxJAGD2laK9cAHol"]}, {"partyID": "C7WvUG0e9ohtTDfR", "userIDs": ["ndGCdzoPkkANqP4i", "XKMpMQvhzqS0L3Vn", "thaZ6DWlImWfuYBo"]}]}, {"UserIDs": ["SxxmKJEt4RUJXiCV", "lwuTNa48rwoQDAlm", "p8fUYNUUogl9Nu0d"], "parties": [{"partyID": "aEdHpCy4Dc5zgFOV", "userIDs": ["mz6CX1QMr5qZkxWC", "n2njB8DvBV7iT8lX", "2zYErNXEpzAmqBf0"]}, {"partyID": "FRK1VnMY1opHZI1v", "userIDs": ["9yb7QTxlq6hpJiap", "SZd6UqPyqIwufccz", "6IsLKPXTBR2MTcUb"]}, {"partyID": "TnQ27WEH7GS7Hlaq", "userIDs": ["aWsucaQIn7mAtJXT", "ICEzTKcs5jIDrOg4", "UPuS1xkxsDu0mDFU"]}]}, {"UserIDs": ["8echl7rQvwl6c5vX", "EwqbP7CDvS3fej0E", "EdLBT5mGQVcmKI3h"], "parties": [{"partyID": "bvgvLgnLViDMK88K", "userIDs": ["f9PlmaPdZEbzeyFQ", "HEfDrs1jlCj45Qbu", "8MvxWgaxrdxu8Enp"]}, {"partyID": "1Bavxn5rUWHE4JsC", "userIDs": ["n97p7E1gT9eYOqCj", "1IAwNMuC8HcSCly2", "J1jH5c9R81QQ9Ak6"]}, {"partyID": "IrsMtTruLB2GyZjW", "userIDs": ["r6XWTwW6D8bTSf9b", "nHu4YDlFv0H22Bgh", "2b1BUkzte2ETRahw"]}]}], "ticketIDs": ["prqIc7Fr1oDabgb1", "OPVz3g040IT28gyh", "VJaerDXTpP1tik8t"], "tieTeamsSessionLifetime": false, "type": "wZ8MyEgEsu6d5dNN", "version": 18}' \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSession' test.out

#- 49 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'Leod44enrv31lbya' \
    > test.out 2>&1
eval_tap $? 49 'DeleteGameSession' test.out

#- 50 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'ewYri4cEGeD7rOn5' \
    --body '{"attributes": {"1FXqXqGEADKVFqRO": {}, "ykCLyHMtT6pPQAOK": {}, "1hqS0GuAAlxWbNSI": {}}, "backfillTicketID": "uRzEAYKV28COjoFQ", "clientVersion": "ovpHwpANFFk3xkFd", "deployment": "5OIWackLczqrxmQX", "fallbackClaimKeys": ["ZXS6lgk2FE9F9IpR", "pOwI0k0uLWsrD7ov", "V7QsyCWuJaRg2LT6"], "inactiveTimeout": 25, "inviteTimeout": 32, "joinability": "Tx4y5CwlxKxU9IOP", "matchPool": "lCaxetv1kjo0m4kQ", "maxPlayers": 49, "minPlayers": 81, "preferredClaimKeys": ["BOcEG0FCygSyJGHq", "8i0vB1fHqIqoJyas", "fyo1740F0chwPHY3"], "requestedRegions": ["5heQIFJ9SOZWOENC", "gGVANwn3TOcvAvQO", "yFXLRnnsSyiWNbMg"], "teams": [{"UserIDs": ["mTC23sGhhy2ShbfX", "SKUqcKiQTPdTWtdk", "TByWcDkagXnnYdRi"], "parties": [{"partyID": "IKrUHcJt0ndph9EO", "userIDs": ["VByZXY5NjbB0RKnT", "DNtO948St4NUojkk", "TWMYxZF2iZygZ65p"]}, {"partyID": "AgFwGtxxMl35GSfl", "userIDs": ["BX0f98f6EJRhaW4M", "5qv3WcM5PgeNbF71", "Hn1BYiOHCx5uVTqh"]}, {"partyID": "tCarb3ZprAsmujrH", "userIDs": ["LL3XLhNrng7XGDDi", "PR6CKZYtA7A9jyrK", "M2y7rv7JAJe82Lpd"]}]}, {"UserIDs": ["hfeK2dl85eX7zOxO", "lL5KfclUytvIm21w", "8cpu2K9vETqxcFrF"], "parties": [{"partyID": "imNALXW7cvuA5g0q", "userIDs": ["Ee0JeJJBKfQkFWeC", "lede9D2c2eazYkRl", "Yeaw6LqeMFcnu8q3"]}, {"partyID": "O7bGLyAXROs9Rplt", "userIDs": ["NPEPSYbI7PnrtLED", "Wwhd4WUCuDVwsy15", "muqmrMQanN1KV9az"]}, {"partyID": "XzAg3Me2v7aQDSyP", "userIDs": ["UHybWbf0gLlJvpRJ", "bw8ZLlypCCMjoSGo", "bJNSvS2SNUGimsWI"]}]}, {"UserIDs": ["vu30yPsjTzWV7Laf", "5KAdjq9kP56G3qge", "iIpwl2fYj8qzX7nI"], "parties": [{"partyID": "ZmEqGhwnYXbDRfYP", "userIDs": ["6Qt5ZQZrMSd38bFp", "ITvUmC5j3JYeNM4M", "Uleye3jGDbgDAYW9"]}, {"partyID": "HzPQtcf1z4H5uGG4", "userIDs": ["mDe7m66E9LUkHH2H", "ls5hQcZeBMrkHW2Z", "Oc1rC6X6k0sIgw1b"]}, {"partyID": "1HnrnYPJ7hxrRvKF", "userIDs": ["8Su9gt6HvgGzyquJ", "JirP8snhsmdIGBxJ", "Vntp8X0hhhMGgRgl"]}]}], "ticketIDs": ["DoGazf0drkRHTKkm", "GVkRZiMKE5kd8WJR", "Es0VqBijfDKBmHox"], "tieTeamsSessionLifetime": true, "type": "DkJzhkiiZnxw2rQ7", "version": 93}' \
    > test.out 2>&1
eval_tap $? 50 'PatchUpdateGameSession' test.out

#- 51 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'J80Jl1Doiz5yEojt' \
    --body '{"backfillTicketID": "skTj9Awfy289L6s5"}' \
    > test.out 2>&1
eval_tap $? 51 'UpdateGameSessionBackfillTicketID' test.out

#- 52 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'kDGg1IirnmRc5uvT' \
    > test.out 2>&1
eval_tap $? 52 'GameSessionGenerateCode' test.out

#- 53 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'VSFtJmzanLN1JdMI' \
    > test.out 2>&1
eval_tap $? 53 'PublicRevokeGameSessionCode' test.out

#- 54 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'H3Pk21uEi93E5Wyu' \
    --body '{"platformID": "iOIjGc5IoLDgzrpc", "userID": "F8U2YzYVqjCdknfB"}' \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionInvite' test.out

#- 55 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'O92z8AQDdWkXoRBj' \
    > test.out 2>&1
eval_tap $? 55 'JoinGameSession' test.out

#- 56 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'DnJ9V7UAYZnW4XmW' \
    --body '{"leaderID": "fJllhsm3lgNq19WP"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPromoteGameSessionLeader' test.out

#- 57 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'WKIzPhgN4zH4ptj7' \
    > test.out 2>&1
eval_tap $? 57 'LeaveGameSession' test.out

#- 58 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'UEVaZRU94OkU7nQK' \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionReject' test.out

#- 59 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZaNGjyDpaS2zgQCi' \
    > test.out 2>&1
eval_tap $? 59 'GetSessionServerSecret' test.out

#- 60 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'AkV7NmKrXCCUCQoU' \
    --body '{"additionalMembers": [{"partyID": "Ppa8O7SbV5CFfB8w", "userIDs": ["fpkaIRS5uuA8IJ56", "DjjLCMEoE47HK0y4", "yLka2Lgl6bz1Evtt"]}, {"partyID": "5dje2xpqaRVmNNDS", "userIDs": ["R9Z6lm7cso3LJ1be", "OUq4aTjTFDnNerqE", "QG8lm34kxK7kHzOJ"]}, {"partyID": "4nqxNB23y48KjH2q", "userIDs": ["J6CIhUTkhN8zjb4q", "qsi9AMOstWxipBi1", "PTA8m243lsi3cWHP"]}], "proposedTeams": [{"UserIDs": ["eZhjnpJiuEodvDax", "Own4hrsfky0ou8kB", "NFPLfwyM4F8YTdK8"], "parties": [{"partyID": "2wfO0UfTVKpQ7dAO", "userIDs": ["5jQHajeI5toec0zQ", "2khLtLIyikUO4L7N", "Z7Qp9crygrMgrbjP"]}, {"partyID": "xgpIPJ2U7OLGjbqu", "userIDs": ["CwutF26tPVQCsFh0", "OwwQMHc5Dp5dkwIX", "VjSb9UihiRIO4bm0"]}, {"partyID": "y5ieptisiWkbvkVj", "userIDs": ["H0MHrsBhyaElJ4kT", "BzBq6XXmxdIkgItm", "s60z0M89hyPUohjo"]}]}, {"UserIDs": ["Cv3T46MAcbmhDGfV", "F6FnQjqPGhR5mSUK", "yVM8DRh1Sg2PaKbm"], "parties": [{"partyID": "qVUkSkCrlHoXdHWY", "userIDs": ["nJD1h0XWzjvYRSth", "vvPYVUZE4dUSbj4x", "PirpALH42cejDPUp"]}, {"partyID": "SJyi0ZduRS8LUIFR", "userIDs": ["AFevzfW8s7QQdSVi", "Uky4SIisGWbO7Y6D", "q9YyvT0pMecTKeCR"]}, {"partyID": "EFy0V6pII65Vstum", "userIDs": ["xvnJguxoW9R4Xsoq", "7ajjgmx2vSM70oD3", "WoCzNzUVhMHk0Ib5"]}]}, {"UserIDs": ["reLxhuzavqpQwFOb", "Cok9143JEJmfxGju", "DJ3gRrZ7PsjqlbFP"], "parties": [{"partyID": "dZpI3S536rcjSVQC", "userIDs": ["LyBf6BQBBwNq0Aqs", "ZpONiijUDTlcGwAm", "6s0KyHx3KAW2x7jg"]}, {"partyID": "SCtBY6cmFOWOvGS3", "userIDs": ["p4BbUChfa8L9IAfg", "bhkheNbPDXEg5Flc", "l10ZsycD3e16bl6d"]}, {"partyID": "DoTsISIDESIvAJoz", "userIDs": ["WEqfZwu7IlsfBhef", "Xf93rRzuheK9O5mw", "a1qz0WVChQgIXMEc"]}]}], "version": 8}' \
    > test.out 2>&1
eval_tap $? 60 'AppendTeamGameSession' test.out

#- 61 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'UBzWUCZmKy28innY' \
    --userId 'bs4ro9o7MEWUEeFG' \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionCancel' test.out

#- 62 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rmI9IiRBEBUsFZGJ"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoinCode' test.out

#- 63 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'j4AoaT4BatXlPgvo' \
    > test.out 2>&1
eval_tap $? 63 'PublicGetParty' test.out

#- 64 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'uw4NI5jLpMrKJzq1' \
    --body '{"attributes": {"hqgqzEGwqAP5WGPf": {}, "MUPQLR5sGqvxS5jq": {}, "qluoyQBFI3chGWBI": {}}, "inactiveTimeout": 76, "inviteTimeout": 53, "joinability": "bvC4Mtsu9euzMJy4", "maxPlayers": 76, "minPlayers": 47, "type": "pctaN6i0aGRij4E7", "version": 67}' \
    > test.out 2>&1
eval_tap $? 64 'PublicUpdateParty' test.out

#- 65 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId '38fi8TjUkq78eAjA' \
    --body '{"attributes": {"fJQFnF3QBIADKeFy": {}, "oQhY4sQjMuo6B4SG": {}, "AQHAMb5URCtgfWox": {}}, "inactiveTimeout": 24, "inviteTimeout": 84, "joinability": "9pudhPbIv5aFtZPZ", "maxPlayers": 60, "minPlayers": 19, "type": "GrH2cgsbX2diYFfC", "version": 14}' \
    > test.out 2>&1
eval_tap $? 65 'PublicPatchUpdateParty' test.out

#- 66 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '9d79bMEg8wrVTGJ6' \
    > test.out 2>&1
eval_tap $? 66 'PublicGeneratePartyCode' test.out

#- 67 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'lcsMe9VhAPppGcIr' \
    > test.out 2>&1
eval_tap $? 67 'PublicRevokePartyCode' test.out

#- 68 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'LiDJgSQFm3irJtzs' \
    --body '{"platformID": "SMKevyIs6ounPpXJ", "userID": "ss7pdNHvTvLJqnei"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyInvite' test.out

#- 69 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'ex4B3PwI937tLVkq' \
    --body '{"leaderID": "4I0K8Bzvzn9XiF0o"}' \
    > test.out 2>&1
eval_tap $? 69 'PublicPromotePartyLeader' test.out

#- 70 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'AhsPCKksPUM22Rfa' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoin' test.out

#- 71 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId '5X70c1gx7PuKEARe' \
    > test.out 2>&1
eval_tap $? 71 'PublicPartyLeave' test.out

#- 72 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'SeMR8ibtG5NZJae5' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyReject' test.out

#- 73 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'XygN8R6pxvD9PMXO' \
    --userId 'BAuuEAmofjLJDDuP' \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyCancel' test.out

#- 74 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'ktEo4VcxpQfvDOig' \
    --userId 'XseI3nAs2vlqCpvh' \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyKick' test.out

#- 75 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"iIpHSz5nd5Ynfq3O": {}, "dXdyXaPsrgg5tTP8": {}, "EGa1gphZkOmEBL21": {}}, "configurationName": "4prWrx4DM8Mi1U6I", "inactiveTimeout": 19, "inviteTimeout": 45, "joinability": "1VZPVbvfeeCpsZ1A", "maxPlayers": 76, "members": [{"ID": "xFCrufLKeMfCKKXM", "PlatformID": "jOybcLAeQ4tsGnDG", "PlatformUserID": "kbcgF6LSC8QWK0s9"}, {"ID": "gl4SHLwiXRFElUhA", "PlatformID": "xTaViHLTWDljSKoh", "PlatformUserID": "Fo7wGtZPFRuNb6Tj"}, {"ID": "sqfZ07ZPas1mwPIx", "PlatformID": "poPgRE2FrNQGZAzI", "PlatformUserID": "kdYsPMF6kMfw5dI5"}], "minPlayers": 47, "textChat": false, "type": "9mtibOASmWlTTCPB"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicCreateParty' test.out

#- 76 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetRecentPlayer' test.out

#- 77 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 77 'PublicGetRecentTeamPlayer' test.out

#- 78 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'LvBHgYRIeLjgiybf' \
    --body '{"krgeS5uzqnD22iE7": {}, "2tVdZxQx4JY5c7Wa": {}, "F3qoX9666JgOjqyy": {}}' \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertSessionStorageLeader' test.out

#- 79 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'RVaExTHjA3NlecJM' \
    --userId 'amLOqjg16j1JJ9RW' \
    --body '{"z6tfEe7YRd4bWOsp": {}, "2qz6moF8MuaUSamk": {}, "3FYav6po7oxhMCez": {}}' \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertSessionStorage' test.out

#- 80 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["CST1uDBxie3csUSa", "fI2yB0p7HPqZK1x2", "sIkEVcnGKmRZniWW"]}' \
    > test.out 2>&1
eval_tap $? 80 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 81 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 81 'PublicGetPlayerAttributes' test.out

#- 82 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "sQFOUHRmnFfLSdkt", "data": {"RcUGOyifeGoZVU8t": {}, "wmZ9rqbKmkHflkD4": {}, "tjx6uwWvegMWToP3": {}}, "platforms": [{"name": "COcmQRjKcVmtXeOT", "userID": "Bn0qbtW4iBaCuv60"}, {"name": "Vhztb6PFKuB9RsrK", "userID": "6hBqobc3p6yxUN6x"}, {"name": "vW7iWL9G70O1hfJD", "userID": "GUNcIHIKR5t72xXB"}], "roles": ["wSql98X3T1RXlqtd", "MzrA4s8AeleTHiqI", "eRvl5107MTBuD01m"], "simultaneousPlatform": "42ttEKpZl2fiFQi8"}' \
    > test.out 2>&1
eval_tap $? 82 'PublicStorePlayerAttributes' test.out

#- 83 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'PublicDeletePlayerAttributes' test.out

#- 84 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'xVxc4omCqrcFQ9FL' \
    --orderBy 'JhcSqmthSfn8CwvN' \
    --status 'vK0fbm4n0Lqpgopw' \
    > test.out 2>&1
eval_tap $? 84 'PublicQueryMyGameSessions' test.out

#- 85 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'f6Wc4PYwGQ5VnLdJ' \
    --orderBy 'zJJPlHjgu22Q6fEC' \
    --status 'XYMkOg9P1kE6kLr8' \
    > test.out 2>&1
eval_tap $? 85 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE