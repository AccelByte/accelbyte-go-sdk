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
echo "1..17"

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
    --sessionType 'TS5CZgUe' \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --serverRegion 'swZfCvCh' \
    --sessionId 'RyFgJLOh' \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --matchId 'XMQBPN02' \
    --serverRegion '3XV1DjQF' \
    --sessionId 'j5PnOpmj' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8tWlQFp7' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'Zb7HuiVd' \
    --gameVersion 'CCJzJ1nR' \
    --joinable '6TUrc9HZ' \
    --limit '69' \
    --matchExist 'XyIYfoAP' \
    --matchId 'obmljmrg' \
    --offset '6' \
    --serverStatus 'HggSxhzF' \
    --userId 'nrlcF611' \
    --sessionType 'D2HlQZkI' \
    > test.out 2>&1
eval_tap $? 6 'QuerySession' test.out

#- 7 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 14, "current_player": 88, "map_name": "P0OI9QAU", "max_internal_player": 35, "max_player": 78, "mode": "X18uWGlv", "num_bot": 7, "password": "nAwdb8qa", "settings": {"aTwLI5mm": {}, "A8a0C8sl": {}, "O5KLF4Qt": {}}}, "game_version": "ERMDLMJ5", "namespace": "ALEzpPXZ", "session_type": "z8QQcLpn", "username": "Z1PBWxWq"}' \
    > test.out 2>&1
eval_tap $? 7 'CreateSession' test.out

#- 8 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'NQzOaPUt' \
    > test.out 2>&1
eval_tap $? 8 'GetSessionByUserIDs' test.out

#- 9 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'K7C6RipT' \
    > test.out 2>&1
eval_tap $? 9 'GetSession' test.out

#- 10 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CvG4qhKe' \
    --body '{"game_current_player": 73, "game_max_player": 34}' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSession' test.out

#- 11 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'V40RLCB9' \
    > test.out 2>&1
eval_tap $? 11 'DeleteSession' test.out

#- 12 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5vDowe2W' \
    --body '{"password": "NQ76Dj1e"}' \
    > test.out 2>&1
eval_tap $? 12 'JoinSession' test.out

#- 13 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'RDNg9wNU' \
    > test.out 2>&1
eval_tap $? 13 'DeleteSessionLocalDS' test.out

#- 14 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7lRfhE9v' \
    --body '{"as_spectator": true, "user_id": "VvhMAoPq"}' \
    > test.out 2>&1
eval_tap $? 14 'AddPlayerToSession' test.out

#- 15 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'uUu23vQc' \
    --userID 's2YO83tB' \
    > test.out 2>&1
eval_tap $? 15 'RemovePlayerFromSession' test.out

#- 16 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'yMqLc742' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 16 'UpdateSettings' test.out

#- 17 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '3FEoWV7l' \
    > test.out 2>&1
eval_tap $? 17 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE