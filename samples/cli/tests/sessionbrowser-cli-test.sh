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
echo "1..20"

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

#- 2 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'QzuL6Ks7' \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --serverRegion 'AbNI0l2a' \
    --sessionId '7G80vT2l' \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --matchId 'FppJiyLl' \
    --serverRegion '60U3DGM1' \
    --sessionId 'DKoT6HwP' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'zIdVMsZg' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6MS7HoQa' \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'XKJroe52' \
    --deleted 'false' \
    --matchID 'Sp9p4gBf' \
    --partyID '2Q1tR3UA' \
    --userID 'GJSWiTbf' \
    --limit '57' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'eKsCcvNw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'uqcHsMYM' \
    --gameVersion 'JTtj7Q4g' \
    --joinable 'UqFMoRDB' \
    --limit '69' \
    --matchExist 'B9nchuyd' \
    --matchId 'Rkgdy9Qu' \
    --offset '22' \
    --serverStatus 'PY7idMXs' \
    --userId 'NsdpCU5h' \
    --sessionType 'SjFKkeWU' \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 17, "current_player": 1, "map_name": "Tkos75HT", "max_internal_player": 51, "max_player": 19, "mode": "eTeH6Fr7", "num_bot": 20, "password": "FNcLUgYS", "settings": {"zKI49Klz": {}, "KW2o6N37": {}, "MKKAoWzq": {}}}, "game_version": "YB36cV0u", "namespace": "C2ZWezCW", "session_type": "c1xxE3uL", "username": "51hMJsTZ"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'zzVF0ITr' \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '4ukacgJe' \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tdnePhEG' \
    --body '{"game_max_player": 98}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xYy6Gq12' \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GAyQPt99' \
    --body '{"password": "wg8vZxPV"}' \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'jihHzxpk' \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QSJfO3LI' \
    --body '{"as_spectator": false, "user_id": "nCeiQCDh"}' \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GpNZVgUm' \
    --userID 'fj3tyP9N' \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'w8byjCLK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '3hQnzDuZ' \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE