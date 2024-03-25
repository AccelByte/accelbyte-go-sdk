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
    --gameMode '7Zm0bwjB7BMMpCvC' \
    --gameVersion 'W6I24cmQyjRohZBR' \
    --joinable 'DazyhRY2cJe3ibTF' \
    --limit '25' \
    --matchExist 'PRDXZrEdjQh55Q0B' \
    --matchId 'wgvMP7GUMlQldjlv' \
    --offset '93' \
    --serverStatus 'LKdFFqkBxHRKOftF' \
    --userId '30Y2IHiAA91e1bG3' \
    --sessionType 'uPZtyTl6IKV6pvxG' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'zbNxdV58tF8W2cLp' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '19' \
    --serverRegion 'Nfb2GH0l0N7eqc19' \
    --sessionId 'TYmCQHCSS7QSecXu' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --matchId 'sL9KA8a9BDFQXXga' \
    --offset '46' \
    --serverRegion 'ndrZrM4pSyxZtyFl' \
    --sessionId 'G6ck0ENWvoOiVbPK' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qzrnIEVfink7lj20' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'itGo5eIW42meUZIx' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel '65c4XG7f81BTV0rq' \
    --deleted 'false' \
    --matchID 'fTZtDdDq2Wik7gEC' \
    --partyID 'KLAH7ApAvCz9mxRU' \
    --sessionType '0JjcxS2SQoZUtz3H' \
    --status 'j1uLHp9IYTjrNyNX' \
    --userID 'iLx7oYpySEuEtquE' \
    --limit '59' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'sv8FLtPm2cVK7cZV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'hBEv57d0dHDCDkcz' \
    --gameVersion '4d87ybPSVjQ3uia5' \
    --joinable '8YNO95YviBYkInf5' \
    --limit '81' \
    --matchExist 'BdnWyWYNOWm3fzJN' \
    --matchId 'jcA3ckonKc4XgbtM' \
    --offset '63' \
    --serverStatus 'QhQF3Ghd9Nt0xSw2' \
    --userId 'mbIFLtwDoFxeB0ed' \
    --sessionType '82Zg3oBUeyqkfF0A' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 25, "current_player": 34, "map_name": "nJvcmJ1VCaaGEpVW", "max_internal_player": 48, "max_player": 10, "mode": "6QvKA0IQeWIhMViE", "num_bot": 20, "password": "tKXF4nMGjeQefQ0N", "settings": {"v2nSVOZpB4YvStsC": {}, "I7KAV8zwo3Py9gnw": {}, "DNqgwBwg5YjFaR6g": {}}}, "game_version": "hxbrUwMuVrb965Kc", "namespace": "ez0k6RIsfmEyrgIs", "session_type": "cDq2GuQdJ4xo1alR", "username": "Wpj7ChehHPzrGm8D"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'z5vLuZSdU24ldZOv' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mkxniKHSDIQWcKvf' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'g5aSHEdTLnOdax1R' \
    --body '{"game_max_player": 36}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Bu4eKQs4Nzk8OcuI' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5OeDeQXzHAeJAC9J' \
    --body '{"password": "DzONE8GebwWvXEgo"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'c0ydYJMf7emtMfu2' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Mcaxs8cVrvd6znm3' \
    --body '{"as_spectator": true, "user_id": "VlzwtvbQNEx1mN1g"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lYc04q8T4MEAvMxC' \
    --userID '3tHUJbPmvE7ycUFz' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'ghpTu0ml7kADAAcq' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'DltJEyG8s5HVFmtD' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE