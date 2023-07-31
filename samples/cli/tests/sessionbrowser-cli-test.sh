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
    --gameMode 'MXiOvjrsslXJki4B' \
    --gameVersion '89FhqmpNiDhboM6h' \
    --joinable 'GUHRuRJIJkqjNe5F' \
    --limit '26' \
    --matchExist 'eHkBXCHZj5tyjixw' \
    --matchId 'sZaOGgLaENhGZCUt' \
    --offset '69' \
    --serverStatus 'xDIrTM2kEjZhsSe7' \
    --userId 'zGSB798HEC2Dt7Z9' \
    --sessionType '6dV0fyP3FiwWOcf7' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'yyDPc1bdhCAiLHmA' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '18' \
    --serverRegion 'w7UtplumNvadTUOg' \
    --sessionId 'AtLCP5mDKAVvOYUD' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --matchId 'ETLBxHFjyHgNYKjD' \
    --offset '100' \
    --serverRegion 'ie8OuyPOCdJhiT3P' \
    --sessionId 'SYicDnsa2tt30qHO' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'kmjtw2sd04wsYqBT' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DWOrEPxSD3QomADC' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'eLzzORuD9DCow7LE' \
    --deleted 'false' \
    --matchID 'mDUfIJ5XsdUIMSOv' \
    --partyID 'HE9ZF9HqlpbPD1Nf' \
    --sessionType 'xosunaPYcJi8l0bo' \
    --status 'UxAKzuarqOUmLj51' \
    --userID 'YctM07SsUe3XE7Bd' \
    --limit '75' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'WHCmS7vLar8T2l7t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'HhXOfCC8fd8OVSU4' \
    --gameVersion 'FT8qFeC6YrOw3EGK' \
    --joinable 'ZS7lwqgk3SkZUTmO' \
    --limit '9' \
    --matchExist '3LneoV5xjVMFHqeq' \
    --matchId 'kpuuu2DJUqbRtOiG' \
    --offset '11' \
    --serverStatus 'xJzW2zp3yCTkC9LO' \
    --userId 'hGoDpMjMBm1nnkqo' \
    --sessionType 'K8Q7DCgcEnbr3spx' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 23, "current_player": 40, "map_name": "5I2ngclMNVk8J6Fi", "max_internal_player": 88, "max_player": 67, "mode": "AFRaNqMf7vFLu8aB", "num_bot": 8, "password": "u5AgQ6HBWXWbTwx7", "settings": {"eWcheRs39lGoOwma": {}, "PvZZ5SgmTqauoRJI": {}, "btjabVuMZfKSRoKl": {}}}, "game_version": "rw1gsV87yBkMXPtI", "namespace": "QgXIuHsviLPUqhPx", "session_type": "mSToTRgUoBRWCrc0", "username": "K9oowrWY0xRFtDrm"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'lPEJ9nszxQs0HMEg' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'yESZPiiK5jdcouCO' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'L6bAMKg2SFkNWz3B' \
    --body '{"game_max_player": 81}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rsDHsvaupnYB9N9X' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'I8cdFBDwQWLxuZnb' \
    --body '{"password": "ujsr5Zx2hTUp0P84"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'TqQ197iefkjqhMvV' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'X0SS15R1er9vBT36' \
    --body '{"as_spectator": true, "user_id": "ET4LR7KeAjklR74H"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dXAQGYAPtIPfTCXa' \
    --userID '85MKNr7DCnAVGuQJ' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'JUipZIGAlQuidVuC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'W1ll33omoq0gY2gp' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE