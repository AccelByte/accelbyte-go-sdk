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
    --gameMode 'eakqqm19BppAXHes' \
    --gameVersion '2DGTJTuNgdBaLFuT' \
    --joinable 'PrNSTpkJyKozb8BU' \
    --limit '95' \
    --matchExist 'Nm7Dzccx3JqHV2xC' \
    --matchId '6pQ0ryd6kDDIGEO7' \
    --offset '69' \
    --serverStatus 'WS6kXAitZyG3N4UQ' \
    --userId 'oH0oaxvKjFhny9MR' \
    --sessionType 'yD253luZN1HMThx7' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'LEpTQc88Z2novJKU' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '63' \
    --serverRegion 'g5eN4hVC5ogzzrxz' \
    --sessionId '95xIdAOxsAERgP6b' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --matchId 'X519qs2WvLTDoV9q' \
    --offset '6' \
    --serverRegion 'MYDqIXOliXVW8fpt' \
    --sessionId '9ukjKTzkWBA6MLcj' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '1CuxEFsTKhicvrQp' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'whvwZqQsRvFWuuxm' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'fIOKYmcXamD5FQrM' \
    --deleted 'true' \
    --matchID 'cJHhAgBPaeiim0EW' \
    --partyID 'r6dQ0wNRuTE2V3uA' \
    --sessionType 'vuoh00xLcRAd2vEO' \
    --status 'YfR2kLWjI9WXEEjk' \
    --userID '4oKl3bVNnDTyLVm4' \
    --limit '42' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID '1jEK3pXwT4Itv8Fh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'B1wKhbrpEU9R62IV' \
    --gameVersion '4sENlijitxWoxjYc' \
    --joinable 'PvFA2zKCfPuwIACE' \
    --limit '9' \
    --matchExist 'cRtYx91SYOSlHR0r' \
    --matchId 'HRvUeqQZvkpv7qod' \
    --offset '27' \
    --serverStatus 'Lz6hP9v2rBZYgQNN' \
    --userId 'SLuIxUTXNzJZFqjV' \
    --sessionType 'aMpOIyhsVdlaIpb9' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 11, "current_player": 54, "map_name": "6mHWX8x129VNLM9a", "max_internal_player": 100, "max_player": 69, "mode": "Vb1QqsIL1tYkQTnY", "num_bot": 70, "password": "RIHu0SOkiOBGwlDq", "settings": {"Gyz5nFQfEMxk08KF": {}, "bGXVFHdcyUsHnVyW": {}, "9OByqvVXZNcTg4su": {}}}, "game_version": "q5GpncoPj580PFpt", "namespace": "6NDIBNmePoxJ8iiL", "session_type": "FONXaTKKjsSUMNSH", "username": "RNKAEexXorjrD8Jx"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'QTlILWTjhwANFF2Q' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qkYdF7nHSsyDrNPU' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tSwoICIHARjigtNK' \
    --body '{"game_max_player": 80}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'go8pBckUCOq6ymyp' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'IxpBMRmkqEX1APSb' \
    --body '{"password": "3nIWStzXFqE1IJu5"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '4XrcwS6nmZ8J601u' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dv3ad0qjDD9P6WnG' \
    --body '{"as_spectator": true, "user_id": "9IX2rPrcx3Wj42v4"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GCZjiqMpOtXZYAeN' \
    --userID 'aB4nBbUekfdiISGQ' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'joz3Y8eoy811ACfZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '3T0GwOIvCeMLgaZy' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE