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
    --gameMode 'BJMdWd5Lv5ElEENH' \
    --gameVersion 'UrXyYWaShRqo4WI1' \
    --joinable 'DazAUHZI9OIExv8X' \
    --limit '69' \
    --matchExist 'kNidValK59Xg3AqW' \
    --matchId 'yGyjmj0TwwS8BeEY' \
    --offset '56' \
    --serverStatus 'mQIts7pzpMx6W3tv' \
    --userId 'D6A0T3NP0VxGJD6b' \
    --sessionType 'qK1DtVXBZwTRAgVI' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType '5vYfNzNDE95YnASr' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '100' \
    --serverRegion 'OSG27eLiKLxnrA2J' \
    --sessionId 'dKJDZHqW6q77eRXS' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --matchId 'zQUbZjAbUwWEKbym' \
    --offset '11' \
    --serverRegion '0iX0opu1jD8YIwJ5' \
    --sessionId 'SHVaZwgf7jF70fKu' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '19QwIreT0l6ekMyZ' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'd5mIVpV3By3FakVk' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'NME1sNaBhD93Z96A' \
    --deleted 'false' \
    --matchID 'M2lsm9E66JQoO1yZ' \
    --partyID 'GZQF07c0CkHEa0Wd' \
    --sessionType '6w1aiGh2IcGXeT5h' \
    --status 'WGAbu5gnD2e7RkEO' \
    --userID 'xwqqXXXzpINrNL3u' \
    --limit '39' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID '3ZER6cHlM5raMReO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'dVAGnDqXVzTFeIUh' \
    --gameVersion 'r3qxDWOkkA0H5alK' \
    --joinable 'sgjBKCJU7UROgpro' \
    --limit '15' \
    --matchExist 'M8ERKbv20TA4ZdHu' \
    --matchId 'L1d31JqLEnSUeLsz' \
    --offset '95' \
    --serverStatus 'Dy6Dlqkb7fecMzZ6' \
    --userId 'vnI2UJ2zaEMMHLVM' \
    --sessionType 'YurkcpMoxiKrL5wf' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 81, "current_player": 22, "map_name": "gKhHDSpmcVFtMTH6", "max_internal_player": 67, "max_player": 69, "mode": "JBiQNyPknewScfQJ", "num_bot": 72, "password": "CWZsTr11fHWWHzfr", "settings": {"HbzNBBdHzLbnJu1c": {}, "9A2Bg9byIxBYF19N": {}, "WikSndUyTLeIq7mB": {}}}, "game_version": "xtXQefAAlEjOi1o7", "namespace": "cAaxxFuIGlsHZr08", "session_type": "QtduuIdrIE0zZUcs", "username": "nycRGxM5YiBHcg7T"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds '5ER4AcOdEBzrK6KR' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xYRoPTh9PUobPqvW' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MYNj61Ugo38rrmMA' \
    --body '{"game_max_player": 88}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GQU2NsrIuxQpBOmZ' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AOkqcRTP3jkcB4yz' \
    --body '{"password": "9GxMpFTQCBfI65ws"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'OkbJVnWHoXltcCBB' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'r9yQuG5kRgxL9FqS' \
    --body '{"as_spectator": true, "user_id": "BNLJ443aYKiUd2hG"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'oXrD4iOqne5xbyoD' \
    --userID 'rtUVmlVWpg2sraJJ' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'cZSzoYv0PKGOvaFn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'OI1jO392fAQpiAz7' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE