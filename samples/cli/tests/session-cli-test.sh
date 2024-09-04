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
echo "1..98"

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

#- 3 PprofHandler
samples/cli/sample-apps Session pprofHandler \
    > test.out 2>&1
eval_tap $? 3 'PprofHandler' test.out

#- 4 AllocsHandler
samples/cli/sample-apps Session allocsHandler \
    > test.out 2>&1
eval_tap $? 4 'AllocsHandler' test.out

#- 5 BlockHandler
samples/cli/sample-apps Session blockHandler \
    > test.out 2>&1
eval_tap $? 5 'BlockHandler' test.out

#- 6 CmdlineHandler
samples/cli/sample-apps Session cmdlineHandler \
    > test.out 2>&1
eval_tap $? 6 'CmdlineHandler' test.out

#- 7 GoroutineHandler
samples/cli/sample-apps Session goroutineHandler \
    > test.out 2>&1
eval_tap $? 7 'GoroutineHandler' test.out

#- 8 HeapHandler
samples/cli/sample-apps Session heapHandler \
    > test.out 2>&1
eval_tap $? 8 'HeapHandler' test.out

#- 9 MutexHandler
samples/cli/sample-apps Session mutexHandler \
    > test.out 2>&1
eval_tap $? 9 'MutexHandler' test.out

#- 10 Profile
samples/cli/sample-apps Session profile \
    > test.out 2>&1
eval_tap $? 10 'Profile' test.out

#- 11 SymbolHandler
samples/cli/sample-apps Session symbolHandler \
    > test.out 2>&1
eval_tap $? 11 'SymbolHandler' test.out

#- 12 ThreadcreateHandler
samples/cli/sample-apps Session threadcreateHandler \
    > test.out 2>&1
eval_tap $? 12 'ThreadcreateHandler' test.out

#- 13 TraceHandler
samples/cli/sample-apps Session traceHandler \
    > test.out 2>&1
eval_tap $? 13 'TraceHandler' test.out

#- 14 GetHealthcheckInfoV1
samples/cli/sample-apps Session getHealthcheckInfoV1 \
    > test.out 2>&1
eval_tap $? 14 'GetHealthcheckInfoV1' test.out

#- 15 AdminGetLogConfig
samples/cli/sample-apps Session adminGetLogConfig \
    > test.out 2>&1
eval_tap $? 15 'AdminGetLogConfig' test.out

#- 16 AdminPatchUpdateLogConfig
samples/cli/sample-apps Session adminPatchUpdateLogConfig \
    --body '{"logLevel": "info"}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPatchUpdateLogConfig' test.out

#- 17 AdminGetDSMCConfigurationDefault
samples/cli/sample-apps Session adminGetDSMCConfigurationDefault \
    > test.out 2>&1
eval_tap $? 17 'AdminGetDSMCConfigurationDefault' test.out

#- 18 AdminListEnvironmentVariables
samples/cli/sample-apps Session adminListEnvironmentVariables \
    > test.out 2>&1
eval_tap $? 18 'AdminListEnvironmentVariables' test.out

#- 19 AdminListGlobalConfiguration
samples/cli/sample-apps Session adminListGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 19 'AdminListGlobalConfiguration' test.out

#- 20 AdminUpdateGlobalConfiguration
samples/cli/sample-apps Session adminUpdateGlobalConfiguration \
    --body '{"metricExcludedNamespaces": ["ogb9McJZt8ifVZdP", "x6I6BherRo4cZvCM", "ScNumzReyLhvLAUg"], "regionRetryMapping": {"DlD5FqfVv0rvwGcT": ["pHBXOvJFmVGvVSWq", "m2LIOy5srnbdMQL8", "tNRPGratfvTh7jV3"], "cZWYPynBybCz87kZ": ["rnSxbCzWrdndAWua", "bo3sJWuI610L0bMu", "ByRHfYwyuS5wowTn"], "UHaVWoIoH46gBw1m": ["ouiytsFlcDMIMC3a", "CwiIhrIs2AZi30Bx", "TNfuC0w036irUvjA"]}, "regionURLMapping": ["Ew6eYT4hQC7ALdpm", "yy4HHNov0MG0kd0D", "SZtBONWajFdWCHxR"], "testGameMode": "vgrpiGI7fB8estEi", "testRegionURLMapping": ["R9GQW3R9UzSeVLrx", "WPotnexrgQ91wvRZ", "5wwXqNsRSX7QENpF"], "testTargetUserIDs": ["KC8aNbZ9ZuPlwKjz", "XGJtJOyPqrqRxoZo", "lyDqwmrr1xAMhq5F"]}' \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateGlobalConfiguration' test.out

#- 21 AdminDeleteGlobalConfiguration
samples/cli/sample-apps Session adminDeleteGlobalConfiguration \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteGlobalConfiguration' test.out

#- 22 AdminGetConfigurationAlertV1
samples/cli/sample-apps Session adminGetConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetConfigurationAlertV1' test.out

#- 23 AdminUpdateConfigurationAlertV1
samples/cli/sample-apps Session adminUpdateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 57}' \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateConfigurationAlertV1' test.out

#- 24 AdminCreateConfigurationAlertV1
samples/cli/sample-apps Session adminCreateConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    --body '{"durationDays": 70}' \
    > test.out 2>&1
eval_tap $? 24 'AdminCreateConfigurationAlertV1' test.out

#- 25 AdminDeleteConfigurationAlertV1
samples/cli/sample-apps Session adminDeleteConfigurationAlertV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteConfigurationAlertV1' test.out

#- 26 HandleUploadXboxPFXCertificate
samples/cli/sample-apps Session handleUploadXboxPFXCertificate \
    --namespace $AB_NAMESPACE \
    --description 'dkw1ueIrnNRfDFR6' \
    --certname '1MBU5M90Rpv86fki' \
    --file 'tmp.dat' \
    --password 'r4JPv2tBcxn7X1jQ' \
    > test.out 2>&1
eval_tap $? 26 'HandleUploadXboxPFXCertificate' test.out

#- 27 AdminCreateConfigurationTemplateV1
samples/cli/sample-apps Session adminCreateConfigurationTemplateV1 \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 73, "PSNSupportedPlatforms": ["Tui6MuSPcQkWVCRM", "vkAwwISw2P3wi4uQ", "FF3I08sr3y2t2aGe"], "SessionTitle": "6b6RfYJbRjYYTaGU", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "9yYVLVEmFyRteA3Q", "XboxServiceConfigID": "1UG5iNfYv3esyUXE", "XboxSessionTemplateName": "9hbMOjSF8oV4ZQhw", "XboxTitleID": "95dV5vEAzfmD9BtL", "localizedSessionName": {"IOOZLOVQuRGgtuE0": {}, "pM3zkbm2Vc5BI9SY": {}, "Ynjcw8txsgvJPeFA": {}}}, "PSNBaseUrl": "wB23znkIfHs9s3jZ", "appName": "bP7OKZ4xI4IW9sQx", "attributes": {"AZlX5fM0TtfZvbVR": {}, "WfMQC0Kx6D8IXQDA": {}, "qGiZEZa3X91qbaiV": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "Dm8Qw74pvNqCJiEy", "customURLGRPC": "ecf4ZGnannltbM0q", "deployment": "TcCJjV4qJvCKmTHE", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "enLbTBNETcdHElww", "enableSecret": false, "fallbackClaimKeys": ["WYsMGMpw7LOpTrVv", "lZd8zdVcUOzjolTU", "EuqGWtMQiMba6hLF"], "immutableStorage": true, "inactiveTimeout": 25, "inviteTimeout": 30, "joinability": "6iyl5wyJ7E3yIAd5", "leaderElectionGracePeriod": 79, "manualRejoin": true, "maxActiveSessions": 0, "maxPlayers": 12, "minPlayers": 62, "name": "x9Qmd76o6etPnck9", "persistent": true, "preferredClaimKeys": ["S8VNfQT520VGhKK1", "bQlqp8EHKbhnlBbF", "PVzmMWs3RQDWU9sh"], "requestedRegions": ["Rz65D3klSzwvzJWD", "Fzbe3NqQMvIWNlsS", "gmK9nXDo26WpV9By"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "7XlT5gjCwOYnC3dR"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateConfigurationTemplateV1' test.out

#- 28 AdminGetAllConfigurationTemplatesV1
samples/cli/sample-apps Session adminGetAllConfigurationTemplatesV1 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --name 'P0k4WrYiXeXLNlWt' \
    --offset '24' \
    --order 'LPaWEmibGojExThF' \
    --orderBy 'JnnZmHcXp0o0d74k' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetAllConfigurationTemplatesV1' test.out

#- 29 AdminGetConfigurationTemplateV1
samples/cli/sample-apps Session adminGetConfigurationTemplateV1 \
    --name 'jataKDfmu9mrKnsN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'AdminGetConfigurationTemplateV1' test.out

#- 30 AdminUpdateConfigurationTemplateV1
samples/cli/sample-apps Session adminUpdateConfigurationTemplateV1 \
    --name '6IwiPXXiLmyX5nqC' \
    --namespace $AB_NAMESPACE \
    --body '{"NativeSessionSetting": {"PSNServiceLabel": 92, "PSNSupportedPlatforms": ["bqUscWTDvFlTvagP", "dblgqfUfAjvUigIY", "fdKMuzrBGuhZ9vOC"], "SessionTitle": "9BYtAVXloyAlHb7O", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "XcPSbruNrbODJK9o", "XboxServiceConfigID": "9kfRFJVkRShD045z", "XboxSessionTemplateName": "slFiOeczxtthINV6", "XboxTitleID": "LH0v4LgNOAbv5TNY", "localizedSessionName": {"P7TpAB51H7dXqIZG": {}, "toKnkwvWRofDOr5i": {}, "Q4JsokJVES4bOUsq": {}}}, "PSNBaseUrl": "m5gNDJDBDJ8o22J1", "appName": "o6cZWTKBznXrxfVp", "attributes": {"h1b96y2vLjVpO6VF": {}, "z3eSxRw92GHCP3c8": {}, "Veuq3tCII0HPN80E": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "KDlBsKM5oN1AWR6T", "customURLGRPC": "78uy7QhhOEroitAG", "deployment": "5MJ9ZUtgu54CiyyF", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "KiIlI0ElxNyPmNuE", "enableSecret": false, "fallbackClaimKeys": ["xPUEbA1avygVfpOm", "0BEz1s3ptGwOsdKN", "hK3wrpalO89yz9DE"], "immutableStorage": true, "inactiveTimeout": 70, "inviteTimeout": 33, "joinability": "Qkp1xN6je4gwff5w", "leaderElectionGracePeriod": 61, "manualRejoin": true, "maxActiveSessions": 72, "maxPlayers": 37, "minPlayers": 12, "name": "g0F2xpjxuvaWV2P8", "persistent": true, "preferredClaimKeys": ["HMyQvn0r4KpHzoem", "woboDNiryuk8Qeo3", "ZoNg1X6mwOzmtBuO"], "requestedRegions": ["sJjxY5mafF3gFkQI", "1dJja4VtWexrEMuE", "t2uVFtTSFNWQQZlL"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "HmveeXmpOupFHiZc"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateConfigurationTemplateV1' test.out

#- 31 AdminDeleteConfigurationTemplateV1
samples/cli/sample-apps Session adminDeleteConfigurationTemplateV1 \
    --name 'kQZx6bVD8T22dD3c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteConfigurationTemplateV1' test.out

#- 32 AdminGetMemberActiveSession
samples/cli/sample-apps Session adminGetMemberActiveSession \
    --name '9tf2hqBSCeig2n4q' \
    --namespace $AB_NAMESPACE \
    --userId 'fbdbrPKrt3Bkhgxu' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetMemberActiveSession' test.out

#- 33 AdminReconcileMaxActiveSession
samples/cli/sample-apps Session adminReconcileMaxActiveSession \
    --name 'uAgXmjCsIfmOILY4' \
    --namespace $AB_NAMESPACE \
    --body '{"userID": "WsrJea6aRlNv4AqC"}' \
    > test.out 2>&1
eval_tap $? 33 'AdminReconcileMaxActiveSession' test.out

#- 34 AdminGetDSMCConfiguration
samples/cli/sample-apps Session adminGetDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 34 'AdminGetDSMCConfiguration' test.out

#- 35 AdminSyncDSMCConfiguration
samples/cli/sample-apps Session adminSyncDSMCConfiguration \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 35 'AdminSyncDSMCConfiguration' test.out

#- 36 AdminQueryGameSessions
samples/cli/sample-apps Session adminQueryGameSessions \
    --namespace $AB_NAMESPACE \
    --configurationName 'Wq3b6qKcdFwJGeWQ' \
    --dsPodName 'Jj7mapZWZ3WKTGxW' \
    --fromTime 'GMewNtm1NteCx2TB' \
    --gameMode 'ENZGzx5VarH8kSUO' \
    --isPersistent 'anMllz4jYYEPJq8F' \
    --isSoftDeleted 'G2YU4FfVLXJqnhCx' \
    --joinability 'DrCQXQBR3LxooE95' \
    --limit '32' \
    --matchPool 'qyHa5TpxvXLqiXoL' \
    --memberID '5mSQaXTaBfCAuE1D' \
    --offset '79' \
    --order 'MZy8IZ8Ti4ZTj2yh' \
    --orderBy 'NYuZXialYDoo7yN5' \
    --sessionID 'JHi8Z669BmoHHlNL' \
    --status 'AKjJNgNOHB0vlN6K' \
    --statusV2 'eFFbZciMTVFVHPb6' \
    --toTime '06DxbsrdwiTV4fRo' \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryGameSessions' test.out

#- 37 AdminQueryGameSessionsByAttributes
samples/cli/sample-apps Session adminQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"MPPRXWFQwnFP7WZX": {}, "GfgzRdVmSe06jTMB": {}, "8DRleiOW6dOObkb5": {}}' \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryGameSessionsByAttributes' test.out

#- 38 AdminDeleteBulkGameSessions
samples/cli/sample-apps Session adminDeleteBulkGameSessions \
    --namespace $AB_NAMESPACE \
    --body '{"ids": ["s4h9HsiwmX3p1ysx", "9iGlqRCwRChGWrLW", "Rc3NHJP4JsEwZf9H"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteBulkGameSessions' test.out

#- 39 AdminSetDSReady
samples/cli/sample-apps Session adminSetDSReady \
    --namespace $AB_NAMESPACE \
    --sessionId 'fHhbBrxx1Ha6o1WX' \
    --body '{"ready": true}' \
    > test.out 2>&1
eval_tap $? 39 'AdminSetDSReady' test.out

#- 40 AdminKickGameSessionMember
samples/cli/sample-apps Session adminKickGameSessionMember \
    --memberId 'dvSW2UtMg4jbsTHe' \
    --namespace $AB_NAMESPACE \
    --sessionId 'lirVpfPF3621CIat' \
    > test.out 2>&1
eval_tap $? 40 'AdminKickGameSessionMember' test.out

#- 41 AdminUpdateGameSessionMember
samples/cli/sample-apps Session adminUpdateGameSessionMember \
    --memberId 'cUnRiEh2UkgqJgUl' \
    --namespace $AB_NAMESPACE \
    --sessionId 'q4fI2swziTXhCYPZ' \
    --statusType 'qehT238gpl3Tw19J' \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdateGameSessionMember' test.out

#- 42 AdminGetListNativeSession
samples/cli/sample-apps Session adminGetListNativeSession \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '87' \
    --order '3jedhjJmbATrVRyh' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetListNativeSession' test.out

#- 43 AdminQueryParties
samples/cli/sample-apps Session adminQueryParties \
    --namespace $AB_NAMESPACE \
    --isSoftDeleted '1mUgjzqFgBQPkIP9' \
    --joinability 'PXzs5aQGlcTdiNUc' \
    --key '8moBi2IIjpuKW5oM' \
    --leaderID 'IKTbNMVGVDMbQda7' \
    --limit '28' \
    --memberID 'u9fvz7RfFsTpjJnv' \
    --memberStatus 'WE7jrEQzeXjLqTYe' \
    --offset '26' \
    --order 'BoRfLNoyAHMUdHEr' \
    --orderBy 'hWXzz7ZKXuT9wun8' \
    --partyID 'XTsBx1UlLkpIxefz' \
    --value 'gpH49OnFG8fHpGSr' \
    > test.out 2>&1
eval_tap $? 43 'AdminQueryParties' test.out

#- 44 AdminGetPlatformCredentials
samples/cli/sample-apps Session adminGetPlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlatformCredentials' test.out

#- 45 AdminUpdatePlatformCredentials
samples/cli/sample-apps Session adminUpdatePlatformCredentials \
    --namespace $AB_NAMESPACE \
    --body '{"psn": {"clientId": "ygHemPim4VnOStgy", "clientSecret": "qvOkwkH3cGEFFAIn", "scope": "ZCV7W12nPOmmnlME"}}' \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePlatformCredentials' test.out

#- 46 AdminDeletePlatformCredentials
samples/cli/sample-apps Session adminDeletePlatformCredentials \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlatformCredentials' test.out

#- 47 AdminGetRecentPlayer
samples/cli/sample-apps Session adminGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --userId 'BO1t0nbT1BgD3c5y' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetRecentPlayer' test.out

#- 48 AdminGetRecentTeamPlayer
samples/cli/sample-apps Session adminGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --userId 'olQo9eKvf5RMHerP' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetRecentTeamPlayer' test.out

#- 49 AdminReadSessionStorage
samples/cli/sample-apps Session adminReadSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'Bf6BFc1o2o232fwz' \
    > test.out 2>&1
eval_tap $? 49 'AdminReadSessionStorage' test.out

#- 50 AdminDeleteUserSessionStorage
samples/cli/sample-apps Session adminDeleteUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'wUW9Fyde9XMwYARg' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteUserSessionStorage' test.out

#- 51 AdminReadUserSessionStorage
samples/cli/sample-apps Session adminReadUserSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId '86X6mc4rIKPa47fl' \
    --userId 'jPjU2LF94mMrGCZ6' \
    > test.out 2>&1
eval_tap $? 51 'AdminReadUserSessionStorage' test.out

#- 52 AdminQueryPlayerAttributes
samples/cli/sample-apps Session adminQueryPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --users 'YWrjEwaG1SbuUmM5' \
    > test.out 2>&1
eval_tap $? 52 'AdminQueryPlayerAttributes' test.out

#- 53 AdminGetPlayerAttributes
samples/cli/sample-apps Session adminGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    --userId 'uPmnaMwvQhynoCsr' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerAttributes' test.out

#- 54 AdminSyncNativeSession
samples/cli/sample-apps Session adminSyncNativeSession \
    --namespace $AB_NAMESPACE \
    --userId 'Kt8n5lPwUd34tJRn' \
    > test.out 2>&1
eval_tap $? 54 'AdminSyncNativeSession' test.out

#- 55 CreateGameSession
samples/cli/sample-apps Session createGameSession \
    --namespace $AB_NAMESPACE \
    --body '{"appName": "DSl3LaJqkaqI3wbH", "attributes": {"948aaX4ZNZypq7ZY": {}, "8Z6IKpeWbhFuA76E": {}, "Grb59ounachckgWE": {}}, "autoJoin": true, "backfillTicketID": "G3Mc3y5tjtiDOTTR", "clientVersion": "mim8q7acNN1qOlz3", "configurationName": "U4mwugHxypTfNZJF", "customURLGRPC": "F3glXQPn78U4pYql", "deployment": "oFES6CojFe2ydKKl", "dsSource": "WH7I02mSCGSLlO4Q", "fallbackClaimKeys": ["YKqiHgS9hsVBKirP", "tHeN4joaFzHW080w", "gpNr6NVg4dWGHBOF"], "inactiveTimeout": 39, "inviteTimeout": 92, "joinability": "RHT6qCQGDZw06Qpr", "matchPool": "qiZpxlXYD9BugvWI", "maxPlayers": 51, "minPlayers": 81, "preferredClaimKeys": ["rS7aBbXmVlP3gBPU", "RrGzhvf0BbMHBI5z", "0uillJmXkLNzglbE"], "requestedRegions": ["IyEuLB7RnnASS2uh", "ixjMQrCE6mJn311E", "OW0GjEWUxGgkokJl"], "serverName": "hjPyvI9PfFWYlowC", "storage": {"leader": {"ydykyeDcMzB2LyXZ": {}, "DaK8GFdc6L7JGwlA": {}, "HmtfBMFCGfNSOd0M": {}}}, "teams": [{"parties": [{"partyID": "vhXZ5jlOKc1N2rCP", "userIDs": ["BYVwpLV8khP8ptbi", "pINhqZgcsKEAiObv", "MtrUMWtOW0RuNc7c"]}, {"partyID": "l1Nz9mmZo7XSWojv", "userIDs": ["RTUWdxVgpX1KRCVD", "UayDIZZpQIfsbZcP", "sawcyV8uaoCt8idY"]}, {"partyID": "c2Q2EpP6bKnCUa9C", "userIDs": ["kL16CU4qAxOiwR3L", "6VXt0XZO43SkkhDT", "04ImX7Ft9JNeQk1l"]}], "userIDs": ["PUdq9iYLKuiSpfjB", "mvgVhaCHp3pZwXpx", "CC7VbgJFEt4Yan0Z"]}, {"parties": [{"partyID": "cKLZs1kU62N0GCQt", "userIDs": ["pPFEWOH4ZBj388Du", "8n4XhZ8ojOZ5loVQ", "zEvOPdnnxpSeqWjl"]}, {"partyID": "zWyZV9zEV3xOI4V3", "userIDs": ["GsotUr4D0n2ojmVQ", "UMnIlNG3RY2U6NGH", "u4FwViWaC052I8ON"]}, {"partyID": "xfPbCdCHLv2SszFR", "userIDs": ["cJthjFAuJ8dwNlMw", "w8CkyVALlO7r6nDL", "3uQJZm908vdOzjos"]}], "userIDs": ["vWaS6uoxvGNWrXj8", "OsJETUrngIpfDUef", "NQ3JTX1NLKfr9hWO"]}, {"parties": [{"partyID": "9fPvSwZVq8tREbgY", "userIDs": ["KTSsWSxvSGgX7H3G", "yb86cN3XE1fJcX1q", "1Jlc0NXnBV8Gr0Dk"]}, {"partyID": "Pgd6HVbgMdU4ySi2", "userIDs": ["gyNYdUr0hISEKrMn", "jMdBjA977urIGQnS", "y560WYwKO4a3LGqB"]}, {"partyID": "ClZfD9eW8k0gA9hL", "userIDs": ["UqfUIK0DRdKTyTjb", "lOXEcvykxfMQlox7", "81MhIX0gimx49Pfz"]}], "userIDs": ["PdZacOXOTUZjuKeR", "CkW2nGLljNMQyXmS", "pxDSFM0ucC2kNikE"]}], "textChat": true, "ticketIDs": ["57W1JMJsraxXkjBz", "0EA34JDKM9WQdU9t", "NbBqxeywtMDzIjgs"], "tieTeamsSessionLifetime": false, "type": "JdIyD0ymT7uGX06w"}' \
    > test.out 2>&1
eval_tap $? 55 'CreateGameSession' test.out

#- 56 PublicQueryGameSessionsByAttributes
samples/cli/sample-apps Session publicQueryGameSessionsByAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"HwgG7tL8ZE02WGgi": {}, "t4V0i26Qj9ajRgBQ": {}, "kEjpnRLzgdVYDRM6": {}}' \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryGameSessionsByAttributes' test.out

#- 57 PublicSessionJoinCode
samples/cli/sample-apps Session publicSessionJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Y2W9tT8A7823aBce"}' \
    > test.out 2>&1
eval_tap $? 57 'PublicSessionJoinCode' test.out

#- 58 GetGameSessionByPodName
samples/cli/sample-apps Session getGameSessionByPodName \
    --namespace $AB_NAMESPACE \
    --podName 'GT1s9STKVoUAVNuH' \
    > test.out 2>&1
eval_tap $? 58 'GetGameSessionByPodName' test.out

#- 59 GetGameSession
samples/cli/sample-apps Session getGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'CVV4gLOSFvccycNm' \
    > test.out 2>&1
eval_tap $? 59 'GetGameSession' test.out

#- 60 UpdateGameSession
samples/cli/sample-apps Session updateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'XtVIQTLaq68TPGfA' \
    --body '{"attributes": {"0qJj5fl92ynEWwMD": {}, "ReyPWAlUltdtKFsW": {}, "UXHQWTLC2FBQbyUs": {}}, "backfillTicketID": "PzTKpDsDAD3s5uxH", "clientVersion": "DBXcZqGG7N0QTeC8", "deployment": "7dzLU1lRcC6m0ykB", "fallbackClaimKeys": ["t6cVbvlDZEh2qENG", "UOFPE0jJKVsD5VD1", "BpTAkju97HfHQR1h"], "inactiveTimeout": 18, "inviteTimeout": 50, "joinability": "gdRMaROyBMXDI9Cc", "matchPool": "eMah0tRK6CUdqOXN", "maxPlayers": 85, "minPlayers": 86, "preferredClaimKeys": ["nBCisiSFoMixjAoZ", "K443y3da0on4mwxN", "vVC57mwq5mHkPQN1"], "requestedRegions": ["vWR8UVUdsI17okNe", "gDOI6ZFFceJhuGg4", "EkIgviCVOfpnehWp"], "teams": [{"parties": [{"partyID": "NezWk1CV4UjDbMVg", "userIDs": ["Nu46kgswYjKZI5Xp", "PGgrxdsYfozbtmbI", "DB7czUED5h6Xsont"]}, {"partyID": "UZXJ8yzBge01Ihdb", "userIDs": ["rcGwA5paPuiCB6RE", "hqddQ41oVbdmeLWg", "yOwKixqCO9OHGcpp"]}, {"partyID": "6LXVuFVViuThKXNp", "userIDs": ["nYly84EUUxx8iUOK", "lP3reTo9TEAFLSLd", "wk3f1DPFJ2vXbLIU"]}], "userIDs": ["sJzxmGluCy2bWE3H", "SBc5ICgPcaAOCu1b", "8hXGbaiovnzyk1Qr"]}, {"parties": [{"partyID": "tJoorBVMZqR1XIxG", "userIDs": ["6LKbaCHPlJMUpBVl", "1aaXjWSmaTGdgzsm", "P3DIqUeLiAFmOAZM"]}, {"partyID": "ZgYsUV8WA9mP8ST6", "userIDs": ["wBLgY6CiKNYW1GSL", "9R7WyLRwmu38K16e", "ipjaBywGiO8629oj"]}, {"partyID": "ROKjB3KyaYnm9kqK", "userIDs": ["ZTxL7lnJ17n0Yi1E", "10r2WwDrJobBQogQ", "vbrZVDOK0L1xDHvx"]}], "userIDs": ["AgGeuCMaaLFjklK0", "2T3R2yqczSn2Zbwp", "SHAuGd0o7dvgQeZJ"]}, {"parties": [{"partyID": "T9upmu2WyLJrjCr5", "userIDs": ["Xw9mOHIdxwDrKty3", "pvO5TlvmQy0MgBp5", "M8zsTnM7G5ETTw8T"]}, {"partyID": "iRTYGPtAaSl5x3AP", "userIDs": ["pnasq3pr3iYDy6Hl", "iljOW9qlsC6t3uFu", "tds1Z9mFMrvVepog"]}, {"partyID": "8kUQQ2xz14w6VqKc", "userIDs": ["A9ZNTH8BOht7jLpK", "N0M1cjQYNK6YNzSy", "gdWoRPK4ri6b2pU5"]}], "userIDs": ["49detnNTR9wkeeX1", "r8Zdm18VzWHjhhyz", "Ynf9gBeHaKDtZRnb"]}], "ticketIDs": ["VRuy5IyOnJprMrDd", "8XLrzRvhQoLggmAb", "Dh8ZjoAM4ONBpB9x"], "tieTeamsSessionLifetime": true, "type": "0XakdElxrGLMj87i", "version": 0}' \
    > test.out 2>&1
eval_tap $? 60 'UpdateGameSession' test.out

#- 61 DeleteGameSession
samples/cli/sample-apps Session deleteGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'IKv5UG86JfuVFN8q' \
    > test.out 2>&1
eval_tap $? 61 'DeleteGameSession' test.out

#- 62 PatchUpdateGameSession
samples/cli/sample-apps Session patchUpdateGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId '6ZmYYt3P3yXcOvn9' \
    --body '{"attributes": {"hC8e4Bylmt7YFGQr": {}, "wSNO5v7T3tKsPAaB": {}, "CkpWOYR8mLKheBeN": {}}, "backfillTicketID": "PPcdgQJxfRaGTECG", "clientVersion": "Q235jcN2W1bXEjvW", "deployment": "Bx69hoXyECB9io8Y", "fallbackClaimKeys": ["Altj0AMR4FHlrUoF", "EFHZXfuqcLUuWB4z", "YsgpMpvPtGGK1XZA"], "inactiveTimeout": 48, "inviteTimeout": 71, "joinability": "z04QbsyFcS7lqNq9", "matchPool": "PhgLuGnl29Juw7UA", "maxPlayers": 83, "minPlayers": 83, "preferredClaimKeys": ["9mYn5nNdw0YKJ9bS", "HEZwctLwik32vO0A", "XpzqFuAglEO3FWCh"], "requestedRegions": ["lEtg0qk8kqGu2HDw", "6w5I29mrGLFrWfAY", "JKqLJeFJW6adswDI"], "teams": [{"parties": [{"partyID": "it93K6SY4JKqR8uE", "userIDs": ["HOGy9lijY9Mq27yJ", "G5uZkDaW6q7KTBOi", "tw4qzAMB6kVzjoOR"]}, {"partyID": "V5LVpCdUH81p9o1e", "userIDs": ["Kg5iWmtwsHJZEwpM", "pxDDObsnQSxTmer5", "qynG5MF5NwUfpLVe"]}, {"partyID": "gsm2uJhtZ1ls4mAJ", "userIDs": ["VCY9MjWQa5PsZLKP", "BfeF1z6sS4UWGSAt", "T2QkKvMcVhx9kwX7"]}], "userIDs": ["YyYZHHjzrwmXIg1U", "wpWKBVmnXoECK7zw", "xKsjpV0ZahMdDcat"]}, {"parties": [{"partyID": "N4DGLZXaScL6YHGH", "userIDs": ["PlL3rUWtoWVWXgLQ", "Sh5tiPWaHnTZCtse", "gYAcbNKze31bjIvh"]}, {"partyID": "jvyHfymZ40xXMAsU", "userIDs": ["7SfbqKXfBzaBn7QA", "Wzm1AJWWmGbE7aC3", "Tw1thIHG1W6g1vQ5"]}, {"partyID": "5ug1YF7nVzJzkdaa", "userIDs": ["4M9HFdJOFIQQ1KFg", "JVJinr63HpDuGeXt", "DJnJTEsQNWkJTk6F"]}], "userIDs": ["9mY44qBNmrmKybY0", "DEehLhmtpxy8k7Xf", "ipaRNtdXqCXA4DGM"]}, {"parties": [{"partyID": "GYkqlS1DC3IPUNoZ", "userIDs": ["UokhFVHMarefH9p9", "il4DbMYz1M5laHjo", "mnRs9r24oB6Q22Fo"]}, {"partyID": "tNNtlkdKGT4RRcjR", "userIDs": ["O3vXrEpbB14j6LHQ", "fyCJjlfxnb2JEGjE", "CeumF8ZfoktOzAVz"]}, {"partyID": "zE6UqwW1pecZ3We0", "userIDs": ["iLptm4ccYtuVm2zY", "mKCXgljxA0YoYPZi", "yNf7DCDSESS0A1rD"]}], "userIDs": ["tRAVYOYJFDnIgHRz", "Kuc836z7qZTTVzOR", "J2Xz7xFkOpn7zNyz"]}], "ticketIDs": ["PVpB9ehsoiiD4uSZ", "YaNYoinZRcite4Kg", "dLtRzHMdq0L0DmLC"], "tieTeamsSessionLifetime": true, "type": "IE8JN038LiDdwkoW", "version": 77}' \
    > test.out 2>&1
eval_tap $? 62 'PatchUpdateGameSession' test.out

#- 63 UpdateGameSessionBackfillTicketID
samples/cli/sample-apps Session updateGameSessionBackfillTicketID \
    --namespace $AB_NAMESPACE \
    --sessionId 'kZqc3Wo79vcbkgbO' \
    --body '{"backfillTicketID": "Eu86v8p5z8PRQJ8B"}' \
    > test.out 2>&1
eval_tap $? 63 'UpdateGameSessionBackfillTicketID' test.out

#- 64 GameSessionGenerateCode
samples/cli/sample-apps Session gameSessionGenerateCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'VPyME7qrzXXFp7cx' \
    > test.out 2>&1
eval_tap $? 64 'GameSessionGenerateCode' test.out

#- 65 PublicRevokeGameSessionCode
samples/cli/sample-apps Session publicRevokeGameSessionCode \
    --namespace $AB_NAMESPACE \
    --sessionId 'iOv5l3fxkeYTEFMI' \
    > test.out 2>&1
eval_tap $? 65 'PublicRevokeGameSessionCode' test.out

#- 66 PublicGameSessionInvite
samples/cli/sample-apps Session publicGameSessionInvite \
    --namespace $AB_NAMESPACE \
    --sessionId 'afhAkMvJwveJe34F' \
    --body '{"platformID": "dVonL8bmzMQwBWw7", "userID": "CUUmJRXtAlBzRD7B"}' \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionInvite' test.out

#- 67 JoinGameSession
samples/cli/sample-apps Session joinGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'VvesWmKabVdILBQc' \
    > test.out 2>&1
eval_tap $? 67 'JoinGameSession' test.out

#- 68 PublicPromoteGameSessionLeader
samples/cli/sample-apps Session publicPromoteGameSessionLeader \
    --namespace $AB_NAMESPACE \
    --sessionId '7qYIpg1CE3AiCPuK' \
    --body '{"leaderID": "0zYZAebm5wiRLfSd"}' \
    > test.out 2>&1
eval_tap $? 68 'PublicPromoteGameSessionLeader' test.out

#- 69 LeaveGameSession
samples/cli/sample-apps Session leaveGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'TfI9M4AzU44EPQyk' \
    > test.out 2>&1
eval_tap $? 69 'LeaveGameSession' test.out

#- 70 PublicKickGameSessionMember
samples/cli/sample-apps Session publicKickGameSessionMember \
    --memberId '10eITyuNwbxlUh0b' \
    --namespace $AB_NAMESPACE \
    --sessionId 'gWbHRy8hXZCzPIlY' \
    > test.out 2>&1
eval_tap $? 70 'PublicKickGameSessionMember' test.out

#- 71 PublicGameSessionReject
samples/cli/sample-apps Session publicGameSessionReject \
    --namespace $AB_NAMESPACE \
    --sessionId 'habANUQ9nmM0jfFk' \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionReject' test.out

#- 72 GetSessionServerSecret
samples/cli/sample-apps Session getSessionServerSecret \
    --namespace $AB_NAMESPACE \
    --sessionId '3nTbzFQiKV5grL17' \
    > test.out 2>&1
eval_tap $? 72 'GetSessionServerSecret' test.out

#- 73 AppendTeamGameSession
samples/cli/sample-apps Session appendTeamGameSession \
    --namespace $AB_NAMESPACE \
    --sessionId 'PqOcvbCYUuSTyMca' \
    --body '{"additionalMembers": [{"partyID": "ArmElLXtmyVKu79l", "userIDs": ["OyK6B3KGGyKtjYK9", "T0dF49NXlp7yvik6", "04opNSA2AXcgMHQv"]}, {"partyID": "Nrpos30A2XXf8bNn", "userIDs": ["0U2csJc3MNBE6DyX", "QUc8iRmJ9zZSlT8F", "pPNcx0goAGLGWYJk"]}, {"partyID": "E65vP9AtDsQWzqX6", "userIDs": ["yWs56ehcqClRtmpH", "DrvgrI1dgH55qLsB", "bKtIKSCr2ldmv5q8"]}], "proposedTeams": [{"parties": [{"partyID": "M6K0CD7Jk6O99gyT", "userIDs": ["R8fXFkunvIsvAEDb", "PdURA8VqjJHGOo8w", "TWhLMRGuLW3Zenl8"]}, {"partyID": "SfJVN7NPOXdwu0eU", "userIDs": ["VxRZjHzZ1GKtg4cm", "yfnG49Qzrv02e06Q", "rYqIVIMoCWHa7bwc"]}, {"partyID": "UdlJpwr99z8ZhsCw", "userIDs": ["PRnMzu7ua6efMwit", "0J3Hm5yH092819JM", "K77urRPZNOo81CHr"]}], "userIDs": ["r0GEuo1aGxVFZhR4", "3SnnchWc7krZgpsW", "a3AQGySrSEwh420J"]}, {"parties": [{"partyID": "cCBnjUAjNPy6BJdw", "userIDs": ["yXmtUpdp4zPbK4pa", "bCpscr5gwfNR4MMn", "hqjMXe9Ju4EBC8Et"]}, {"partyID": "Z7D5WyzMh8zQlrb5", "userIDs": ["zLEvUpRobuInw4FY", "oqn9QVIsn3DDwj4K", "bBE8eM6npryaeXLC"]}, {"partyID": "QiTsjahxfFX5PUcj", "userIDs": ["upGfLNebTMMwooXK", "efs45GNmOYSvfjR2", "13bFidkikCozJCWU"]}], "userIDs": ["bQk5uVpibypXCgCv", "QbR4O6IsFHryYXrM", "XaPIN1KzfANjdyqd"]}, {"parties": [{"partyID": "d8JoRClYOydCsvt2", "userIDs": ["X6HJjEUEG3lKTVuX", "LUesvlRPXBu3Tonk", "aOBrkweCOW1vidCx"]}, {"partyID": "KGzoHexj1PGMXyJ1", "userIDs": ["7Ub03ZubreYboz6Y", "ANUbo2YFtgjlUYpT", "79TEqo7MjYojbD0U"]}, {"partyID": "8l8eemsnqYa5vs0W", "userIDs": ["UwaXW1dbbNC4QAz9", "n8RxyvorU7IR85oS", "jk1Ub3gJU5EKZwZm"]}], "userIDs": ["IAA0aebIQtlreQiQ", "k92McTu1Me21haPh", "FhqWxkhdGjZfBoJm"]}], "version": 46}' \
    > test.out 2>&1
eval_tap $? 73 'AppendTeamGameSession' test.out

#- 74 PublicGameSessionCancel
samples/cli/sample-apps Session publicGameSessionCancel \
    --namespace $AB_NAMESPACE \
    --sessionId 'R6Vrlg5OGwRm5lYG' \
    --userId 'qKrSiRWRWhux1UTV' \
    > test.out 2>&1
eval_tap $? 74 'PublicGameSessionCancel' test.out

#- 75 PublicPartyJoinCode
samples/cli/sample-apps Session publicPartyJoinCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6Ylmofs2n4jY2zUZ"}' \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyJoinCode' test.out

#- 76 PublicGetParty
samples/cli/sample-apps Session publicGetParty \
    --namespace $AB_NAMESPACE \
    --partyId 'kFUVmLSWEQ2c5nko' \
    > test.out 2>&1
eval_tap $? 76 'PublicGetParty' test.out

#- 77 PublicUpdateParty
samples/cli/sample-apps Session publicUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'TRVk83FCIHe0ItYs' \
    --body '{"attributes": {"Jz5ViVHR83kTw7Dl": {}, "ZXlXioHmhwd7yag5": {}, "g9yqE5gQonFRCQHw": {}}, "inactiveTimeout": 93, "inviteTimeout": 5, "joinability": "1Zlk7hSNUgQVROzO", "maxPlayers": 62, "minPlayers": 50, "type": "EWVckPpqTyTDcubh", "version": 75}' \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateParty' test.out

#- 78 PublicPatchUpdateParty
samples/cli/sample-apps Session publicPatchUpdateParty \
    --namespace $AB_NAMESPACE \
    --partyId 'dCrJNyc7zepny2GX' \
    --body '{"attributes": {"Rkw3JXVwubVyz8Kb": {}, "QfztYy313wSdXaQN": {}, "eyQ0FWOYCdx7iPbM": {}}, "inactiveTimeout": 96, "inviteTimeout": 32, "joinability": "wgCvRUaR6gpFqDEK", "maxPlayers": 43, "minPlayers": 18, "type": "IZSgApteqq4glWc1", "version": 97}' \
    > test.out 2>&1
eval_tap $? 78 'PublicPatchUpdateParty' test.out

#- 79 PublicGeneratePartyCode
samples/cli/sample-apps Session publicGeneratePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId 'Yf7BzRfSRKVyCkk4' \
    > test.out 2>&1
eval_tap $? 79 'PublicGeneratePartyCode' test.out

#- 80 PublicRevokePartyCode
samples/cli/sample-apps Session publicRevokePartyCode \
    --namespace $AB_NAMESPACE \
    --partyId '3X0PwOeDoKNlY504' \
    > test.out 2>&1
eval_tap $? 80 'PublicRevokePartyCode' test.out

#- 81 PublicPartyInvite
samples/cli/sample-apps Session publicPartyInvite \
    --namespace $AB_NAMESPACE \
    --partyId '4FkTbNvAdck1wEzO' \
    --body '{"platformID": "k4bzIcTK6cdfXZhc", "userID": "mMNU4VODw7h5OA5M"}' \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyInvite' test.out

#- 82 PublicPromotePartyLeader
samples/cli/sample-apps Session publicPromotePartyLeader \
    --namespace $AB_NAMESPACE \
    --partyId 'nMKUO732c3twcpD5' \
    --body '{"leaderID": "ASMkMd3fWI4NU2jN"}' \
    > test.out 2>&1
eval_tap $? 82 'PublicPromotePartyLeader' test.out

#- 83 PublicPartyJoin
samples/cli/sample-apps Session publicPartyJoin \
    --namespace $AB_NAMESPACE \
    --partyId 'wMwwiQDeUY6q0hJu' \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyJoin' test.out

#- 84 PublicPartyLeave
samples/cli/sample-apps Session publicPartyLeave \
    --namespace $AB_NAMESPACE \
    --partyId 'yxI7tJvtWPAZRIwf' \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyLeave' test.out

#- 85 PublicPartyReject
samples/cli/sample-apps Session publicPartyReject \
    --namespace $AB_NAMESPACE \
    --partyId '0qku7zIhRqidk0pK' \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyReject' test.out

#- 86 PublicPartyCancel
samples/cli/sample-apps Session publicPartyCancel \
    --namespace $AB_NAMESPACE \
    --partyId '7IgGeV5z6vonTpnj' \
    --userId 'cSER8gHIiqF5NfDL' \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyCancel' test.out

#- 87 PublicPartyKick
samples/cli/sample-apps Session publicPartyKick \
    --namespace $AB_NAMESPACE \
    --partyId '7DoSalJJCMdfbTgb' \
    --userId 'Vdpa5BpTg2jiHvkm' \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyKick' test.out

#- 88 PublicCreateParty
samples/cli/sample-apps Session publicCreateParty \
    --namespace $AB_NAMESPACE \
    --body '{"attributes": {"qiUmeQlu3xA4N0oa": {}, "bYmbViEbjlSbf2kY": {}, "3zWtEk4HmXELinYn": {}}, "configurationName": "mUx16SwivYUFw5uF", "inactiveTimeout": 71, "inviteTimeout": 28, "joinability": "Q9FGm7D5NF8DWENQ", "maxPlayers": 99, "members": [{"ID": "sQqwIrFfrj5w3lVq", "PlatformID": "fXJ1YAayRdRK6iPi", "PlatformUserID": "AlhXLoiJAdO4cZsm"}, {"ID": "6RvIartzWedAFhAZ", "PlatformID": "J5u4SYmeaGNu9N7V", "PlatformUserID": "Mu7lmwTCeXodg6P5"}, {"ID": "rCgTrfiWWAnLTyES", "PlatformID": "laF1cdL9NmkhKtH5", "PlatformUserID": "DmmMDkq3DUqMA13f"}], "minPlayers": 65, "textChat": true, "type": "Hsv3cki3Lew9wroq"}' \
    > test.out 2>&1
eval_tap $? 88 'PublicCreateParty' test.out

#- 89 PublicGetRecentPlayer
samples/cli/sample-apps Session publicGetRecentPlayer \
    --namespace $AB_NAMESPACE \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 89 'PublicGetRecentPlayer' test.out

#- 90 PublicGetRecentTeamPlayer
samples/cli/sample-apps Session publicGetRecentTeamPlayer \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 90 'PublicGetRecentTeamPlayer' test.out

#- 91 PublicUpdateInsertSessionStorageLeader
samples/cli/sample-apps Session publicUpdateInsertSessionStorageLeader \
    --namespace $AB_NAMESPACE \
    --sessionId 'f3Gf7kx6j7wMVHlG' \
    --body '{"76sikAEL1Uab9i7P": {}, "f5oqcJVFpCKDivIB": {}, "neiBEdLbzcxMDwqR": {}}' \
    > test.out 2>&1
eval_tap $? 91 'PublicUpdateInsertSessionStorageLeader' test.out

#- 92 PublicUpdateInsertSessionStorage
samples/cli/sample-apps Session publicUpdateInsertSessionStorage \
    --namespace $AB_NAMESPACE \
    --sessionId 'KpCtXtbMnPacjWGc' \
    --userId '1LeBqgsO5eJdbuyP' \
    --body '{"QokPHGLaYBBJDGfC": {}, "QtlzVsYhzRKVjPga": {}, "9SpiBSLhJqOPjIdk": {}}' \
    > test.out 2>&1
eval_tap $? 92 'PublicUpdateInsertSessionStorage' test.out

#- 93 PublicGetBulkPlayerCurrentPlatform
samples/cli/sample-apps Session publicGetBulkPlayerCurrentPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIDs": ["oKTkLlV5sPwkSKxY", "UZrU9vo1KlvyMGtB", "6815JGmpOMVFhh4p"]}' \
    > test.out 2>&1
eval_tap $? 93 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 94 PublicGetPlayerAttributes
samples/cli/sample-apps Session publicGetPlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 94 'PublicGetPlayerAttributes' test.out

#- 95 PublicStorePlayerAttributes
samples/cli/sample-apps Session publicStorePlayerAttributes \
    --namespace $AB_NAMESPACE \
    --body '{"crossplayEnabled": false, "currentPlatform": "wjUVAeXDVnet4OlC", "data": {"v1abp7R0Ud7TeRTk": {}, "ZTEqAXZRKIcpdMWO": {}, "N93ecru9iouHLFaf": {}}, "platforms": [{"name": "2JmG2rfZ3MSPNPIh", "userID": "xK8iKSHJjmGsij5X"}, {"name": "ppuPASOaLmRJ3S2H", "userID": "IsHhAsrBVfl8xNgp"}, {"name": "kt0EUBrlGDMK44kD", "userID": "8TSoCq8n8Rz4Ry11"}], "roles": ["43ZZvlSVw2Q1HHsm", "JV2gBpW3fpyj988G", "JuABK1SrJcydxRAp"], "simultaneousPlatform": "7xsvheOFGaUxmBYv"}' \
    > test.out 2>&1
eval_tap $? 95 'PublicStorePlayerAttributes' test.out

#- 96 PublicDeletePlayerAttributes
samples/cli/sample-apps Session publicDeletePlayerAttributes \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 96 'PublicDeletePlayerAttributes' test.out

#- 97 PublicQueryMyGameSessions
samples/cli/sample-apps Session publicQueryMyGameSessions \
    --namespace $AB_NAMESPACE \
    --order 'E3YbCYYEVYDH66hE' \
    --orderBy 'ewI5kwgKVVX72ipJ' \
    --status 'eM1oVGU3nYHiNByM' \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryMyGameSessions' test.out

#- 98 PublicQueryMyParties
samples/cli/sample-apps Session publicQueryMyParties \
    --namespace $AB_NAMESPACE \
    --order 'i4oZT5so9axg74lO' \
    --orderBy 'Yz2tGjbt9LtxUtB1' \
    --status 'vIMi1n8pM8yUEMwL' \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryMyParties' test.out


rm -f "tmp.dat"

exit $EXIT_CODE