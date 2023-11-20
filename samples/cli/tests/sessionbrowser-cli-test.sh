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
    --gameMode 'lULhVum2ZhsjSkU2' \
    --gameVersion 'wJ0TnZktUdd6lGPA' \
    --joinable 'KQL4xqy62uEBizeN' \
    --limit '30' \
    --matchExist 'NRhC1zqJLBStWmzj' \
    --matchId 'RdM3CTX9rntVY4sj' \
    --offset '74' \
    --serverStatus 'J5FLlvc3W2fJZLUT' \
    --userId 'ZonS0RZ2L9X7oPUi' \
    --sessionType 'gPu8fkyaMq7gYy9m' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType '11bj3pzaJlModcLL' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '88' \
    --serverRegion 'LIjgtBNcu6WT5OY2' \
    --sessionId 'qsPu3x9DlHP55XU6' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --matchId 'ovSgwLnceYyBxxt5' \
    --offset '7' \
    --serverRegion '8IyVNvRyMgDFuSWs' \
    --sessionId 'WPsABr6IKcg6JjXF' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6v9HzcA2PjxfonSg' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XBoefkCxnqo4UHYc' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Ux43X7Q5zOVHUXEz' \
    --deleted 'false' \
    --matchID 'v63ypa036TYfIPk8' \
    --partyID 'dmmoDUgRco4fVCbR' \
    --sessionType 'yNVnsynF2frfueDC' \
    --status '7laamQCdhCI3jEpz' \
    --userID 'uQs0EwLUQvWNco8v' \
    --limit '41' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'rsir9i46OKGJ8ws5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '1RN26V7XVdGmC84E' \
    --gameVersion 'jE2gDEa0wr4jAthl' \
    --joinable 'OAu95HHjswQf2MpC' \
    --limit '92' \
    --matchExist 'pF9m5JbT3a8wMgSL' \
    --matchId 'k79R8LeXIzntVIyI' \
    --offset '33' \
    --serverStatus 'gMXPgt8lR7TjAyvE' \
    --userId 'vQKo2WqPgUw8yMof' \
    --sessionType 'NaMFkjRsqAX0VuKz' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 38, "current_player": 55, "map_name": "26E3aKWygtLbirGl", "max_internal_player": 0, "max_player": 39, "mode": "ZWWvXN9BTAnxDW5z", "num_bot": 95, "password": "zkMmLGy5ktyzkX8K", "settings": {"XIEVEdVbqAmypAx3": {}, "lqXday4akBxfuNrZ": {}, "nUzzSpid8xoZNZ7I": {}}}, "game_version": "8rRnAumbxkLFwHqE", "namespace": "NVcrdIZtZeD4O0IL", "session_type": "8rGU7UYLSrcSjw2B", "username": "Oej1ziTCSDWuRQst"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'oXyeeBF1Idh5kAWc' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6riRKBWh634GQxDi' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZQFQw1CcH3P71K5M' \
    --body '{"game_max_player": 61}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'k7GpdRc4iuAsHN8t' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'B9T2GG7HBr7nXdrY' \
    --body '{"password": "BASetBjnNcNmT5ND"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'yLmMwe6uUcxk9oNJ' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SeuVZWrSTIRwKOiF' \
    --body '{"as_spectator": true, "user_id": "SmVgKI4SPRTql55i"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NaQ6UhkuebWRs8tO' \
    --userID 'B1xOFoIL00o8bisz' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'R0mI30SvsPBTzOmz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'r1JEhreNbvXU9QKI' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE