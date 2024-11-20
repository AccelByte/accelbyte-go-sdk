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
    --gameMode 'RWhVvIB9VY5SSh9J' \
    --gameVersion 'k5N7YAwYkVCRMk69' \
    --joinable '2Jn2bEhHrIQ6pEHc' \
    --limit '10' \
    --matchExist 'l7kZ0SgRp2GInz6x' \
    --matchId 'xZbeTmmnqcyJ1UMs' \
    --offset '4' \
    --serverStatus 'RkNfEzl4XAoG9ZzW' \
    --userId 'jT0P2vaECiU7YbBc' \
    --sessionType 'S43M0P4lNEL5PIcL' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'mDxhhvoVvdciMtt7' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '93' \
    --serverRegion 'Miqfz7kmbaibAniv' \
    --sessionId '99g00BDgOsAMpGIh' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --matchId 'lpj3VQWikUBwwv24' \
    --offset '8' \
    --serverRegion 'RLGrv5WvFUE6AdRD' \
    --sessionId 'tvfW5pas58aNGsrK' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZXphWqi4TegAUiHU' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ilhI1aaBRxN1zw2O' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'gyjTyMt0tYxIM7Hv' \
    --deleted 'false' \
    --matchID 'vSGqCV2o8CC1Pbbs' \
    --partyID 'UjK86TYEQ7pJkxLl' \
    --sessionType '5PZupemvhRfr0xJG' \
    --status '9Nrx1rn2UPKl9DOG' \
    --userID 'qz2NL5fSHzwLJEL5' \
    --limit '83' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'P0OE1bfADRwx6Syq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'J4SDKwPrO8P1AQMl' \
    --gameVersion 'ig7FozRL54p5ayqY' \
    --joinable 'YadXGv6YzBOmTSsC' \
    --limit '63' \
    --matchExist '8YCLVvewy8EjZEy8' \
    --matchId 'jreiOgB77MyTX7fR' \
    --offset '3' \
    --serverStatus 'pYcyGz8zp3J6SFlG' \
    --userId '89CpVsrek681Cvuw' \
    --sessionType 'dN5AMwlL5lrchU0K' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 53, "current_player": 0, "map_name": "F0WhaBU7YB447ew3", "max_internal_player": 37, "max_player": 90, "mode": "lIUH3YzNNnSLmrbH", "num_bot": 63, "password": "PqKJv5BVlN8hnZpb", "settings": {"oU0oooIgIRpJeNti": {}, "UC0tKP9VIfPQLh48": {}, "REWG4khYW8HephlR": {}}}, "game_version": "aTm9Vn8CbVmtK8BA", "namespace": "6OZOuQbDnQQdgBq2", "session_type": "zYnGzXqK1BhDkwCC", "username": "sE3crCxp71NWtswo"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds '4un8wch8OcvXzQHr' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'biwSSMF8iK7NmqTn' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QXsIFGKee4h0N5PS' \
    --body '{"game_max_player": 85}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sZ5zZPgFthjGULdp' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'S6fg8swJF4XBnDIq' \
    --body '{"password": "FB2bDVKhhToPG9BC"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'so5QEOCuBHHcpGqP' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YEEDi9w4ZShrGwiy' \
    --body '{"as_spectator": true, "user_id": "FgpAazKNuWsQCRkb"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5Tw2Rk8Y3iy24Qm3' \
    --userID 'etkc82WFy2qURDp3' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'pwMMFD9XIemnrTX2' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'VAYKR98HewdZ51Zo' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE