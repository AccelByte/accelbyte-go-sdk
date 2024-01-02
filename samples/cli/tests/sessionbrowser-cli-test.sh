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
    --gameMode '0Y31OeX6DI6BPmTD' \
    --gameVersion '1FAz9XImeds1XKss' \
    --joinable 'egWIe85Z9VuGZy4Q' \
    --limit '6' \
    --matchExist 'D6KxlVNZ9e4VpguM' \
    --matchId 'AAPB6OunbnKX8RKA' \
    --offset '7' \
    --serverStatus 'hyVchNRPhjXCu0dA' \
    --userId 'IopNC1caMgBovnBm' \
    --sessionType 'G7aNHWiOoWQ6JGo9' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'qkxlAbE1UIn2xkYU' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '12' \
    --serverRegion 'lFqCHaZpsnRhXAzF' \
    --sessionId 'NbkLyKupAnBpDWz3' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --matchId 'VHzLXkjhj2gbY429' \
    --offset '19' \
    --serverRegion '7AJtoOSKm5X1uJjn' \
    --sessionId 'zquckufT5JH2nQis' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'bzJafaduTRbq2vC2' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DpKZNg9hlMqVGQLT' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Qc03aFZHO2WxTyuS' \
    --deleted 'true' \
    --matchID 'Wvey9TROsPw615wb' \
    --partyID 'lXPnR0PY33OAvW2u' \
    --sessionType 'MQqFa0m7Mg3HsgL3' \
    --status 'R9B7ZCKxaT4G8YOl' \
    --userID 'BM1YFPwAxFrLEDED' \
    --limit '38' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'czTXh2yCnX6hAqE4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'Us1mH8xvfY9fKPEH' \
    --gameVersion '9B3LbKiNZqK6Of5b' \
    --joinable 'gfeaScYXe1ce7q3U' \
    --limit '34' \
    --matchExist 'MA7oJgvKDn1OG0Nt' \
    --matchId 'WCPZj2xLMmMkIc0d' \
    --offset '87' \
    --serverStatus 'QtjYsoPXTnXioUC1' \
    --userId '5SdmzBFJn4n1BPbX' \
    --sessionType 'mmu0Mx4EqyZAVMKY' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 39, "current_player": 83, "map_name": "jT6xmVmn7x2XvjD5", "max_internal_player": 63, "max_player": 92, "mode": "LYuKMGTZ4yAZKrav", "num_bot": 66, "password": "ErPPf3Wi2u2CZrAR", "settings": {"lClA4M0QGTdRFlWz": {}, "WLMjsXtUM7PPV1Xl": {}, "fISyuB3nHS8t3oTo": {}}}, "game_version": "7FFxGbmI93jJyT7Z", "namespace": "lvAHWfzALLCvrY3v", "session_type": "kOi80qrvlA3Dehov", "username": "1wO4dKsWFL7j6YBB"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'CtDaHHZiouM5Pili' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'PvCeobTVakN035K1' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RwdMyB2E5fhQtzAn' \
    --body '{"game_max_player": 48}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cxjuy1Edy1tL145I' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'T2jdgrp49dzQYKvE' \
    --body '{"password": "jAbfQQmYADDzBCqS"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'lL9Y3XWtIfhnbq9H' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WyvT9MA68RnhraDi' \
    --body '{"as_spectator": true, "user_id": "cVNrvV0aGjP8vmfh"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dJzQLujaj9ztjUE0' \
    --userID 'kMkzx1NACOjO3gTz' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'XPiu1KYuCtZPtcO5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 's7HdH1WCu5Zl3j4P' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE