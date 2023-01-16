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
    --gameMode 'pLqy6qWu' \
    --gameVersion 'X4uMHNGs' \
    --joinable 'zMhbAdmA' \
    --limit '61' \
    --matchExist 'rNzArknh' \
    --matchId 'yPGTl3hK' \
    --offset '51' \
    --serverStatus 'kfvHqbCR' \
    --userId 'yImLTOIx' \
    --sessionType 'Ha0uTlcG' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'JlZHBjlu' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '88' \
    --serverRegion 'YKQjUZi8' \
    --sessionId '0Qnyi5uf' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --matchId 'a1LWJO0s' \
    --offset '91' \
    --serverRegion 'ubG5ERq7' \
    --sessionId 'ayi3yXDy' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Pre1y9uG' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YaKE8HZe' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'IaU3G7tA' \
    --deleted 'false' \
    --matchID '3zGtoajT' \
    --partyID '4GnCALBY' \
    --userID 'W8uCiHUr' \
    --limit '89' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'AueSFZus' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace $AB_NAMESPACE \
    --gameMode '4ZoRdnG0' \
    --gameVersion 'SIriChmR' \
    --joinable 'L0vfLpxu' \
    --limit '90' \
    --matchExist 'O6SDDiWl' \
    --matchId 'BXnKrdmv' \
    --offset '36' \
    --serverStatus 'lCJG7vJe' \
    --userId 'yRIzRTPX' \
    --sessionType '87exK1WW' \
    > test.out 2>&1
eval_tap $? 10 'QuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 62, "current_player": 11, "map_name": "HgdhTLsy", "max_internal_player": 72, "max_player": 46, "mode": "kKOxxYL0", "num_bot": 99, "password": "Gp1EogQn", "settings": {"l0hOkZ0O": {}, "NlhVSZ0V": {}, "aO7kyzkw": {}}}, "game_version": "ffq6V36H", "namespace": "m4XmKy7i", "session_type": "A3FZw7JO", "username": "XOKbbsbW"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'r5enDV2b' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '9dY8YXmv' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'OYcHjkjZ' \
    --body '{"game_max_player": 40}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SNDjPd1Z' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID '91J8D4YX' \
    --body '{"password": "0x2HgsMj"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'mKXZZMWV' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VnWWdNV4' \
    --body '{"as_spectator": true, "user_id": "KlmqxwXC"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '9dMqh5BH' \
    --userID 'GCsqSvzZ' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'Rg9Kc0YV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'UoM33II0' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE