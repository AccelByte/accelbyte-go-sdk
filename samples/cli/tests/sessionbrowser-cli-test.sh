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
    --gameMode 'jVv49urKaNNurA17' \
    --gameVersion 'ZSpZtCaJkBuxPa6f' \
    --joinable 'LSPu3IgPsYsMPXaY' \
    --limit '31' \
    --matchExist 'dTEzPY5QaInvw3Zy' \
    --matchId 'PNrud5Fr0QXH2blw' \
    --offset '1' \
    --serverStatus 'gDdCNcemdfHwSDeR' \
    --userId 'H0dygvvj65TWQkmu' \
    --sessionType 'CybaTyLYrVMk3WPZ' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'zCNiYilMMZ6EXlAS' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '27' \
    --serverRegion 'zh3j7mv4pJFN7o2t' \
    --sessionId 'zWwbiWDUWsA2kxeV' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --matchId 'q1gNtTJ4zE9xpCgx' \
    --offset '61' \
    --serverRegion 'FyyOuzZoUTs6QcwK' \
    --sessionId '9zy3zBxgMcZ9ZBbt' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5Fk7UcSsbkl1d7Xp' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'oSFxokZGbufIiMdD' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'BDyFAMkO2K6Xk1Pw' \
    --deleted 'false' \
    --matchID 'e63mOQ1W7Eo9i5ae' \
    --partyID 'wN1KF0L40TLIFeDy' \
    --sessionType 'm1t3Xpe9dDxrBXpH' \
    --status 'oncSmLYbkdjc08ji' \
    --userID 'r8XyXmE0IEt0ABmI' \
    --limit '57' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'lYBd0U9m6XuSfHae' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'yaKPWI34oAInbxm5' \
    --gameVersion 'oQmVLKjNXfXsWkw3' \
    --joinable 'Op4f4m4quEwlJDhm' \
    --limit '63' \
    --matchExist 'bPKjkWEONmjWTnW2' \
    --matchId 'OvV08Rt8Hou0DQki' \
    --offset '52' \
    --serverStatus '76MVEAej8XwkFb4f' \
    --userId 'UUVXSQ71OZI8GA3t' \
    --sessionType 'BHHPjnZ7iEQjNxFI' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 64, "current_player": 64, "map_name": "BtU5Wq68vKytP050", "max_internal_player": 1, "max_player": 13, "mode": "gmfFtMVfLrkHCUYO", "num_bot": 92, "password": "yCLjVwiT9qH8O4EC", "settings": {"Ri1DpiQ6sVtd6Ch0": {}, "bYDFr4RkLZagv62E": {}, "sVIt5qixaUdiGIvC": {}}}, "game_version": "qFzsl8LuMiHlSjlf", "namespace": "5sYlDaTtZNzVissb", "session_type": "IhqraOlpe7amJqES", "username": "txVWaoHnEbrOBGir"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'Y98AV5tpSXRCiPlW' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KDWBZ8jJYTFrUR1d' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'UXXRHAb3DM4FZ4lZ' \
    --body '{"game_max_player": 62}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'd6M1g0O49U5X6wSD' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'uhaWh3SBvU5ae2EP' \
    --body '{"password": "OvPrL8MPeke9ReGg"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '3p1TVJaMmSxTEQ4R' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'L2tQGAMVf2kiEoCL' \
    --body '{"as_spectator": false, "user_id": "6sLnhdNC7FvhuY8e"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'kqVnmvQg12P99MIo' \
    --userID 'DvTprjoTjcnnNIz3' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'ODWpAw5JKhze1QSE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'fVq6cIaedmLBiTen' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE