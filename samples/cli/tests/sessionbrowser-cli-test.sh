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
    --gameMode 'bF6q0fQE7lcGZN3E' \
    --gameVersion 'yUfUH4NPdn9eKpyj' \
    --joinable 'fqJLyPMM8A7Fn446' \
    --limit '47' \
    --matchExist 'JvZHSIE5gCp2d7gM' \
    --matchId 'y5fN7XZ9MC5F1RQN' \
    --offset '86' \
    --serverStatus 'B4VbVQiRyoHXkyjx' \
    --userId 'S8Kg28cF9H3zXbdT' \
    --sessionType '0yIYtdQxc4llguKz' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'eSxIOpCiMuPH98Bd' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '32' \
    --serverRegion 'a7BbZumNbQFzvCVU' \
    --sessionId '9tT2N6jQDYoAtbc3' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '73' \
    --matchId '03O9sDhsFwYdPmOg' \
    --offset '2' \
    --serverRegion 'N6TNooXzJwFcXdPp' \
    --sessionId 'ogX5GLffYxFC25Ur' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'PSivST4EqIzNDz4F' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'he6E1VinYdSkve6m' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'MJQn6r0bz6LB6wA9' \
    --deleted 'false' \
    --matchID 'fSpyEoZV2r5UOJRZ' \
    --partyID 'sWPzgErN4AxL7zjA' \
    --sessionType '7Bb8ljihfFceL7Sz' \
    --status 'Oq9KdMzowSTy8Jka' \
    --userID 'acy5LbPjZpAYkaSb' \
    --limit '78' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'tvrgeAGHtAd7BGZx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'vKhDzL9YpWGNpqcF' \
    --gameVersion 'AOCvo5yEPQbxWwVe' \
    --joinable 'R6Jg3cDNSqmZGP4p' \
    --limit '6' \
    --matchExist 'NA6hTxxzKyyeYvJc' \
    --matchId 'RtHaO9Pdz7R6JJY9' \
    --offset '63' \
    --serverStatus 'rm5yPa1m0fTOUQs1' \
    --userId 'd59s4BJt804DDN0z' \
    --sessionType 'JNF7PbRKCcRLY4Pv' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 62, "current_player": 66, "map_name": "uWPWj505gUDRp4bf", "max_internal_player": 53, "max_player": 14, "mode": "Qt2YyHyqY410PPMa", "num_bot": 94, "password": "AWZHiUxvKSJ2Lsa4", "settings": {"T2FTUvmrxeLhyfDT": {}, "lQ9tTsgpnVPRBh6E": {}, "LlNWDLu1TTP0mMMY": {}}}, "game_version": "YBb4OVK9G909n5T5", "namespace": "YrzK5JBBF3zUB9Op", "session_type": "QLtEdbj34Hz1d3sF", "username": "iRTr5ktlEa3sceSc"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'iq8z1Tfz2L8sOxDz' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZeXX005pVeOkSWHk' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3k7k5IYdzKaE8hKI' \
    --body '{"game_max_player": 96}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wpN0FjlXsJnuZlOB' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cPO32p5x4bZSOoLu' \
    --body '{"password": "vWIorBxHx1d4zQGK"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'bkEX5ZLpcMl9JZSB' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fyu9aLOKkw5rjwV1' \
    --body '{"as_spectator": false, "user_id": "yucKG2DoCDwYdugI"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3P2qjs48yvsu90RR' \
    --userID 'HaY9WEp2d5mnVW0U' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'BciFmnqBUCsvZE0V' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '10HTCqk6rPH5TLs9' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE