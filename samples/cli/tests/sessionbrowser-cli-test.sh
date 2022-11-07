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
echo "1..20"

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
    --sessionType 'VuVahFTt' \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --serverRegion 'epW4697S' \
    --sessionId 'By9EPm6E' \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --matchId 'sFaSftfA' \
    --serverRegion 'h9X0RCrj' \
    --sessionId 'izTSL0R9' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ph6eXOPx' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'HNnDDene' \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'PWAGnWie' \
    --deleted 'true' \
    --matchID 'lnSOoH35' \
    --partyID 'PWoWMonJ' \
    --userID 'YR1WJ14s' \
    --limit '16' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'pwk8g82M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'xqPlUijf' \
    --gameVersion 'P4Xh7lxU' \
    --joinable 's91ZKsT8' \
    --limit '49' \
    --matchExist 'BFtl6oUQ' \
    --matchId 'foEZV6Tn' \
    --offset '31' \
    --serverStatus '3R16ao98' \
    --userId '8i9tDHAk' \
    --sessionType 'CeBUNeTY' \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 96, "current_player": 39, "map_name": "sbbrVQQd", "max_internal_player": 95, "max_player": 9, "mode": "e2jAukZU", "num_bot": 9, "password": "XxYz6070", "settings": {"SE8h9Dw5": {}, "j5XVu0Qq": {}, "Zq21mtZT": {}}}, "game_version": "va2gOjl3", "namespace": "iJGlSPxP", "session_type": "9WyUUQD5", "username": "KqurtmDq"}' \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'ZBuOh0ml' \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'm5rvHvJb' \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'neTZIOTC' \
    --body '{"game_max_player": 96}' \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'x6bFjpc9' \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MzBTJ0R9' \
    --body '{"password": "dgwtCeDe"}' \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'q2tWTJpS' \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mhEhMtFr' \
    --body '{"as_spectator": false, "user_id": "cZyPNzxH"}' \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fJmhcObO' \
    --userID 'C6yTh0nr' \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID '5YqUZeKJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'cEmksMIv' \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE