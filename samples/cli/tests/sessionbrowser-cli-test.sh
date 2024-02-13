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
    --gameMode 'KheXMVCmD6mi90HW' \
    --gameVersion 'GzDQpXFpusRDnTkw' \
    --joinable 'aHhyrSFpv4FitzLZ' \
    --limit '80' \
    --matchExist 'weIbno1MWNoLgSEs' \
    --matchId 'grikdd2KTsDlGcEq' \
    --offset '52' \
    --serverStatus 'DTYRypSZj8zROuur' \
    --userId 'vc4vmW8KGwyd2eGO' \
    --sessionType 'h4gMT2Zw5uRQbD7g' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'yeSJMWQhCnUcfmyn' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '24' \
    --serverRegion '2q7NPqCBQTdFXjjp' \
    --sessionId 'T6yWP4UQpmHpewuv' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --matchId 'BMvLmrOXaXySagAr' \
    --offset '73' \
    --serverRegion 'UTcFtLOan5D3p3EP' \
    --sessionId '403jtZByPl8UXIRI' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DZWI0y1iMwDSRy9G' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'nUOHtmbTeZzRoB1h' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'LCvzHghFnRfHzhpZ' \
    --deleted 'false' \
    --matchID 'HWX0Am01GV9fEcAo' \
    --partyID 'wfa6wE6Bja4u9HhB' \
    --sessionType '7vz1jniZxU5Nughb' \
    --status '9brgXIYBNt7T318m' \
    --userID 'LN4FvdYO9dCxYe1U' \
    --limit '36' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'FNeTLxnhzh3j5oXR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '4KGSbH1nu6QVuUZu' \
    --gameVersion 'mY8DctndzO857JBJ' \
    --joinable 'COEIwOO74g15E9SZ' \
    --limit '15' \
    --matchExist 'eyR763z1BbSlaAv5' \
    --matchId 'lLfRfIhYby0AOBDQ' \
    --offset '97' \
    --serverStatus 'riExfu2fHXqmBgIe' \
    --userId 'prHxRfvzJwq3OPoP' \
    --sessionType 'pckEo6NaRgjNSvQ2' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 59, "current_player": 74, "map_name": "K8HWLQ6cmwWAYLmV", "max_internal_player": 9, "max_player": 13, "mode": "aQuZUljx6wQHxIbR", "num_bot": 84, "password": "rzqHSpLLSd8ra28Z", "settings": {"tHbkIaEgoBHjjMDw": {}, "kCmICwws2KnjpS0p": {}, "z3EmXMUf89W9cAl9": {}}}, "game_version": "hDBD7iOLDPfCDYOX", "namespace": "Dk4VQeLjJYTeEA2y", "session_type": "5AlYInrZNUjWDBkl", "username": "f3H8mOafx5cXqnhn"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'j6FqfN6wiydwJyqR' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xJ59nDC1YkXzHuUA' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WLMwiJ1THw5nGQaV' \
    --body '{"game_max_player": 84}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '9RSsM0LDeOPbvziF' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qfE2rtazwoDcVhgT' \
    --body '{"password": "sbZA0IDLvnUETmrW"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'KHzAs80d9xUziXa2' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KJH6BgQcBw8whOel' \
    --body '{"as_spectator": true, "user_id": "c4Zd34WdPGtH6v1F"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'zaOP8uXVlK8G5bvh' \
    --userID '8BM564hvovKmtQsI' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'IOkbDP3RwgGd3xlO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'WcwWQZur9uHzpOwv' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE