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
    --gameMode '1fLGK5bRbFm2uVK7' \
    --gameVersion 'rbaE5hkAmGSiKB66' \
    --joinable 'F4Y4BWUfS7MZwQ7Q' \
    --limit '94' \
    --matchExist '0yu8GcSkDn34socd' \
    --matchId 'iS0LGSncGQgG13wC' \
    --offset '93' \
    --serverStatus '5peZYEbBdusel0bG' \
    --userId '0CabNF2uYzJfhyU7' \
    --sessionType 'IdqumcW747H92E1P' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'JVErZDgbxcVyZoC5' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '16' \
    --serverRegion 'jSJiBJ826tGe0SKV' \
    --sessionId 'V5uxW0zxgWg1MKXx' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --matchId '42Bmr2LqyjRZcUyy' \
    --offset '79' \
    --serverRegion 'mcuTGWxhWhwF2alO' \
    --sessionId 'jgolfE4IFswFJlRl' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'JqjvSWuHMNlGGviG' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VSBPHcrAVHSKTeVq' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'AXi0QZMhT77R1gwv' \
    --deleted 'true' \
    --matchID 'tBDXUUcYZJ84upcO' \
    --partyID 'kIryWB7r5EMReiLj' \
    --sessionType 'UyRuecwmKsL3gqzR' \
    --status '3w2AtiA5Sl7LXiSP' \
    --userID 'ujoq430inNMibGqU' \
    --limit '64' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'jkxk2OVhMwpyZRzj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'clpOpB789Gu3rGzW' \
    --gameVersion 'buNYK9OIV01kXiJS' \
    --joinable 'yc0foRwGXtPHjc7W' \
    --limit '74' \
    --matchExist 'B5Xvq7ncmp8nAGWG' \
    --matchId 'PYkPI4nnNreHFkkZ' \
    --offset '93' \
    --serverStatus 'vbCTh62ZC9VMhppO' \
    --userId 'zh3dZQ0lVLwk7oWw' \
    --sessionType 'OSsxVt0JWuSLPsCO' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 99, "current_player": 72, "map_name": "gXuFmj1jbQeQjFZe", "max_internal_player": 97, "max_player": 66, "mode": "IJ6W38mFUt8Mm73I", "num_bot": 45, "password": "omvoHhWlYtq7w6sh", "settings": {"K4i9tvMR78yO0dJm": {}, "T0Wi3E8ce442kI0w": {}, "4AGm35DWQ5WNNo4U": {}}}, "game_version": "g9o7tHw5hgsKt26y", "namespace": "rulizNBnifGgihNH", "session_type": "p48gpgKOyda8AjLk", "username": "bQYqqKrYrZl9omXZ"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'nhYeg6HFoy2VN0bi' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'uN4YW32mUIELpwNA' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'eVW7mwUlk72veFuj' \
    --body '{"game_max_player": 82}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'kUBtSZ2MdPqSZAKU' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'kkjcwHmqGgysmSCK' \
    --body '{"password": "yffwbx22jN32Mk2A"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'KpV04uMlRplTDeNO' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DDQTSvijVnt2EIQN' \
    --body '{"as_spectator": false, "user_id": "bMaaCLeeaOD4umJG"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ekG1EXy55GAjbHck' \
    --userID '1RsZPu6sawsRJGO9' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'emTn7XxkPLwulIZq' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'yVPoUm2t59g0fz50' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE