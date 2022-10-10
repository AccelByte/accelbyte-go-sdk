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
echo "1..19"

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
    --sessionType 'zaQKOUKm' \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --serverRegion 'RjkfTOdd' \
    --sessionId 'N3Af5WAM' \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --matchId 'N4srsstT' \
    --serverRegion 'Q4Ur7SkE' \
    --sessionId '4MLbS2xa' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'm3UhCzBh' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'wZUYE53r' \
    --deleted 'true' \
    --matchID 'Ktpjpanq' \
    --partyID '5rqrFnGx' \
    --userID 'iE1I2IMI' \
    --limit '18' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 6 'AdminSearchSessionsV2' test.out

#- 7 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'qnmP57kJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'GetSessionHistoryDetailed' test.out

#- 8 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'IT5xfGhE' \
    --gameVersion 'cgxnLLq2' \
    --joinable 'ee3SzKmH' \
    --limit '13' \
    --matchExist 'KO6OJxPj' \
    --matchId 'mi7IRXYk' \
    --offset '96' \
    --serverStatus '5T4OY3EO' \
    --userId 'ai5MiiBD' \
    --sessionType 'ledmWGW1' \
    > test.out 2>&1
eval_tap $? 8 'QuerySession' test.out

#- 9 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 91, "current_player": 57, "map_name": "ppuTl9ya", "max_internal_player": 23, "max_player": 69, "mode": "TN2FTacm", "num_bot": 2, "password": "8uDnGu0R", "settings": {"IebQHtAT": {}, "iPjZbPea": {}, "U7iRhmh4": {}}}, "game_version": "pcUbEofe", "namespace": "qY1bvTJq", "session_type": "pyIwB18y", "username": "JmKTlaXC"}' \
    > test.out 2>&1
eval_tap $? 9 'CreateSession' test.out

#- 10 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'SzUDpVBN' \
    > test.out 2>&1
eval_tap $? 10 'GetSessionByUserIDs' test.out

#- 11 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WonLmxE5' \
    > test.out 2>&1
eval_tap $? 11 'GetSession' test.out

#- 12 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YZe2w7hx' \
    --body '{"game_max_player": 62}' \
    > test.out 2>&1
eval_tap $? 12 'UpdateSession' test.out

#- 13 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Nt0yO3oX' \
    > test.out 2>&1
eval_tap $? 13 'DeleteSession' test.out

#- 14 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GjhdzQpc' \
    --body '{"password": "3OaidlBa"}' \
    > test.out 2>&1
eval_tap $? 14 'JoinSession' test.out

#- 15 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'mNFKC9Yy' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSessionLocalDS' test.out

#- 16 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6HnquDDJ' \
    --body '{"as_spectator": true, "user_id": "J7wttpK0"}' \
    > test.out 2>&1
eval_tap $? 16 'AddPlayerToSession' test.out

#- 17 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YmXjzFLg' \
    --userID 'gt2EwUM7' \
    > test.out 2>&1
eval_tap $? 17 'RemovePlayerFromSession' test.out

#- 18 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'k2P06eJi' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'UpdateSettings' test.out

#- 19 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'Skrc3Uib' \
    > test.out 2>&1
eval_tap $? 19 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE