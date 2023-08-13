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
    --gameMode 'lgdPm62BEGfhmLa3' \
    --gameVersion 'fUMGM5jw6eGpTu1F' \
    --joinable 'tTrqspCCzhRz98eM' \
    --limit '63' \
    --matchExist '2ck4EC49n9sbTgbK' \
    --matchId 'IWz1kPZmswkq3e2R' \
    --offset '100' \
    --serverStatus 'XQ0uDdlvtuPlr1vX' \
    --userId 'gt43jyAkKER9KjGO' \
    --sessionType 'XOJWi8WPhSHfZB6b' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'LO4hph04sEoOdZFs' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '52' \
    --serverRegion 'kmweKRsduA6w7F6c' \
    --sessionId 'Hk83eBSoXAnyKIPr' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --matchId 'BfC5rhNYKKO1fZUz' \
    --offset '74' \
    --serverRegion 'zEdmaxgStzjGh6Zb' \
    --sessionId 'bB6CVSzCDEyf2LKR' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'M784X7ZVxSrAIaK7' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XQpyNFhlHFyV5xM4' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'yW7hSEyGbQxN19mi' \
    --deleted 'false' \
    --matchID 'qEVBQ4MlPzxI2PZf' \
    --partyID 'yUKuD8X9mcexUuug' \
    --sessionType 'TXAo1RpE1dDYXQ6B' \
    --status 'ZgZiQGc5RNtRzXNu' \
    --userID 'BwZIcIAF7al6mZPK' \
    --limit '13' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'sMGYDnwpCeCfeeR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'DORZqO2YndQLy0M6' \
    --gameVersion 'NQonSJnEXnWs3fAE' \
    --joinable 'Q1HcN3XHAaVjaJrR' \
    --limit '77' \
    --matchExist 'Qe9kEg3bjs7eQIFd' \
    --matchId 'itTEoWQ5FbOKKcmW' \
    --offset '88' \
    --serverStatus '5GIyYiEEGap5m58S' \
    --userId 'r6wTQ1jV612bbWpf' \
    --sessionType 'WTa9jZ8GfudbOh7L' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 4, "current_player": 91, "map_name": "T2WA5h2imcHS4A3R", "max_internal_player": 58, "max_player": 34, "mode": "zdcGR4QxZuxtTpeY", "num_bot": 13, "password": "dPopgohjp1HwM7u9", "settings": {"Z8vEGtMLQqV0qsdL": {}, "CM8GB40Fv85CxWCK": {}, "SfeY5YsAwDhyDkgY": {}}}, "game_version": "9ylewHzUxJskaw0Z", "namespace": "xQmfXdoPszeRhhMY", "session_type": "GmeTYE2IbJ6HHdSd", "username": "bGVZ8YRoCynWOqtQ"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'hSuptT3L2Ws71Qxt' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5nkg5dEvHm5ct6PR' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'jgV3qVZmACRjcah7' \
    --body '{"game_max_player": 66}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'j2Ik8L7Il3Ytolk5' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ePcoG3UBBXzYdyJX' \
    --body '{"password": "CJQKz1BywrZm4mHg"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'CTgB0o2gGouBNIGl' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'nZxnGMxdu2lKQqNC' \
    --body '{"as_spectator": false, "user_id": "bqej099F0G79H6tL"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xWeyofvAufraMd0L' \
    --userID 'O2PL5P5eyOrzmkG5' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'PuR4tfmfidx5KwSL' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'xvBgbTel7C6lXTFF' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE