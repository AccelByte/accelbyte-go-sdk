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
    --gameMode 'StW1JkSI' \
    --gameVersion '269FoPsG' \
    --joinable 'Ht21wktz' \
    --limit '56' \
    --matchExist '4OpkMtfH' \
    --matchId 'yAKItawf' \
    --offset '78' \
    --serverStatus 'hluu92Q7' \
    --userId 'OCAYjONI' \
    --sessionType 'TvCrMEbm' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'qvCT9WWi' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '75' \
    --serverRegion 'RmfhqVxH' \
    --sessionId 'jQ2EwHI7' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --matchId 'oDcBDDQg' \
    --offset '81' \
    --serverRegion '4TUBQPvr' \
    --sessionId 'MEniiigD' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Rhslsboj' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Zfwx8gls' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Dn4KYsHR' \
    --deleted 'false' \
    --matchID 'OHd5MXnV' \
    --partyID '6XlJvOP7' \
    --sessionType 'TNYsg8GZ' \
    --status 'BX9hoJ74' \
    --userID 'fsM0dxDk' \
    --limit '52' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'rFLId6v1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'vikOONQH' \
    --gameVersion '7EaKKp8x' \
    --joinable 'l8g2YFoH' \
    --limit '29' \
    --matchExist 'nvI8QR9w' \
    --matchId '0ix7Q6P5' \
    --offset '84' \
    --serverStatus 'byXJHjDk' \
    --userId 's8bAuqdA' \
    --sessionType 'aNwP3ovS' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 68, "current_player": 84, "map_name": "gCLeXEwq", "max_internal_player": 76, "max_player": 49, "mode": "gzK2V4zm", "num_bot": 39, "password": "mla304I2", "settings": {"PrVCXolr": {}, "GxHcGLRx": {}, "Uqsuu6Vh": {}}}, "game_version": "6yGhl37Z", "namespace": "4MQfcylT", "session_type": "PQx3o9lu", "username": "I8x8jl1K"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'ppeUowzF' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tnPYcKe3' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'gCliyLeY' \
    --body '{"game_max_player": 31}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'JHKZJKc6' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'C6tYbgbo' \
    --body '{"password": "GULC4SbC"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'OXx5mNMQ' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DRD7jysW' \
    --body '{"as_spectator": true, "user_id": "PmzTokXu"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'DIKCW3ts' \
    --userID 'NtFQuEWl' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'dcbCs1bI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'cpgEi9bR' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE