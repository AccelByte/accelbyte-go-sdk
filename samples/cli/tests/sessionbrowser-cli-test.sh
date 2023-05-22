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
    --gameMode 'uIBaLjm5pWqdLGHz' \
    --gameVersion 'U0jWA5nYcB2PZOww' \
    --joinable 'SOsmMdeaK16i4au9' \
    --limit '42' \
    --matchExist 'utZi9NPOXkiGsbQs' \
    --matchId '8feDp233vXiaLMKF' \
    --offset '77' \
    --serverStatus 'bZi3TcRXFoZ0IvTb' \
    --userId 'lIk1augpDbbmv3lA' \
    --sessionType 'EJpvviIRPim7G04T' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'hf8KvnBCeKyhuLxM' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '91' \
    --serverRegion '9B9iE55aEAF4apTW' \
    --sessionId 'tReZQtDVaPwAITuu' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --matchId 'ORFbwszhL6NSWttW' \
    --offset '92' \
    --serverRegion 'jl2Eql42wLVw2t45' \
    --sessionId 'ekkILK1TTGyiRH57' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'FXLoYF1nvGSjfdDu' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'IJTHdzK1DTyrQhQN' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'xYH3Rhgxmd8nOSqV' \
    --deleted 'false' \
    --matchID 'ZO9TbEHJc4d8y25i' \
    --partyID 'XTTtBtkdjCLXvZvg' \
    --sessionType 'zYvF8mC3XHnNJmL4' \
    --status 'YgeI6rZ8XYEeXYiS' \
    --userID 'UMfRSaH46dZ9v7Oh' \
    --limit '93' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'o4GJ8l5AEfTENRqj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'dtfT8qli0LTOZNTX' \
    --gameVersion 'nOgUQKMIES8Re9gI' \
    --joinable 'JtCZueWfLImmqJix' \
    --limit '27' \
    --matchExist 'CLEqOCtoPnkcHuUO' \
    --matchId 'INXKM8fXDKfw1TRH' \
    --offset '57' \
    --serverStatus '37R8EsuRva9Uwv1y' \
    --userId 'uY2beiXcVFI3oB3S' \
    --sessionType 'hhCXo0CEiKIGghII' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 3, "current_player": 36, "map_name": "i2dwqJTPgyyWJkNm", "max_internal_player": 76, "max_player": 83, "mode": "21mBVmBlhE39Pucj", "num_bot": 94, "password": "uoPjKO1j5muu9VVJ", "settings": {"SkV4fVEm0HjLi7eP": {}, "XcdAINQonMrqmCKW": {}, "SWfjnJRgVVDtYaSS": {}}}, "game_version": "RiQILUMTvBAmLnbf", "namespace": "2yTSrLT72a5eQ3AG", "session_type": "R5UIQhRFVoVOCaNL", "username": "5Dkz2OhpfUVCv6XP"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'XxKjGWtWHE484S91' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'n1SPrEGCOqAQIZO4' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'U5cj7Ac9G701mcMz' \
    --body '{"game_max_player": 26}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Y3psLxaR5YRlh2i8' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'USSkZU4TJFiyJ0Ho' \
    --body '{"password": "bJt97wYFPcMxz1XT"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '2YwlWFs4fRn5MTPF' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '45AlLuXnCXXKWOFR' \
    --body '{"as_spectator": false, "user_id": "YfWoIWoOjK819LEb"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wiyuqlkfYZeE4Hph' \
    --userID 'GcATlFhn6rnvdDrW' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID '5T2RhgE2nxMXR5TI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '49873yvwb70bjpGo' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE