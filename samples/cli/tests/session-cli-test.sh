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
echo "1..87"

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
    --body '{"logLevel": "warning"}' \
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
    --body '{"metricExcludedNamespaces": ["naeGZbieyjgSRzR7", "xy3PCBAYsobc5874", "ro404lgzduWbsvya"], "regionRetryMapping": {"NrOL5f3tNdR4ygmB": ["5RZpyyHiV8mDGQRk", "ydAZZrF16nogNMFs", "WR9ARNIaVrDvHDOM"], "Tw1uzK14Xv3yodah": ["slT4qS1MtVIxBTXg", "rDpRI1PPAuHNIcM2", "JgollhJv5HpVB5mc"], "oLYzW0b7mLHUrePe": ["n00gfBKrGu0WXdlY", "3jywWncUAw7BE4tl", "SfWKo0Fn6hIOCZwd"]}, "regionURLMapping": ["c3moDOmdf7AmD5Lp", "KiNZYtDrkf8xgLNW", "yGaA8deiCWC3B3Tr"], "testGameMode": "zKe0JtSkkRb1AnUt", "testRegionURLMapping": ["0blB61FfBzSAO7sp", "HqAS4OyWajUE5rZF", "CRVIgwVBLyM1MnRe"], "testTargetUserIDs": ["thFXa7jj2c8WKB0D", "3ujsdOaFCbJafMfO", "KTlJXSVCtJVywePm"]}' \
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
    --body '{"durationDays": 68}' \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 4}' \
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
    --description 'YVwFp95qk10mFOkT' \
    --certname 'NoFyE5sfuXSkVQRv' \
    --file 'tmp.dat' \
    --password 'dD0mHIkwADXzNdPf' \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 93, "PSNSupportedPlatforms": ["sUWjgB715127YuGM", "EfsWPVu7fWboG0DL", "s64PEmU7YNVeaMyC"], "SessionTitle": "vEkYp82azVYtYAWY", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "o17tiqFbIgiws2wH", "XboxServiceConfigID": "mxzA6c4FjMmcam1L", "XboxSessionTemplateName": "8cQBj7parNQrTfU3", "XboxTitleID": "QdFbkhh5bDJA5yD1", "localizedSessionName": {"hU9hSdiCT3yb7eQt": {}, "RLIxNgxYgpKSFYph": {}, "CviGocoDOHAzUI9v": {}}}, "PSNBaseUrl": "jXbf0hl51kxx9lxD", "appName": "sNbAjC70BHK3cscG", "attributes": {"8SPZhEiELdQ3QbXd": {}, "xXk1HPsDETluG5KW": {}, "VrrUaj6mk2CV243I": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "m4dIJNcSVfgLWIZU", "customURLGRPC": "t67QckqqXyUfjvDx", "deployment": "z7V58fprW0vQED8x", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "3GG7KHfipMQOhsUz", "enableSecret": false, "fallbackClaimKeys": ["Uan2EdqB09hpOAns", "lWdyWeIeq2h9pILi", "kTAMV0cojV0fAD0B"], "grpcSessionConfig": {"appName": "VpzR4SwsQXRVX7bk", "customURL": "IM65qkIT30mP6Z4I", "functionFlag": 44}, "immutableStorage": true, "inactiveTimeout": 14, "inviteTimeout": 25, "joinability": "noQBQFrKWg3RSkAB", "leaderElectionGracePeriod": 1, "manualRejoin": true, "maxActiveSessions": 10, "maxPlayers": 12, "minPlayers": 13, "name": "1yiWqfKWy3UObk2k", "persistent": true, "preferredClaimKeys": ["LsBBIuCMubUaBytv", "wogplrSvuilRniGJ", "34C4RJhcqcmTvAUB"], "requestedRegions": ["b5OxONKsuw1sXmxR", "CNd2ZDzHpXDQhGna", "YifZYDlFAVTza56D"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "9BMHaKMFyRmAQc8B"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --name 'IZwUvf1eAxtemjXS' \
    --offset '49' \
    --order 'WMfPG4nRvPB8dsFy' \
    --orderBy '32Wxiq054MRDNOiw' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'vIFzlg0pkquL0w0T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name 'cEgmxWIt4dvqdznA' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 31, "PSNSupportedPlatforms": ["LKalEEL4JqwFXlYQ", "gU8T83Hr5jAWbFK7", "boe2GuK8qHlwIQbo"], "SessionTitle": "V0fcByO4bfbWT7cr", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "qf6BxW88JjyxyN67", "XboxServiceConfigID": "uAFzh7evWOoXLZ75", "XboxSessionTemplateName": "ntWE7LDyCntYzmWd", "XboxTitleID": "wMkWUCVlhNNaKBMk", "localizedSessionName": {"M3kfeJZiwJfy1aJN": {}, "7WXmOnTR6wUaMaOu": {}, "nWSmmaLoEgC32H3T": {}}}, "PSNBaseUrl": "YJuOknzA7R0Otutb", "appName": "tgpP4dMWhEvJVy7D", "attributes": {"DmimV1heCfCige6r": {}, "d4eCA9BOCAdsTddI": {}, "OcDIwyWbb7JFdNyG": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "ptfuYizm9anjpsc0", "customURLGRPC": "RFNT79waBKd6QblX", "deployment": "buqa7kA8WYYVKYCH", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "dqTvAL3tQTnZf1Be", "enableSecret": false, "fallbackClaimKeys": ["fMIuwA8YA0CpDnl6", "jVe5AdIoJkI3PvK0", "YyuKVOe1uT8e1KvR"], "grpcSessionConfig": {"appName": "16ByvhJXWcVY1GdM", "customURL": "RKbwf8EzEi0jpW5g", "functionFlag": 85}, "immutableStorage": true, "inactiveTimeout": 8, "inviteTimeout": 88, "joinability": "fn6gaWMO6puLh5bl", "leaderElectionGracePeriod": 18, "manualRejoin": true, "maxActiveSessions": 2, "maxPlayers": 76, "minPlayers": 69, "name": "LH0lBDHot3DNxJxF", "persistent": true, "preferredClaimKeys": ["LQln2KCLOnP9l6iz", "QCcaeD5KmFc1lCfH", "NCPVsZVo1c1wgoIl"], "requestedRegions": ["yJv4VlLSKH2o9B7d", "OM7adE8BHR6578rv", "3D3LQEcGMD1SCGZB"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "MAAJGHDKqQVXTBpg"}' \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'VSrTCv45UYtpxPlf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name 'MMs2AFKDdNlwTMCX' \
    --namespace $AB_NAMESPACE \
    --userId 'dnF1XkNorcjAOKDI' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'rdAYeer7O8gWvML1' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "gcXI8VrvNFEIje5c"}' \
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
    --configurationName '07Yptgv19hcCoEGd' \
    --dsPodName 'LAP2b334H9SOIqib' \
    --fromTime 'FctMoo8Zau0cf9S6' \
    --gameMode 'V133NZXzrmOWUpwJ' \
    --isPersistent 'AkipPJhr20riBOmr' \
    --isSoftDeleted '0JUxkhAIDXprnMWS' \
    --joinability 'Cxe3A6JOyKuf9Wir' \
    --limit '20' \
    --matchPool 'QfoK9puJYh76LAu5' \
    --memberID 'AItYiTnR9hY1EhWX' \
    --offset '26' \
    --order '9Gdh4O1H2lRqtPGu' \
    --orderBy '4To5DohQ6da90r9i' \
    --sessionID '6vG5W5LtjWJPDFHJ' \
    --status 'YBuUFuNBWQ1UHXcc' \
    --statusV2 'P29YtrL0APytABDd' \
    --toTime 'Qq5SZJSjG5fF9Yu1' \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"nwEyjJwkgrlzs5nU": {}, "hnMK8oeQdP63Nf6P": {}, "M8qfthbVkp6okF12": {}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["O9GGIPWOXwPzWISH", "Runiav8kh4eOs6QM", "wHFFxHaxNgj6DGzA"]}' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId '0qyYDxHccsCJF80e' \
    --body '{"ready": false}' \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'jyaJ7rs3kgTqmoMT' \
    --namespace $AB_NAMESPACE \
    --sessionId 'RrosTqy1zHg3R86d' \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'D0iFHcyTXGonyACn' \
    --namespace $AB_NAMESPACE \
    --sessionId 'Y21OztYXdCcCMwKo' \
    --statusType 'MeR5ynYHs9mQvFdA' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '7' \
    --order 'XT2p6fHxyydFYjIS' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted 'eJvpGzwgBcP8K6HX' \
    --joinability 'y8EbHc8EbPWXDaPK' \
    --key 'BXIY29iohFqYE1bf' \
    --leaderID 'yhOwexZonORuo8Lw' \
    --limit '11' \
    --memberID '8iCJ2XoMgI6aKZGd' \
    --memberStatus 'uaEilx4kLrYOS2p7' \
    --offset '31' \
    --order 'Dgs5LHbXn7TNR4df' \
    --orderBy 'bHejRjIj9GjQxeuv' \
    --partyID '5Hy9KJfQI3m7nP2J' \
    --value 'lRG8FeaCBTdSpZnW' \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'AdminGetPlatformCredentials' test.out

#- 34 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "aV4PsKbzzRS6ftbE", "clientSecret": "XMewuo9BMw7OJDVy", "scope": "8vRioGCGsijLhpiY"}}' \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdatePlatformCredentials' test.out

#- 35 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlatformCredentials' test.out

#- 36 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --userId 'jBprvep6OUSDktOn' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentPlayer' test.out

#- 37 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --userId '2Gbr4kdHhktEBE4J' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetRecentTeamPlayer' test.out

#- 38 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'cxVP4amb0yJvFxJY' \
    > test.out 2>&1
eval_tap $? 38 'AdminReadSessionStorage' test.out

#- 39 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'rvdKoNeenZ7pdm3x' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteUserSessionStorage' test.out

#- 40 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'pt20qGQglr97hqB8' \
    --userId 'jkNRXA6zGOsmoZWD' \
    > test.out 2>&1
eval_tap $? 40 'AdminReadUserSessionStorage' test.out

#- 41 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'umnBUFdu5TT87LKf' \
    > test.out 2>&1
eval_tap $? 41 'AdminQueryPlayerAttributes' test.out

#- 42 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'wT3Xn3Pw2klKRy00' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerAttributes' test.out

#- 43 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'rMVZ8QiDtRNJzzxt' \
    > test.out 2>&1
eval_tap $? 43 'AdminSyncNativeSession' test.out

#- 44 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "gefZEmSddnW6cX5u", "attributes": {"0Jxas1z2cuSPXMz3": {}, "hZMc9XeHJWXTLA05": {}, "OyFKltmNWp6Rzvlw": {}}, "autoJoin": true, "backfillTicketID": "IEwayYMyun0E43v4", "clientVersion": "xwrqBRimkRHiWk7b", "configurationName": "8TTbRvxm6ulCbMUE", "customURLGRPC": "ahlyig1dF6g1T3RU", "deployment": "pTpmcXmWXwRept98", "dsSource": "9VtOP7xnrmhODUGh", "fallbackClaimKeys": ["VP1vIajf70cRmQPv", "tnUEp2SYrETvupn1", "olLZgSTemkyB4ULu"], "inactiveTimeout": 18, "inviteTimeout": 46, "joinability": "lDIKsVlnR1SBMlax", "matchPool": "UUwJsu8iA6OWSJJR", "maxPlayers": 58, "minPlayers": 28, "preferredClaimKeys": ["zieQFebpR3yg3P80", "50sA9vMj2gb6iYHr", "wnKSyeTqIyhW8flU"], "requestedRegions": ["MF01G5G0KCK2G1V4", "QHanko4IXFwLBb9g", "5uJE798Cw2jmOVtJ"], "serverName": "xgPyVcURtxa5r99r", "storage": {"leader": {"edshpLMUbDVRFhzc": {}, "3WnCE5m7LDaaw530": {}, "HTcMctgzpagirnz4": {}}}, "teams": [{"parties": [{"partyID": "Fhs9fLdiVvqgxJWL", "userIDs": ["sTRPBpNxRtC26dDc", "a43UQRowVM1DEAsd", "xP4G7uqT1l4QH9cM"]}, {"partyID": "ECtIoxD7M5yS1kEm", "userIDs": ["wdeJrNaYBd4nq49o", "macNgQQoRjXFG6Ja", "kAiwAuyHqaFG1EAT"]}, {"partyID": "yvTn20nwFz9w7u5Z", "userIDs": ["t5eh13IJsDAqoYyR", "R9Qq9OFzPdF81hOS", "eQQIawHTd2mTGujc"]}], "userIDs": ["3ff99G0Ett7wHtls", "WyAyNQMXAqzhwKg5", "nzFqZwtL3Kb7DcqT"]}, {"parties": [{"partyID": "azzPFc8zACC7nFnz", "userIDs": ["27Vopt9R6JwZ3HIR", "loXdl37G747KjzPf", "0zrzL1DCAVewhfH7"]}, {"partyID": "n9glmcuSFWSPAwzi", "userIDs": ["0WWpAyttfQUA6oG4", "4pRi9HgEt7TWAYDV", "lsZ5CnQrE21ZkwrM"]}, {"partyID": "dThMyzDdFBjtvvLJ", "userIDs": ["boUFF5xiCOcsW9Pu", "om1SZjTTj7gO2Tqj", "Prg6ja1U6TNNiBEv"]}], "userIDs": ["M0dcksOlAni3TadO", "aRku7jjbJrn7eff5", "PQhiAXcmuCdjjHh3"]}, {"parties": [{"partyID": "slWP7ojddHAQj7Hf", "userIDs": ["HfnBeCLx35krahAJ", "nYVlAIjopZA3UFUs", "TvKX4TNOf8J43WWr"]}, {"partyID": "tya8lugvJiKLfztR", "userIDs": ["PuI8DnfoxL8sXAMZ", "MChtkpNttgG4BRcd", "0IkiHO2yvKPwzDPa"]}, {"partyID": "eeY4mQDVEsN0EbxV", "userIDs": ["HOjIhr0klyM6Q2qv", "jNPN0hyyRuzJOE4i", "YThx7QnuEYjvveyQ"]}], "userIDs": ["fcGohkpCvOVVUZmF", "hmFwExuvM7ggLo5b", "dj51G9FrH4jkpxrs"]}], "textChat": true, "ticketIDs": ["BxtULJFCKj41MXeB", "JJPxWDpUrYY3NVIS", "lJSc8MJBJrhnWfrd"], "tieTeamsSessionLifetime": false, "type": "8I5vbTWppQCrQh02"}' \
    > test.out 2>&1
eval_tap $? 44 'CreateGameSession' test.out

#- 45 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"tgowAJ6r1ru0F74k": {}, "oVWTvKALZU8sNTCe": {}, "6HRgpyInP8lqb7zG": {}}' \
    > test.out 2>&1
eval_tap $? 45 'PublicQueryGameSessionsByAttributes' test.out

#- 46 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "s1vYJLtFu3N21xmb"}' \
    > test.out 2>&1
eval_tap $? 46 'PublicSessionJoinCode' test.out

#- 47 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName '3aR2eYh4YSQlsvla' \
    > test.out 2>&1
eval_tap $? 47 'GetGameSessionByPodName' test.out

#- 48 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 's3evEgEfoI7KG7P2' \
    > test.out 2>&1
eval_tap $? 48 'GetGameSession' test.out

#- 49 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'uwiv3BoMser1pdq3' \
    --body '{"attributes": {"zYBC9zs36Ay8m7bu": {}, "BUeq7oul1lwbxg4J": {}, "QhPqMyyiIJrx5CKn": {}}, "backfillTicketID": "GYIKigtB2Gjvgztn", "clientVersion": "qlPuR1T3PdBoKbLV", "deployment": "0YlnOzsLD0nQXnN6", "fallbackClaimKeys": ["75QL8bXqwzfBJIHg", "TxsZfXdg2FE5C0O4", "3xhU12q97VOssRDu"], "inactiveTimeout": 56, "inviteTimeout": 97, "joinability": "Fv6IrWsjaK6XxFVO", "matchPool": "LvUTs1kaPM38JTpM", "maxPlayers": 1, "minPlayers": 61, "preferredClaimKeys": ["rd1rqcQ9afP89l3d", "4LWNcGsMyKRHgdMe", "GARaSO515WREz0Yx"], "requestedRegions": ["O20BrLwkJKRGWL98", "CkYC8BmBw7aIYraQ", "vGn7KEOMe5DOm3Ci"], "teams": [{"parties": [{"partyID": "OSIOQeJcOpk79YGe", "userIDs": ["li8gYnaN6rNE5Pxi", "ZIQXl1WZv4N9K6la", "7DeteXcrFGopN5VC"]}, {"partyID": "p9JuyXl0VT4Y6Sz1", "userIDs": ["5AuQVKXMHOHIsKIU", "bCnpPGQQqpAzfNtl", "ee2ELpONTiJbwP2V"]}, {"partyID": "QQNl011YVmXXhIlq", "userIDs": ["4y22IInsrpZO4OWn", "CcZaXFHwgpHPpoTV", "gHk8sLt1osjL8JmW"]}], "userIDs": ["S4cOi9JAGYOKu65Z", "5CIoMyYKnzjtujsZ", "HWnbljEdQSejj9Ab"]}, {"parties": [{"partyID": "r5ywd7ycdpMw9e4Q", "userIDs": ["NgkEMyrmB9yvvz2a", "jvPIuQ2UIz6y0HgN", "r4APqxCXs5qnzTig"]}, {"partyID": "dOLFT7XRl10wzh1b", "userIDs": ["zOFPjvQBldSsuApT", "qGHtHRaNNP7fc2RD", "I3hrROydLf859pyF"]}, {"partyID": "cPjZSSjs2HRC7CZe", "userIDs": ["jGXvWO1Phn7euTs5", "K7WPPT7Pe4ZXXwaB", "bMRV99dCJWXVz7bG"]}], "userIDs": ["D9Lw8XsS17m5HQ1h", "wUENfBQQh8dO8PaZ", "aYhHLyNJi9VstGfJ"]}, {"parties": [{"partyID": "T1KSql4pTa52BHkx", "userIDs": ["N28OZxXRlwEw6iIT", "9Xj4XHagzZPOIBWg", "gvi0Rg4I4jkUXmX9"]}, {"partyID": "sx7kcfa9tByDpjO0", "userIDs": ["n84cCiNv4J3Y6xYz", "OpmI4q3CCd2jCDlJ", "5AvFP6JrbTNhJnwz"]}, {"partyID": "uK6a6Sw7hTyZiDIQ", "userIDs": ["VQuS0tbyD01ZnbVw", "3VgnqBpnQwE2xLZE", "enWU6MRWpMQn0Db1"]}], "userIDs": ["NcmsjLxZGeUgZj0B", "00Q0ZefK8GU5ab36", "hRO3gvFzTc2ckXht"]}], "ticketIDs": ["1rf5R4zAods3ezWv", "OEA4jqeJMjKz63ZM", "P1Gxx9naWDn61H9s"], "tieTeamsSessionLifetime": false, "type": "kcLs01CM83xXu4oj", "version": 58}' \
    > test.out 2>&1
eval_tap $? 49 'UpdateGameSession' test.out

#- 50 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'qPmG1NP3JC6hUH91' \
    > test.out 2>&1
eval_tap $? 50 'DeleteGameSession' test.out

#- 51 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'kIjLihBtk5sQfi9k' \
    --body '{"attributes": {"wFwJrjtMkLbG8om1": {}, "SrycewujMz2dH4qh": {}, "ocHY8ZX01w8FidMR": {}}, "backfillTicketID": "3MDdKm5ieEcUOKGV", "clientVersion": "Gi0V4XjB6UOLqvSt", "deployment": "udEaDQ6PJ3pTLdXj", "fallbackClaimKeys": ["OKohaET3LAA7t46d", "ybIPT20JfAHSzOzK", "wiAEPSNXjmMByZpX"], "inactiveTimeout": 10, "inviteTimeout": 42, "joinability": "a70OK3lsg2lS7ROY", "matchPool": "sjNZ5JlJ1ldT7JXG", "maxPlayers": 71, "minPlayers": 37, "preferredClaimKeys": ["3sBlBsXnZE7GgCH7", "iO2hI0wMAMlKOcy7", "4sCTr2rCfdh6uo00"], "requestedRegions": ["8X7FhcAofVCygMjl", "T7L9doXAk8i93nbx", "Qf9plcLPI1hucGJC"], "teams": [{"parties": [{"partyID": "MZNCcHbdhT3JxA9r", "userIDs": ["rPk9aerfUDWdZ5pW", "EWtxFlblUUg4PhXF", "7llAVOlnrUfTd70N"]}, {"partyID": "r97w39Te3CSyaUhB", "userIDs": ["jG3REmOof5BExoIe", "VgT5CCymf3Zy4XNe", "fsckJHHdiqTN3VWb"]}, {"partyID": "yktGfpr8NffS3x5h", "userIDs": ["ZVKWlGOjKo3kEUUG", "AVmLFQyde3FTVwvK", "Ce9gCBmNGEJgMxCX"]}], "userIDs": ["tKEtDVZpBGUEkiGj", "JDUj15m0oDbPwzJH", "uSbHzXT4Vz8mNhTL"]}, {"parties": [{"partyID": "Y10w7vOjrgiXpSj8", "userIDs": ["06VyonNJQvIxLTEW", "p1BESwCcBTNtN9BK", "C2Zz4X0esXX9tTFI"]}, {"partyID": "zzMlLAXp7ui3PWw6", "userIDs": ["dI3KOrLcmRXcKMbM", "Crr0RTO9pHXvwvxT", "QXKiFYu2eUhRFCcN"]}, {"partyID": "T4toCeikNYUi482u", "userIDs": ["CEWiAA5QwxKKSzoH", "d0HjEnu1tw4oxPCf", "aY9RJx8j26wixAtb"]}], "userIDs": ["Jz2nkLHM6Kcj4rRG", "JBCJ9wLN2zHd5Pju", "fTWrvKqCk4xcIPyr"]}, {"parties": [{"partyID": "zeXhXgDiuUmzPNd7", "userIDs": ["q4xaUDXipcRPr9tY", "BUIzrLEQioTCTms6", "QVmYyjg1Thhrp3oO"]}, {"partyID": "pscoN4zU1NX7QAWp", "userIDs": ["269XLizx7Oi7ifnj", "G3vbbPUevDAjzpnX", "Wcb4nM2TCNSbgCDG"]}, {"partyID": "XpTCKpJOTkxp9g9U", "userIDs": ["BcCVxXl9tEALmwyl", "wlTLZHgfOEOi1M5c", "25ffAxp3rNU4nhd6"]}], "userIDs": ["GNbgsiuCcdeUTZuX", "NIziC5chzqDIxl42", "zNkkQc31B2b9fm8x"]}], "ticketIDs": ["EHuJFyWAdm0nmlfG", "7v4dirK7C0If464D", "wA5ZH69OBHi1uKRW"], "tieTeamsSessionLifetime": true, "type": "JjKHU9S4TileWq7j", "version": 41}' \
    > test.out 2>&1
eval_tap $? 51 'PatchUpdateGameSession' test.out

#- 52 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'qzUJinGFvp80Eojx' \
    --body '{"backfillTicketID": "OUfH0R0S0IxeGgvi"}' \
    > test.out 2>&1
eval_tap $? 52 'UpdateGameSessionBackfillTicketID' test.out

#- 53 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'I8o9CmGVAG2V8spz' \
    > test.out 2>&1
eval_tap $? 53 'GameSessionGenerateCode' test.out

#- 54 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'h0IStW7qmP5k5aiV' \
    > test.out 2>&1
eval_tap $? 54 'PublicRevokeGameSessionCode' test.out

#- 55 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'xD1L388OeEdWyWj4' \
    --body '{"platformID": "fC114j66fwKM8CpB", "userID": "o6FgGyXAZXh2vL26"}' \
    > test.out 2>&1
eval_tap $? 55 'PublicGameSessionInvite' test.out

#- 56 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'xByKMxr1uPeNotEk' \
    > test.out 2>&1
eval_tap $? 56 'JoinGameSession' test.out

#- 57 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'H5t2WMccq2pW64q5' \
    --body '{"leaderID": "8OmxxbLYhjQR7ZbT"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicPromoteGameSessionLeader' test.out

#- 58 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'a7P4HA62ov5SIB1U' \
    > test.out 2>&1
eval_tap $? 58 'LeaveGameSession' test.out

#- 59 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId 'mFb7cwOSVlEAaOiF' \
    --namespace $AB_NAMESPACE \
    --sessionId 'OC5eUSL3Dxz6ByvL' \
    > test.out 2>&1
eval_tap $? 59 'PublicKickGameSessionMember' test.out

#- 60 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'PVnwv7ybWPU1Sqdf' \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionReject' test.out

#- 61 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '9zkiq3Faty2A8EXv' \
    > test.out 2>&1
eval_tap $? 61 'GetSessionServerSecret' test.out

#- 62 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'YEq4v7PdOUUP8roM' \
    --body '{"additionalMembers": [{"partyID": "OVtYEaWttombBmy6", "userIDs": ["58Rb9tAreUPm3EHP", "QyHiLmuzDIMNuSZv", "U47lwcFTVfiSf6Y5"]}, {"partyID": "gOjBPKBX1GTrPTkZ", "userIDs": ["75dOaYlbx475O4Gg", "JLK0RcaJHgGNrcnw", "FIskE9hcz6HCTVwJ"]}, {"partyID": "hlFCpLe2czESnnAw", "userIDs": ["2pnX6vrCU0LCzqWm", "lqiLz9G8dY86N59L", "Pua9OMiro5nojp9W"]}], "proposedTeams": [{"parties": [{"partyID": "F9ENtnOzmgtGzWCt", "userIDs": ["9PGRQb7p7cIF7Tpt", "eNlncN0izHJtI6YO", "uAvauxsElfXzMlfC"]}, {"partyID": "6T3iJ41EfTgX6nm3", "userIDs": ["AmwncfVmmsxKoMYX", "myIvQP7NtUSEmGLR", "E7Ub0Y4HQo0mtLZM"]}, {"partyID": "6MSxslr2AgFbxTt0", "userIDs": ["wo5M1wsPOCZcCXFi", "CZRQsQCE485HqBsL", "Pri9XLq1Mspl1gwl"]}], "userIDs": ["3MtcZXSISkdpJnsT", "frjHibnGY4QoYYM1", "aD5bsdU9VrMGkXak"]}, {"parties": [{"partyID": "QBvGaOZ2PAdYau9V", "userIDs": ["TahdpCzg17ji0RtY", "X7U9qRNNA0VJSR4S", "H6olQeoPuxYqAbnQ"]}, {"partyID": "VEg3hD1BtNjwbmVQ", "userIDs": ["191J8QXP4AH3wH7t", "BWvXniCES8cRPsa4", "1lb5NojU8SQ33maY"]}, {"partyID": "BtgwWodnKKngKB5t", "userIDs": ["CxomDz5uk65ZM7fn", "T8Pt8Ok4Xql0W06L", "K3U4YtXp5n0BMYXq"]}], "userIDs": ["TYbrok9dEWvVfAyo", "hTAonfsJlsT6bPBC", "vFo47ZWkgNgC8eMQ"]}, {"parties": [{"partyID": "ek9Gla7jT3hfJL7L", "userIDs": ["xzO1fXmF2CSEIS2O", "BH277gtmYksjZGlF", "N5dbSKOQApJCXEQT"]}, {"partyID": "5oYRcoGxhfu78mfz", "userIDs": ["AFXNRi8thkzYEqsa", "HHzfSdpyIbCZXvVJ", "gXwoBpSDqG7ISIkk"]}, {"partyID": "0rVLQzoPxcgDJP0l", "userIDs": ["JkI0Xa3QhwEN5H8c", "KvM8XoXSWj9hayJ4", "fSpAkZjvyebg6duF"]}], "userIDs": ["cI996HIcrL5fPWBz", "y1FzOITELf48asrx", "OjwP8UEKiipltrgd"]}], "version": 47}' \
    > test.out 2>&1
eval_tap $? 62 'AppendTeamGameSession' test.out

#- 63 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'TG3ehYC1r8WaiAvH' \
    --userId 'uKID2G7pF6ZDYfpB' \
    > test.out 2>&1
eval_tap $? 63 'PublicGameSessionCancel' test.out

#- 64 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "X8bM74Y7OMAdXzir"}' \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoinCode' test.out

#- 65 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'CRKmKZemTfRVgBfN' \
    > test.out 2>&1
eval_tap $? 65 'PublicGetParty' test.out

#- 66 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'JaGez3vz75W9gbBp' \
    --body '{"attributes": {"iHFJfGch7WXmXLtg": {}, "oTzjIcwOJeqGFR6T": {}, "I92IgVDRFwjJYFVp": {}}, "inactiveTimeout": 46, "inviteTimeout": 31, "joinability": "a8dz2X3uGEo6YNCg", "maxPlayers": 2, "minPlayers": 74, "type": "aME0UM40NOCKgKQC", "version": 66}' \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateParty' test.out

#- 67 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'wbxvs2xgm1BLwSXU' \
    --body '{"attributes": {"oCxvV15IXR42DNJO": {}, "9kq2ZORWriY1Uf23": {}, "R21y750GWhN8mB0v": {}}, "inactiveTimeout": 22, "inviteTimeout": 4, "joinability": "RUWOBcXDV4Aa5m7y", "maxPlayers": 33, "minPlayers": 24, "type": "y7pFCDQL6lEYcrlV", "version": 91}' \
    > test.out 2>&1
eval_tap $? 67 'PublicPatchUpdateParty' test.out

#- 68 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '1T69iwHRmNZLv8p8' \
    > test.out 2>&1
eval_tap $? 68 'PublicGeneratePartyCode' test.out

#- 69 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'SiHlJMDnflI7bMsr' \
    > test.out 2>&1
eval_tap $? 69 'PublicRevokePartyCode' test.out

#- 70 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '7fdfXZar48DCdUIg' \
    --body '{"platformID": "gsBDy0MZpje7olGA", "userID": "Q1qd4oprpeuRGGuG"}' \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyInvite' test.out

#- 71 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId '2V06FOp0N4I9SwiB' \
    --body '{"leaderID": "DcMyRIBMCDzxv4Sy"}' \
    > test.out 2>&1
eval_tap $? 71 'PublicPromotePartyLeader' test.out

#- 72 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId '5K2k65ua9lUyjeeO' \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoin' test.out

#- 73 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'iOaVS3OxbVzgKBlw' \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyLeave' test.out

#- 74 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId 'hfJCYphArpPnbtni' \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyReject' test.out

#- 75 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId 'cnRdLG2KESB3s3Fk' \
    --userId 'ovHVlCOBpEbVNuA2' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyCancel' test.out

#- 76 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId 'BEfrhbfLOpEBb331' \
    --userId 'Ubx4gC54LBFwywUF' \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyKick' test.out

#- 77 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"FIRZdjeEDtzso4ZX": {}, "boL1HUqD6LraMRWq": {}, "HKS5bXdHq44v7sb8": {}}, "configurationName": "gvky0h6EX4u4joy1", "inactiveTimeout": 51, "inviteTimeout": 47, "joinability": "ITQSrBOTQAQygWjB", "maxPlayers": 51, "members": [{"ID": "KdEVQyQhW7tU3f78", "PlatformID": "KSZ5s31iEHVp5WSg", "PlatformUserID": "HimMW3DtSz0HrbJN"}, {"ID": "YazEQdfhWIoK9B4P", "PlatformID": "o42BtptomOz0bSgz", "PlatformUserID": "WWU3akCGLvRkGffa"}, {"ID": "o5VViYPOnEpsl1px", "PlatformID": "Ze8pT6Uhup4qih47", "PlatformUserID": "nTfQhWc6mw2RsqVl"}], "minPlayers": 3, "textChat": false, "type": "bH2fctoWfpVJavKW"}' \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateParty' test.out

#- 78 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 78 'PublicGetRecentPlayer' test.out

#- 79 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 79 'PublicGetRecentTeamPlayer' test.out

#- 80 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'nWVPujzSo2GEbYTL' \
    --body '{"00kuqksMj2qV4e1i": {}, "1irwqUc1gtOd3jLv": {}, "NNIYQifLkbEjTUSB": {}}' \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertSessionStorageLeader' test.out

#- 81 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'beC8LrGAVx2uhR8H' \
    --userId '4PMY6ghtoMs2gHS3' \
    --body '{"xBvMkEE485upaQgz": {}, "zcVePvHDbzanqABA": {}, "fFIgjd04Kth1BKoz": {}}' \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdateInsertSessionStorage' test.out

#- 82 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["PCx2tILxattMupf2", "Uru4a7lOkwIRbZib", "OpdRM47lu1e3zyAk"]}' \
    > test.out 2>&1
eval_tap $? 82 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 83 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPlayerAttributes' test.out

#- 84 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "QnEpR8KcH8b9HJZ2", "data": {"1sg6fJfmloepfGqv": {}, "j8gyK26LpIukDTgK": {}, "tpBl3O0MPSlFa07y": {}}, "platforms": [{"name": "ky86jxsf5Dn1xQaG", "userID": "2EJjVlBnYatCeSbp"}, {"name": "8BY7t9A4h6ic25YM", "userID": "pLnMHkjYHSbapM7w"}, {"name": "bRfYlQTF5TceTImL", "userID": "ITCc5CCwyaO28VAW"}], "roles": ["XP8moXDoEzMPqBeq", "QbRlbaBihW42b0gn", "blyGcDMwHH0tFhJt"], "simultaneousPlatform": "r6BTZw25xMFEGHgt"}' \
    > test.out 2>&1
eval_tap $? 84 'PublicStorePlayerAttributes' test.out

#- 85 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerAttributes' test.out

#- 86 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'azfykdj3sPj9gemv' \
    --orderBy '0kSrOaOxOCJmGQ7k' \
    --status 'AYY7CbQAdbKAVIYA' \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryMyGameSessions' test.out

#- 87 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'mz1hD0Slmzhk9Apc' \
    --orderBy '9bWBfyOxYLlCGqIC' \
    --status 'Vjuwlui4uuHhuVxl' \
    > test.out 2>&1
eval_tap $? 87 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE