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
    --gameMode 'gzSjQb6D7EcrtIqe' \
    --gameVersion 'IL9AowwvOHLcOYIX' \
    --joinable 'z34XeOv33KxZjTxB' \
    --limit '19' \
    --matchExist 'pP8NQYs4VsVnQTKw' \
    --matchId 'Ks9BsbdHsT9FPSVK' \
    --offset '73' \
    --serverStatus '1lv7rnyP2jaQHMV1' \
    --userId 'k0WiOKk4EdtDzU1x' \
    --sessionType 'mRurijLtGeNy6l0F' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'aK8jZ7ob5zsJPs5C' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '60' \
    --serverRegion 'cFF5EI5eAeek6gtb' \
    --sessionId '4vWmMX0lze8qbiqK' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --matchId 'HcWhC9Y6cX5gTk37' \
    --offset '36' \
    --serverRegion 'BU5p8jb5cP4t1SGn' \
    --sessionId 'p2dxGO1Hw5lxVVzI' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '0kP5CnJIK31gR8Fx' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hyth38zT7lxwotrl' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'tEc0MAc4AMfyI7Pf' \
    --deleted 'false' \
    --matchID 'sZgZffk1O9ca3e6f' \
    --partyID 'AnLIxRXmaQElFa2U' \
    --sessionType 'EonOfRpl2dZxPOwW' \
    --status '7qGPyDed0EE2QTGg' \
    --userID 'SaaC3lOw1SFRmAAs' \
    --limit '68' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'KwjNhsfOZfYzKoBa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'G5p8Dv2MYXIBXVZo' \
    --gameVersion 'mKLiEqS2531hDoXk' \
    --joinable 'bYvUxv7wLZDle13q' \
    --limit '5' \
    --matchExist '1HillQdPgQ6uy5kg' \
    --matchId 'TFpZGPEAiO8N1UEp' \
    --offset '0' \
    --serverStatus 'MwcgMaZ3qi3djoQF' \
    --userId 'm3HHdkvDQi9lKEoM' \
    --sessionType 'Ag3iOTjcIb8i4bEa' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 36, "current_player": 14, "map_name": "TIrM1fYQD29etlVd", "max_internal_player": 39, "max_player": 100, "mode": "BSwcZfvZwxjUcbJZ", "num_bot": 0, "password": "YHUW330aam9ESFzZ", "settings": {"ST6FW8DioCNqPK0m": {}, "ezjPTeG4J5JsP7dA": {}, "HQws3uTKaBgrF6f4": {}}}, "game_version": "dBq2GDMyRqTAHJPc", "namespace": "zlOHxdX6ec33VYmY", "session_type": "qRyimUFm1haHWYD5", "username": "SSbIo9USzXEtnHdy"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'qCGMkz1Vs0vx7FrS' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MzSHEzKIJiHPb7zV' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lt57ushqn4o6aMlj' \
    --body '{"game_max_player": 97}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VmBdSL7WDc89FbhV' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lUMFZboYsS0GN8Fk' \
    --body '{"password": "gKpa5eViEW6GDbrj"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'B2UgDW61oYDWTkrk' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'b8vhpeDOMvu2fhxg' \
    --body '{"as_spectator": true, "user_id": "FYv69YCQiPVKejxX"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '2GcJOmG67P2itqrq' \
    --userID 'e5L6GD4I5qyjHUSB' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'XTUHofDOWf4ZWoHb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'sfknrVnlFX5wWZuX' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE