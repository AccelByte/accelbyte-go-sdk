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
    --gameMode 'G5nakKYym7TDZBIj' \
    --gameVersion 'Gr5q2HTko5b2Q9qX' \
    --joinable '62JnigqfeBrMcmfc' \
    --limit '49' \
    --matchExist 'oLQf2gLRCxymMdCi' \
    --matchId 'Xsj96VYsgEbra1fB' \
    --offset '47' \
    --serverStatus 'a8oRzkOUkrVWoieu' \
    --userId 'vw44RhVn8cGiovDv' \
    --sessionType 'tk1tSsIHJ2dI1zFB' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'X8duU8zZsMtEoyPE' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '9' \
    --serverRegion 'PgxjJ04OXBqFu2kB' \
    --sessionId '8SYn3IfCPYg2uLoP' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --matchId 'p1Qrd82Cuxj4fQta' \
    --offset '18' \
    --serverRegion 'j3adSWFjOTOAEPlj' \
    --sessionId 'Apd1HWSE223cy2po' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'pjEUZMVhqsEPVrFz' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sueWki7gCBft6vpN' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'AL1pRS2zqI3DVFMP' \
    --deleted 'true' \
    --matchID 'l4WIG22lAdCDv2ua' \
    --partyID 'NJPN2uwnvIUMq3kE' \
    --sessionType '257eRVfbW0SEfUJF' \
    --status 'FEyT2HWF5Goy8WY9' \
    --userID 'dwOfM9UHR8e3TIbp' \
    --limit '78' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'hyKgf7o8D2Uwpcqu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '10OdG2fsxPcc7rmx' \
    --gameVersion 'DKm2uYiEsA1tQ40s' \
    --joinable 'ft2aD0WoRIHpdC7G' \
    --limit '83' \
    --matchExist 'anEwOtRin7gwUZSE' \
    --matchId 'WHOBsO9CYc9SFrj7' \
    --offset '60' \
    --serverStatus '2G0tAIHiCknSYzoY' \
    --userId 'PKVzCv4oLXC5aFeT' \
    --sessionType 'f0XGMwz6Awg8zqQW' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 98, "current_player": 37, "map_name": "ajWck1LYmGRFxb9f", "max_internal_player": 7, "max_player": 48, "mode": "kRF30CRD7jR1FZNK", "num_bot": 49, "password": "HryLv19LPBgR8zYI", "settings": {"Yb0YaQgZUHPLHWHz": {}, "ZVotjIGvwjLtGJIq": {}, "o4YAEml7wFy0Jtz5": {}}}, "game_version": "whxva9B7IbpHAqCD", "namespace": "4PFvAjX9vNhLJREJ", "session_type": "9arnb3DHgXmrcBOx", "username": "OP8FusgSO16UY5GM"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'HwnRyvBxkM11JnRc' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 't6ubBjclyzybCRHC' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'iVLVzFGbTMTf8AIj' \
    --body '{"game_max_player": 98}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aBF3gPocBpSBAPtV' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xHUIfjBF3x2rcKJf' \
    --body '{"password": "UPeDvY0y3rRvlQw8"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'zHpNy6mYSAJzp24J' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ClNTuVWwPOYLngeQ' \
    --body '{"as_spectator": true, "user_id": "YeBOVhYV1b3JrXh3"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wdlRI1DYMxtn9acO' \
    --userID 'vO4Bka5pC2zmvRxB' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'dGUpt4rj6yfsevTQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '3YgQOwTrsTLAObSc' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE