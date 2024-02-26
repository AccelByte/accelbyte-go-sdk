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
echo "1..77"

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
    --body '{"regionRetryMapping": {"r2LvaVy4jboXh9sB": ["dbRiY4laDdIgr1ZT", "EDKezdBVmlN8zGW3", "VCvsgCq9aRkOVLHS"], "6pLyOhZSoFoYUC7N": ["jpXHcmyM80IdCLHa", "wok61AUrwhJrelYF", "Zg5C91DX2uj8DMgT"], "5XskNw5vXBSW8sK2": ["o24iSZEOEyhQJtdp", "PHX2mvn6xpNr1TDo", "enB4AseWZLFZlVV1"]}, "regionURLMapping": ["XCAEjhaKj8oqbLtN", "OnDb0tc7zuk3ZSrs", "OgEYjc9LDiHaZq31"], "testGameMode": "C7YuPw1bgRoN6VZK", "testRegionURLMapping": ["NrtxKfLB4uoKjONL", "zuAccsijbqNEe0LU", "eHLUzI71vxBW9TbU"], "testTargetUserIDs": ["oqBRJFseEjt1gA1i", "Xc2EjNlhLvruhUuz", "RiPt8gE7XFR3abhJ"]}' \
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
    --body '{"durationDays": 24}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 12}' \
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
    --description 'zoIgWmRcbvm0F5aH' \
    --certname 'LlYMicHoMm8BBt5x' \
    --file 'tmp.dat' \
    --password 'A6kBuTKYdzs0X4Gg' \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["lvqOSUxf5vBH05iF", "1IAYS5BGx5WrFRoC", "RUF74tZyVwlKigmW"], "SessionTitle": "Hj2CoR026fxGKgRW", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "cNzcO4kizJ75ZZTV", "XboxServiceConfigID": "rh0TTw6Rk5cl3WCE", "XboxSessionTemplateName": "JyNKQSJRJK1BbQUC", "XboxTitleID": "vWUzByO46af4xZVJ", "localizedSessionName": {"XX0x4IwGZTHYJEGy": {}, "LmNDX6SeHYdp6KQX": {}, "vY9WMKdaHxswNlVd": {}}}, "PSNBaseUrl": "VSVEszX2bC8AYRvk", "attributes": {"l2JteGHyVlBi2mQU": {}, "o4kIhlUo6rzhlkuV": {}, "lAc5p1ZQl01dB8IP": {}}, "autoJoin": false, "clientVersion": "VnzJ2ejvolAu4n1z", "deployment": "5EKnW7yBIE8wD9tk", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "hbI3ISCYbEgpd7lh", "enableSecret": false, "fallbackClaimKeys": ["QY2KlIgY0qWBAkTa", "CJXkQMfteJZWEP4P", "GC0ZA8TWFaGXmQK9"], "immutableStorage": true, "inactiveTimeout": 32, "inviteTimeout": 59, "joinability": "GQj4Vmf2Kqfr7ktb", "leaderElectionGracePeriod": 90, "manualRejoin": false, "maxActiveSessions": 24, "maxPlayers": 58, "minPlayers": 62, "name": "tqCizAwbYijmkYUY", "persistent": true, "preferredClaimKeys": ["LxnByEITtGFilN3g", "sAS4Dxez2D6uqXZz", "wVxgq3kRJmj7IbiH"], "requestedRegions": ["CGoKvnC4UZOSjIW8", "zhTBWWxrGcVQbh70", "vFn6OE7CVHJSO4CP"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "XGgnPmGtX1agqE8f"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --name 'S6fn48n2diCuO2lU' \
    --offset '45' \
    --order 'hEIVJs6onZFGI86W' \
    --orderBy 'IKQelpwsl5gEwvTy' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'OqbdJUH2p92j1x3n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '092Au4wsoAuLC1z8' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 98, "PSNSupportedPlatforms": ["OjJ9n4Q7YZOlztO1", "heCXmlwlVj6z1Zyo", "tnETYG6NrHPzi5tf"], "SessionTitle": "Q26Q1R8kbkRiDYA4", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "vO9fxxLiTRJOT9KQ", "XboxServiceConfigID": "klsIsXh2Bzk0w7LP", "XboxSessionTemplateName": "ZTbcTKyAdnupBTDc", "XboxTitleID": "TsOs58hdPADeImvk", "localizedSessionName": {"tEM6uFWUHBFGuWBU": {}, "nkDFFHF1GeRoOYcB": {}, "UFD8nDCjWh5H867l": {}}}, "PSNBaseUrl": "9JjijksQWdO0IAM0", "attributes": {"mc0lL1x42IVK0GKq": {}, "YEk7GmKrFPQ4JPiv": {}, "wNiovL4DIKbfppr3": {}}, "autoJoin": false, "clientVersion": "1I844NvB6qOYSYFU", "deployment": "8SJkbY5G810vo9Ej", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "BhaBWLoCAxoLfBkC", "enableSecret": false, "fallbackClaimKeys": ["W49BDmejSjbSCIZx", "u39zrPWiMShJmyeT", "RcvZgAfh5R9tuE6x"], "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 86, "joinability": "gHVM3TnLJO0Qpvpy", "leaderElectionGracePeriod": 98, "manualRejoin": false, "maxActiveSessions": 99, "maxPlayers": 66, "minPlayers": 44, "name": "EtCnM7al3y2zea2i", "persistent": false, "preferredClaimKeys": ["gBmFpNJMjCM3jEqw", "14eZ0TsVep6Ds0yV", "CuTGh2RyfdiMFfgt"], "requestedRegions": ["uMW5WutL7VxvS7nA", "hE8KsdMoZL5ssKMR", "wU7ThCspKeRMDzot"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "BhwvDqLLYkRh9bjT"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name '27xDdR08DMNNDKEq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'uplsi4C7SlgYgVFD' \
    --namespace $AB_NAMESPACE \
    --userId 'r1C97a8nFCV2L80E' \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'ifGzfVf1mgr1ZV1Z' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "9sMWt4UXXN3Ziizw"}' \
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
    --configurationName 'sxMx8recbi7mdifF' \
    --dsPodName 'pp4s8q3gv5t8vxUq' \
    --fromTime 'g69tmMPsSDGo9vC9' \
    --gameMode '05VuV4KP7hWXg9YX' \
    --isPersistent 'JZvfXovOaOBJbJYi' \
    --isSoftDeleted 'LUaDp2SdA3VHXXEx' \
    --joinability 'I9NtKEcXZSoPmZBj' \
    --limit '20' \
    --matchPool 'EHa0yQ311rCxcaWU' \
    --memberID 'yWf7oG9BVy88D0T6' \
    --offset '75' \
    --order 'ffLBdgZQ6ivcDUam' \
    --orderBy 'xhjKRhmkxQjJdDsA' \
    --sessionID '1dd7hKQn9Or3zCzX' \
    --status 'fzmNgeBvjuBy0ecr' \
    --statusV2 'XCLDBm9dStZI9SOr' \
    --toTime 'NrhNtCrQemIORbTB' \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"z5fZAbLKmOReBMaJ": {}, "kM7MZQTYkALiq9a2": {}, "Jr5fyEPwKx7DIt6L": {}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["SHp02h66FjDgfviv", "1qXIsGBgSJMenwaL", "T9kalfsSt1tZNOJ7"]}' \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'TIlxjobFv8cubRdy' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'EyPij20m6mlYdNTk' \
    --namespace $AB_NAMESPACE \
    --sessionId 'XHcq0SgnwAZbXLVM' \
    --statusType 'Rjg0v2MQVK08SVMC' \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '81' \
    --order '6CVpBUEQe8YidSSX' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted '1UiLjgEVsW2S0rfw' \
    --joinability '8vCcYfT2lS23MzFc' \
    --key 'HNBZv1or59O6c66D' \
    --leaderID 'WSycTyjFonroYqU0' \
    --limit '26' \
    --memberID 'nt9a38NqQikvpbon' \
    --memberStatus 'cYLme1lOHGQh0H65' \
    --offset '9' \
    --order 'v8BgI1W2zwvVUQmX' \
    --orderBy 'I6PywvTFCiEE60R1' \
    --partyID '6MW9g5bLo3oVsHLf' \
    --value 'iOQn4BrE3w0pO1KG' \
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
    --body '{"psn": {"clientId": "IIuRv8tA5KC5iETs", "clientSecret": "x7HE2qFajaU2Lv8v", "scope": "znU6o2kkVj6Orv2L"}}' \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'zJNYHIeKFQfFKaLN' \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'sBK2OZcAPiXkAkWm' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Z6XH2VeHLKUMEwEa' \
    --userId 'rS2KsxJoa0AZ1qvF' \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users '416tDBUl7XDweTPT' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId '96RVzBe2mZOqoYgP' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"pi6E5rNvKirLUWNm": {}, "weVvPXgqyjls60xw": {}, "dnBN2K6SaKdWmBP7": {}}, "autoJoin": true, "backfillTicketID": "Wy2DhAMZOa1rwoNJ", "clientVersion": "WtUqvkqw3T0Ewrc3", "configurationName": "YcIuoj33q8SuuQvj", "deployment": "P3gxRPEQEe4KZcA6", "dsSource": "EybuhKEzcMiZV1vW", "fallbackClaimKeys": ["VsB37OJ9LCCOTOBy", "ErkSN52RkACqY7Ed", "WJyn4NHtvmczNNKm"], "inactiveTimeout": 83, "inviteTimeout": 45, "joinability": "78bLFmA4MQ15uygM", "matchPool": "RDtsfqfDzDuWuYLZ", "maxPlayers": 65, "minPlayers": 91, "preferredClaimKeys": ["7lIkJBu69vd0ftzO", "pbENdSSUrxMZmPbC", "hSQHRU8WkFwTWqYl"], "requestedRegions": ["ZGCQma75ZdBuXmow", "BDkDv3PRQaUw9oaZ", "CYcabUBisOuAKzbg"], "serverName": "lNPoyKuA6UYYHRIm", "teams": [{"UserIDs": ["yf5QKd3wKmSChjS9", "gRv41meVBdsvEX6W", "WSaU8DUiTdJG1QWH"], "parties": [{"partyID": "V6Mi6xaOmcnI7H2s", "userIDs": ["eA0pESPMCGf0pXOd", "HpbPqfNlWdEzsuOQ", "ZKHOKFHKRi9HLgaE"]}, {"partyID": "klWlVPQKVCpDqLFe", "userIDs": ["u7Hu8NDGa1x8HPXE", "tIUBAIdcRwCFSVcN", "0qjwdWTOmVGpx3MI"]}, {"partyID": "Q2U5PxQhpi2UHJtu", "userIDs": ["f3e0W4Ydx814Yyd4", "TtPRMzpx5zYUaTNK", "248EZzt0lX7Yj2Ja"]}]}, {"UserIDs": ["YpdrxbBad79EJ2vM", "uyuXOx5YZHLGU9PL", "G4beFcHAdvGRtyvu"], "parties": [{"partyID": "xQiMK3MvDwo4pmFO", "userIDs": ["4ppHf7iiXP0KwJGY", "2F0ZpuwTPk7NbMjK", "QmyllwuDK1iSwSsT"]}, {"partyID": "KksEGQ8VM8GsNEFE", "userIDs": ["PzspMNHgqpjY9soy", "yosRow8Bn5wHQvWB", "C7gZpSCXGtY6bEib"]}, {"partyID": "xqeZperaydXl27dy", "userIDs": ["VOXwB0tHnvFxnqDQ", "o57J6IgmcbTZIpXa", "TWEEWKGcgRVkiYhR"]}]}, {"UserIDs": ["qBGSDAXeiJWsZesv", "1ZCoayzWus0kLSCz", "xVpXgY6yZEFb9ZFo"], "parties": [{"partyID": "rIEAytZoYqic8eGM", "userIDs": ["EttROvKAiE6stdTd", "gZLAw9M13Wr5EV4j", "jjUXBUeF8KPq1SlA"]}, {"partyID": "LgduMfegDjHJMZ0L", "userIDs": ["abWcH9rnYrzu16mR", "y2cR9d3zX93LDuwB", "6JDhGNVEcWNASE9H"]}, {"partyID": "yhviqolkNPl1Z4vU", "userIDs": ["YS94uSEomH2F6NHj", "AwhVmVvEMjwCFSe8", "FUdEdQgJpKpw98e5"]}]}], "textChat": false, "ticketIDs": ["rJKRjAPNXZEtE6TY", "a20xfFv78pvTKg6a", "kKEQiPLGSsaj0dCK"], "tieTeamsSessionLifetime": false, "type": "aotYwBZiCI2XpcJI"}' \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"btMVCeJbBH65ilxX": {}, "YFB5h9yhnO74Lwa9": {}, "QTP9pcrU2QJEVcA6": {}}' \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "pBet4UWR1dCva0vI"}' \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'mWI5rJrtkwswPAMO' \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'C4GqugjHgwZwavg8' \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'iogcNmFDCZkmNB3K' \
    --body '{"attributes": {"Rg5Qs1Bt4nMy9YxH": {}, "Rx9NECf6CBoN3zNi": {}, "56PTtE4PGqTQIQGI": {}}, "backfillTicketID": "mGVEyhI6h2jno26i", "clientVersion": "GLOdk0BsEjMgsom6", "deployment": "PUsFqjQpD6ZMLrxl", "fallbackClaimKeys": ["TVQYdrOboHoNuSuy", "ENg1hqOdNPukj1oU", "x6eZaaIfGZEbH1Mv"], "inactiveTimeout": 77, "inviteTimeout": 55, "joinability": "snk51UaEnUG0HDik", "matchPool": "aCCiwGKr3kx2LQjy", "maxPlayers": 63, "minPlayers": 62, "preferredClaimKeys": ["tBqjj1fHq8C4D0np", "6JhxCz6IN9Kxlsas", "ZkwJsOwsh2hv9nnb"], "requestedRegions": ["R0ULVu6SySdQkAcE", "0m8reYYQ7GipvHmX", "KCikRRehfa27ucS4"], "teams": [{"UserIDs": ["TyaW8TtvEhKYGc7H", "CoWnWFeVQTmwK6Sd", "g2cdKRD0CNAreDSo"], "parties": [{"partyID": "oka85KOlFEuFrSng", "userIDs": ["Zu3wPOUVwuIXfA3Y", "qNcSt48auuEkHQuw", "X2i9cBTsQB3JNJzV"]}, {"partyID": "fASK2urEuQmLB2Rv", "userIDs": ["yZbDjJjb6s0FFZcr", "3WL5tlRXNBkwzvsL", "uIsulWXNIVjwTM6C"]}, {"partyID": "Lm3pSU1HS6PumLTH", "userIDs": ["3WyLQAFiMlVfOgUc", "ZPD8n8Xq7JNibO0R", "hgr7GHtWIvrP9qYs"]}]}, {"UserIDs": ["LxZdmVD1qV89ps3s", "7OgOUiQ7UFfZkxzM", "UR8XIyss53SMCxB2"], "parties": [{"partyID": "RS4xuXgFs2JxgHqe", "userIDs": ["OKRt5OLi4MVSWziq", "Iotu2IiL7BnoY7Mk", "E7rZw1xn1VafalPK"]}, {"partyID": "oPUNTDV71h3JgIpO", "userIDs": ["TUkLbfWzZo47efz7", "kTeuFDckrFoDe1ds", "l6oCiMwa06ETZGA9"]}, {"partyID": "cGBVb44uPb16X5r9", "userIDs": ["pGJehMNV7nnyeqRy", "BtAivwC36LQju4Ti", "geGwLspjPrtpQiT5"]}]}, {"UserIDs": ["ysHE3YAI0PNKIaJm", "I9f2YEiKEt5Re9bO", "MfPDpV12c2lxFPeG"], "parties": [{"partyID": "RepuXaM6dYQBpVMq", "userIDs": ["qUnDRE2KxMhM6VXT", "pzBKjNjWr7oMpd3E", "PDXcZThAytVFC4Q9"]}, {"partyID": "USDqxS70x8gIjEmL", "userIDs": ["hPU2PTdzdn5T1Abf", "lHelCOZM3zchQVug", "1MyV5qmrxrlQnRqQ"]}, {"partyID": "qBQeTwqFRWXeSCjm", "userIDs": ["Xya15dqN62GXoj9p", "C186KxdxkwHspRwJ", "b0Hef40VK7ZuyrrZ"]}]}], "ticketIDs": ["o1TdHv8fx1Jl6mmn", "vfDQclO62t1GwMUz", "26Qf9lWz4UkckMde"], "tieTeamsSessionLifetime": false, "type": "hhzkX4RECyblfQCu", "version": 53}' \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'a1v5A1cnUJMaj8Z1' \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'l9RU3kUsx6Ua6wLn' \
    --body '{"attributes": {"qeItdE3kpuHHug9X": {}, "ajaMIrOde3ApjwdS": {}, "MLSbO3pfqpP89xGj": {}}, "backfillTicketID": "ecEsI7TSVlePNZ2C", "clientVersion": "dKUHfJ1uppgyQbfa", "deployment": "v1MmEFez0WNqmL88", "fallbackClaimKeys": ["4M469z38bDT78glb", "soV4IJelFxOunODH", "VNkvWrqMQPtBLBqr"], "inactiveTimeout": 100, "inviteTimeout": 61, "joinability": "MUKoqfxKFUO4zMJP", "matchPool": "6EMiqtQ8BwQcUa07", "maxPlayers": 75, "minPlayers": 72, "preferredClaimKeys": ["LZIkMJGDxQjMnmgh", "ZD9ExH8HQI21xq9b", "o1tTjRCTsSWWyTOm"], "requestedRegions": ["2tJI9a2oiz43AfbP", "O6K6Xqkoc5rVAdW9", "2AzNllBiXisP7XHK"], "teams": [{"UserIDs": ["rSUBFCIffClmXBfG", "LeLjqv97T4SENyUK", "1OMHi3rfW19UO21T"], "parties": [{"partyID": "daAogCXSGiz4I6w8", "userIDs": ["Ckt5gJ3ZW5nSwFDa", "XfDNA36dPq2DqCvf", "QlsZ9Ix02A0x2TJ5"]}, {"partyID": "lgvezmLItUwIjx6u", "userIDs": ["5GEVukxVJIcxDJfE", "RHVXcBv49TsYxA0n", "jef0yfcepB5dFMu5"]}, {"partyID": "s0XdS03Hp5WiezzN", "userIDs": ["aqfu3ny0fzpJiWmy", "5sigmeGkYvAqJRvs", "LH0dB4Hdgq8XfpjW"]}]}, {"UserIDs": ["BxUcMddsWPVWW7bU", "In38fx9tM5xOQPL9", "QDvP7I0ZAJva6rPX"], "parties": [{"partyID": "TbF7zY7UdgLqPJVy", "userIDs": ["cOnR9FRBoZKNNWZz", "Wb4TyNTQMJKmfznW", "E1j6G6WckIqtW4Wg"]}, {"partyID": "4xVR7pxbOdoOHSYL", "userIDs": ["9MiThO8vz5wrxx2A", "kCWJtIglbp1g3K2d", "tME5YnY4kESLLzs6"]}, {"partyID": "1zWGJPKrhiffu89F", "userIDs": ["ti36zkeTRKJ7QB0d", "0P7Df10HuYPomGWK", "YSmIl6vx0mHruV3K"]}]}, {"UserIDs": ["pNWdt3F6B7sRwT8d", "3B3rjn75jGzPe3tA", "fajwTR1elmGBrvOI"], "parties": [{"partyID": "Ayfgo1vy2Bn4DPkf", "userIDs": ["h8xq43QgWFGWgqPJ", "2EKwpzuDteKmbKYD", "tIKfo7qob4VsY3OD"]}, {"partyID": "wq5wwAeqm1us65m8", "userIDs": ["Be0m474hKq7T9D0U", "otlllYC2mzj2qzc1", "eKgpYsJEanvvntJb"]}, {"partyID": "YwwkgxjVN0jJJhuX", "userIDs": ["fPQejrGOQVWxW5Ic", "2RPnQQ0XaBd49S8y", "GlzFH3Rj9M3OqXQf"]}]}], "ticketIDs": ["V2r8UmvSKb782pLZ", "mfMRa2tOG8l0IpsH", "cia3SveRpMJIHjqf"], "tieTeamsSessionLifetime": false, "type": "Jpdbx8xzXlO8hhnV", "version": 29}' \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId '1KKfHLloJfneAR1I' \
    --body '{"backfillTicketID": "wakdVwFDJzGbQfiO"}' \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId '7ZebAscBHrXp8ANb' \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'Gjb2O87lfNs2lJOe' \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'hOus9W4Y2AaBDR17' \
    --body '{"platformID": "GuG9WuiyRf0vaUcA", "userID": "NMks8VoWUy0vYVoI"}' \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'eXakJp6OeNQLEsAp' \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'ZDQpZnY6qEu2aQuV' \
    --body '{"leaderID": "DmTtQ7xKlZS4Wnno"}' \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'pXAUcLbp2IwvIjpG' \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId '61mYHKRQ8VHWhmoI' \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId 'xdwapqPxUs1WlsaS' \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'UaILdxT5svw6cvAC' \
    --body '{"additionalMembers": [{"partyID": "tPtYDdh5XRN8RHWR", "userIDs": ["dyiiTbkT5IMSZVgS", "ITpPchNVheuGHSwF", "TUscWxsxGZIBDbLF"]}, {"partyID": "EKuhh792NswqEQA7", "userIDs": ["hC1nXBGr8Vnptoa3", "JBB2e4lzh2bWT2NX", "zZhR2pqY1VBqE4P1"]}, {"partyID": "oWxetRv0tdc0YWJI", "userIDs": ["yk9i7nrrQQ2S38Wm", "vgLGKjTqchn5Wefn", "J6aYWwFbc34LF9Bw"]}], "proposedTeams": [{"UserIDs": ["qpQcdi1pemISIZE9", "rmgVGreI1AnupCP8", "5MMsKXzge0FCnQ0D"], "parties": [{"partyID": "zOxlYSNkdYuBbDNf", "userIDs": ["npK6Lt9i9ydialZV", "w3f8gsHtHnsUqlB5", "qC3bycJerzZaSiDz"]}, {"partyID": "oQTgpDGS04wPX2ka", "userIDs": ["VVhwlMF2CRtXSCeF", "bSIdUtYJKxEKE6AI", "1s681lEdStTC6Ov5"]}, {"partyID": "QVzPCWdlTNFGLbAo", "userIDs": ["GLvGMHRTWjCI0pvr", "39Br9zQIeMyoqnFY", "zVKRet0HDjo9zj1S"]}]}, {"UserIDs": ["YYo9u32CNjqQs2Zk", "jgGcNkgCHszPXXuY", "vrmMQqSgU5zYyfdv"], "parties": [{"partyID": "XoA2w3SQ9ypkk8Ye", "userIDs": ["XqUvhSD622nzqnFt", "5zq4bpqGyVrBl9xz", "ObWcBMv7dmdCSMjQ"]}, {"partyID": "eLPZCXc9AlntlUTZ", "userIDs": ["dkbYpn2SxBZjJAjD", "80lrns5rkhyrl5ts", "BYKGaRbEX5rXVKq9"]}, {"partyID": "ZiINEdVBZ9T099r6", "userIDs": ["aRJ9TAn2hgVQy5EP", "YGOXiApEbHWVY3PD", "DtmvPicwBkgKRRXw"]}]}, {"UserIDs": ["L363et5eI2UOFrZC", "A7xnUnOlo4T1Ip3F", "Q3BUUUV0jYT2Zt64"], "parties": [{"partyID": "KMDBkQk8MKbRTwd4", "userIDs": ["SbGHRmbZwt4qplv7", "HmiOYoD7lDBV4Veo", "0Q4XKDPcBplMVNfy"]}, {"partyID": "VBMOGe56TVTZm5Dm", "userIDs": ["6t00M43NV5vZWD34", "rO4PbIPN8BVsDI02", "6e8bJrz6tUvb3M6n"]}, {"partyID": "c8az0M34eu97CwBF", "userIDs": ["6yhIKYUBoKkwiFsD", "l3dDzsjseENrZbh4", "c6BehjUzDajKzbsR"]}]}], "version": 71}' \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1ZDznvekqU6Qsj50"}' \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'qvmN4NsNW3G08iQ4' \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'yr7aFMBD49yx6hCJ' \
    --body '{"attributes": {"Wd5FyLTSXcV2uAcQ": {}, "kVu7cztqvTjJZuKZ": {}, "aOsLvKHMUz2CdR5r": {}}, "inactiveTimeout": 68, "inviteTimeout": 92, "joinability": "0I17ApZRZ4liQV0A", "maxPlayers": 4, "minPlayers": 40, "type": "pVn6r3ZMPdIDItro", "version": 1}' \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'Nx8Un3xYoEoz3KHl' \
    --body '{"attributes": {"7RiWvBTRP7IV0Uxs": {}, "SM0Zi0AR8NBDXTXN": {}, "1ce5jxCZc7TAcuww": {}}, "inactiveTimeout": 55, "inviteTimeout": 29, "joinability": "6xe8rsaA7n0B26UP", "maxPlayers": 88, "minPlayers": 57, "type": "f2t0hTRfm2MFNEFq", "version": 44}' \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'jVz1qveFVkwTGXSC' \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '2EZ03PKouBAX8lY0' \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId 'LaGf4YVvCsXSdwn7' \
    --body '{"platformID": "e5tEjDXgKMkFclnk", "userID": "1cI2vAxffZpX7Drh"}' \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'iwT9AKbGNcgBrzCN' \
    --body '{"leaderID": "ekB6ae6DPyHLAgJv"}' \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'Bz3fZU7LZnvL5Hkb' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'fLGODkYVLEa2wLnh' \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '2FyA0WSbUYkNjX5o' \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'oU2nfJJpxGVzxj8j' \
    --userId 'qrhtrQG17d2uwwpt' \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"HkcJ2vR2hrzJeG3T": {}, "XxJ4oTjbCt9OuZVv": {}, "JQGD9CPach3jrNVF": {}}, "configurationName": "298nku2T1w37BCWU", "inactiveTimeout": 42, "inviteTimeout": 5, "joinability": "6AAQ8sVoXopqHEZS", "maxPlayers": 23, "members": [{"ID": "KhMReRy3ZIZTmSid", "PlatformID": "sCAi8bjjURYoSfh0", "PlatformUserID": "3Wo68V828Mdo8FRx"}, {"ID": "7YJjebagKIjLs4af", "PlatformID": "RUrMHMuRtzGtqE3B", "PlatformUserID": "QjMhRp3sqrHf3gnB"}, {"ID": "uqjWeu3bHaROhOpD", "PlatformID": "qKcjzWIypNOMPi3W", "PlatformUserID": "9SOoW27neq2T1KqT"}], "minPlayers": 14, "textChat": false, "type": "DPMkz8T2GMjAO339"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --userId 'ADbN46PYeUUPzep0' \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'Kv9KAyHqcvEd02Hb' \
    --body '{"PVoqFulBnWI4jno1": {}, "AGAJvM7t84w1Wq3d": {}, "ACyaL78Q30Bq0q2y": {}}' \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'QSwVEWajQrPfAE5c' \
    --userId 'InSy1aSBVazOlxPc' \
    --body '{"ChOuofcYnv6Gp4Th": {}, "5Ui7vwhNlqW4817a": {}, "BfurcRyKLADcuu9Z": {}}' \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["uogVdvIXPvCW8cMu", "CHxcsZkfWYn0kkiK", "XQyOxARKhtxRBRXs"]}' \
    > test.out 2>&1
eval_tap $? 72 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 73 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerAttributes' test.out

#- 74 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": true, "currentPlatform": "we7bWq8D79N9X4Df", "data": {"XavRo98swLvJ5GRS": {}, "N9mY9BQc9jPfrKkj": {}, "Z2UiOg3HSpTlt5A9": {}}, "platforms": [{"name": "GuvaN0vS8NAuEmzk", "userID": "PQXgxXwv65zvWYDi"}, {"name": "RdHJpjnBcVGsp59j", "userID": "igSHDishsG1EBbzN"}, {"name": "aUU7SnWsRjMGO4bz", "userID": "xB1MNiEqgRX5dPh3"}], "roles": ["RpY0PwwSzNGNM88U", "8R37rqFxrdPos6wi", "CkDvthiup8eDSx7y"]}' \
    > test.out 2>&1
eval_tap $? 74 'PublicStorePlayerAttributes' test.out

#- 75 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerAttributes' test.out

#- 76 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'QK8tvxBDIBAbnoMe' \
    --orderBy 'j6vi7ewJzP00cnkz' \
    --status 'WLGicojpqTnJTswi' \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'JDIKKPYOW2NSn4y9' \
    --orderBy 'u3QSnInxX4kFJtg1' \
    --status 'DqpG3nEDiYAjC773' \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE