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
    --gameMode 'iQIiFgNSmVlCzeqM' \
    --gameVersion '3hYqnsFO3UXisHB0' \
    --joinable 'HaNUwmAjJnA0aCAP' \
    --limit '22' \
    --matchExist 'ExeHeriBNhVxkQy6' \
    --matchId 'uwTvrFVAWW1GtzpH' \
    --offset '19' \
    --serverStatus 'zdzG9w4le5UueB6O' \
    --userId 'VJzJdMFMQcs5mRUq' \
    --sessionType 'bgztcL7U5b56qB5z' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'Ascg7TxPpsK4rqY2' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '6' \
    --serverRegion 'EWzLxsgsRFHFjZiC' \
    --sessionId 'Voz9ZEeyAR9VwTfo' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --matchId 'HkmYHBb6Hut1kZJ2' \
    --offset '33' \
    --serverRegion '7nkcAiZcXRoYc1J3' \
    --sessionId 'RSHsq5mvPWYAqHH5' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hg8DuOZJ1uUcP9LX' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'LDzX5L4xIQo68gWJ' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Ta455pXtpPLTMHBT' \
    --deleted 'true' \
    --matchID '7cxQ7nCAD8NmgYHE' \
    --partyID '7CrRPYfdyDMQa7Eq' \
    --sessionType 'Ltzax4RMdQreNQEQ' \
    --status 'EhEwiKwT88zSL7ib' \
    --userID 'Wk6oX5twJMdKI7d5' \
    --limit '62' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'iHNTQJCFp2isNZoV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'Qrm7rNzuTQ6BAzZr' \
    --gameVersion 'pJkzVomyPtWjpUy8' \
    --joinable 'BlKnt2deMOQ9UXdg' \
    --limit '63' \
    --matchExist 'NxE4HNYHrHMSFv58' \
    --matchId 'WjPWdbcNV9PR1TlR' \
    --offset '78' \
    --serverStatus 'uCRYnAY2LkokJoPR' \
    --userId 'EdffZdOfhbrRuUX1' \
    --sessionType 'OfBZOZRJexLTiv0u' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 48, "current_player": 54, "map_name": "LIwswcTrSCUFWgPk", "max_internal_player": 84, "max_player": 98, "mode": "OnDworl12LvbzEzh", "num_bot": 70, "password": "XLtYCM1iMEG4rXqn", "settings": {"iN1zbnSo0DI7xh6D": {}, "BL5vG3sCvGX2kFuT": {}, "rjljCJgeyQY5STbd": {}}}, "game_version": "YzNuakjkYYeUUYtN", "namespace": "tUWE9jdKz1PssLh9", "session_type": "519HBV9v6oOt6K9G", "username": "mu6W7V5ZlWGdvwLn"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'NrezuphyXeCo1vf1' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'IdjXI1alSyyUoFBv' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WQj0T6TZpojcYyDP' \
    --body '{"game_max_player": 47}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SLM8YZCT15BgJLLK' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'PbBqqEq20iOOuzDa' \
    --body '{"password": "QNx42q0hHAKlT5R3"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'gCxg5RXjBVI1UPOo' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'U3FY5PEsrUN3gE3X' \
    --body '{"as_spectator": true, "user_id": "DnzrZLbu8J7Spkxl"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hy8si16FMnr5X5i3' \
    --userID 'sTCGvC036L8co1tf' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID '6UPGGDGMZfhzqYwi' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '0oMUTxl11e0y1DFj' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE