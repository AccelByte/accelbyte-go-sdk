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
echo "1..21"

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

#- 2 AdminQuerySession
samples/cli/sample-apps Sessionbrowser adminQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '5Wq3o0lwMqahwwlP' \
    --gameVersion 'RRpW3pd6Ldn8RuQv' \
    --joinable 'pDS7cAworVPCRmdl' \
    --limit '63' \
    --matchExist 'cn0oGmxb6IPCEiyz' \
    --matchId '9MA3PBnZxO9oyVdD' \
    --offset '78' \
    --serverStatus 'bq63W4HfhIE0j1iH' \
    --userId '7PqftUcgQHXEyrRA' \
    --sessionType 'tl8s2Ruz7ezZ8q2V' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'k7tl7iw5WpUHILZX' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '58' \
    --serverRegion 'mCkdN705riCKFmKn' \
    --sessionId 'XiPSRgyb8PYRXsHX' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --matchId 'flohOcEuNgo9QFHl' \
    --offset '63' \
    --serverRegion 'Ru7DuFtls68S9AQC' \
    --sessionId 'RoEfew1I03B7WslW' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'yXdQoRL5aOcy7Mm5' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'gZEaFreTE3PEcApg' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'wjbikawXfQebbGyO' \
    --deleted 'true' \
    --matchID 'WpmIbREJ1QA7aX6M' \
    --partyID 'tWpdw6DsaHxd82jM' \
    --sessionType 'zdhiDlPvSmIpDRV0' \
    --status 'NmZfxfrMVSzscWf9' \
    --userID '1mfI0oXEJrVvEF8Y' \
    --limit '9' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'CimrAWZ50FVqz4LE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'HkwAAw0LjiRTsWSQ' \
    --gameVersion 'P9tw4WPL1BqokZHC' \
    --joinable 'MQSlKxbPBWKR9hE6' \
    --limit '38' \
    --matchExist 'aMfMES5fAdfZHIfR' \
    --matchId 'dZ5SVuMhrgxmXgb6' \
    --offset '34' \
    --serverStatus 'oPcqye7KITIQXBcf' \
    --userId 'NKaBwkfzyg4aqnZo' \
    --sessionType '3MsNnFf3USj0n5kj' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 49, "current_player": 46, "map_name": "Elpx3hvt0BcGehY6", "max_internal_player": 50, "max_player": 16, "mode": "jslfUCsbiQJwCb6V", "num_bot": 72, "password": "m7U8PYsZl4JM0vCs", "settings": {"T31HZmDu8bF5pCd4": {}, "d3zgbZIowytvew3r": {}, "iJaqpUDyti9Ocnvi": {}}}, "game_version": "CSfzbxlh1EYGQEWQ", "namespace": "zpM3eSJbHnoS0v6U", "session_type": "daQ407KPW19JXvMY", "username": "ExRawjfibhramMPh"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'Ip5FojIsB2yEWUBg' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wNAl0a3IeOjh484q' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'bCXaac8UttcxuQaN' \
    --body '{"game_max_player": 24}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'awkPAubpb0gZ5drO' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qhTqxQeGOB02T4uy' \
    --body '{"password": "uN3bKanFN8oEv74s"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '2zLN07ulQ7tElu2n' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VBw9Nna2WumF8TrN' \
    --body '{"as_spectator": true, "user_id": "jjx6moMHNAtiqyc6"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Y4vC3emwsBHkThzM' \
    --userID '1KrxMcWpa3kKyBtR' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'fXNYhiGOt3wcAixu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'ZdbPkopkJYuDfLLR' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE