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
    --gameMode 'jBvm664dkPtFre0J' \
    --gameVersion 'hhh9DFFvG9sS31Le' \
    --joinable 'euAEYabGlaoGbYKj' \
    --limit '52' \
    --matchExist 'fMPMNZgUKBM3O9qZ' \
    --matchId 'oFDYruDPXWIkcqpI' \
    --offset '16' \
    --serverStatus 'v9WVwgpy55qPSfXi' \
    --userId 'E9a3w22qUErsJaDV' \
    --sessionType 'BubaY48XDIZmqiZn' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'tO1FFP6p4ajweY03' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '83' \
    --serverRegion 'G3mevvj5zeZjcWPN' \
    --sessionId 'mRA6eE4ndAwo1IAn' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --matchId 'fzEcybOYsvFnhXeA' \
    --offset '3' \
    --serverRegion 'XRWslCPEbpBNVZrn' \
    --sessionId 'lOtU9peEYB0ug63V' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8Ri0ahGTM1tz6Cmw' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XhCxjU7kfMS20CV1' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'a1MU2Pmz2ZSEWoKJ' \
    --deleted 'false' \
    --matchID 'raWsBYWCBuQxI80W' \
    --partyID 'hbJhl7cWYl3Gyna7' \
    --sessionType '2qtx8q7IJfZEB9r6' \
    --status 'EHyxQ9CFn6d3s5xK' \
    --userID 'dNhnksZU4JPoYlbE' \
    --limit '20' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'C6kbKWSnkcDe37qe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '7IqrbiFiaDIppQ1Y' \
    --gameVersion 'nf6WhlkpeTxnvHlJ' \
    --joinable '0V9az5MFcnL2OWcr' \
    --limit '72' \
    --matchExist 'tFym4BELgCcWZH1I' \
    --matchId '7MqVS4TceUT2hcj9' \
    --offset '100' \
    --serverStatus 'f8SEKa41uuKISpow' \
    --userId 'T3saFuzmDf3YW7ik' \
    --sessionType 'L822YgQK2Pg6ITR9' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 9, "current_player": 44, "map_name": "iQk3FSCDxVUmRy3I", "max_internal_player": 91, "max_player": 81, "mode": "phzV8zug06Yp1xvm", "num_bot": 40, "password": "Jz1UwFqfvATDJIoE", "settings": {"ZBo1VF1L9pmuFOZF": {}, "J8siKOTJYjAKRm8X": {}, "re2CYAN3EzL2t3nW": {}}}, "game_version": "rbZJMw9PIfyg8p3W", "namespace": "2UyghAYzhJ2PaHn5", "session_type": "o1YwlgCjukIvcTh5", "username": "Nfw4Xkn7PLhrXM0b"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'K9OPeIBgpAZ9erzX' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'lKYVTxzSweBURZzd' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Cn8TZ5a3q5fkgxdk' \
    --body '{"game_max_player": 61}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZAZLTgVwwQvAMHbh' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'o1btX57i8xjA47hl' \
    --body '{"password": "jiQidlHJZXzycVz1"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '8ViMzoBx4BcbfGV2' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7EtkLK54qV7k4DeV' \
    --body '{"as_spectator": false, "user_id": "KhBtrIToZtfiSUTg"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5YA7ZrvkaQydiJow' \
    --userID 'Dz2lySsnh7umD0T0' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'GR9a6m2NPc4nTZfW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'FQf0hCNGvuwpsd8h' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE