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
    --namespace 'O9ewbgfQ' \
    --sessionType 'TbQQIR3T' \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace 'ywKIlDKh' \
    --serverRegion 'HodCznAM' \
    --sessionId 'JoH7MVSO' \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace 'Nst1WrzO' \
    --matchId '0fGXQj4X' \
    --serverRegion '4fxQtWtT' \
    --sessionId 'MDQ9tfCV' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace 'WOsKpaes' \
    --sessionID 'nssflGwC' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace '8BIpvIcI' \
    --gameMode '71GgneYP' \
    --gameVersion 'cDx6nV7S' \
    --joinable 'oD7Wdtt5' \
    --limit '40' \
    --matchExist 'hflB1OVz' \
    --matchId 'iauo2eZr' \
    --offset '26' \
    --serverStatus 'mO68qm1y' \
    --userId 'kUL9x1R2' \
    --sessionType 'ryiglFGk' \
    > test.out 2>&1
eval_tap $? 6 'QuerySession' test.out

#- 7 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 4, "current_player": 19, "map_name": "kzKNlfmh", "max_internal_player": 97, "max_player": 97, "mode": "RHX5G2IN", "num_bot": 13, "password": "azmumDYw", "settings": {"UWmhlSsU": {}, "lN1VuUrG": {}, "7NC3J2jh": {}}}, "game_version": "WltMQUQQ", "namespace": "ouduoowE", "session_type": "SRWH7XYK", "username": "pUh3RgN7"}' \
    --namespace 'ql3lCCw6' \
    > test.out 2>&1
eval_tap $? 7 'CreateSession' test.out

#- 8 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace 'ce5dudTp' \
    --userIds 'MlYeT2vp' \
    > test.out 2>&1
eval_tap $? 8 'GetSessionByUserIDs' test.out

#- 9 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace 'k8TxHf69' \
    --sessionID 'vQZbyoIn' \
    > test.out 2>&1
eval_tap $? 9 'GetSession' test.out

#- 10 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --body '{"game_current_player": 85, "game_max_player": 99}' \
    --namespace 'fnTMKGRW' \
    --sessionID 'feU1SOTK' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSession' test.out

#- 11 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace 'wnISs7hL' \
    --sessionID 'eFu29W53' \
    > test.out 2>&1
eval_tap $? 11 'DeleteSession' test.out

#- 12 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --body '{"password": "ULbdXgE1"}' \
    --namespace 'mxHuMCIS' \
    --sessionID 'SWxIZGBe' \
    > test.out 2>&1
eval_tap $? 12 'JoinSession' test.out

#- 13 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace 'lCR61mYB' \
    --sessionID 'avgejrTs' \
    > test.out 2>&1
eval_tap $? 13 'DeleteSessionLocalDS' test.out

#- 14 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --body '{"as_spectator": false, "user_id": "soyfHS5g"}' \
    --namespace 'b3UZjCMb' \
    --sessionID 'bmdVOpEo' \
    > test.out 2>&1
eval_tap $? 14 'AddPlayerToSession' test.out

#- 15 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace 'p6qIoFIv' \
    --sessionID 'K2nT52QU' \
    --userID 'PPyxhYOH' \
    > test.out 2>&1
eval_tap $? 15 'RemovePlayerFromSession' test.out

#- 16 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --body '{}' \
    --namespace 'Van9aoNT' \
    --sessionID 'h9xUheHY' \
    > test.out 2>&1
eval_tap $? 16 'UpdateSettings' test.out

#- 17 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace '3Lzuvhlz' \
    --userID 'lycXE4WI' \
    > test.out 2>&1
eval_tap $? 17 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE