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
    --gameMode 'IiBOntZFSD2S7RJA' \
    --gameVersion 'Joh4IlmC7JcvY884' \
    --joinable '3AyllmXl76W5MX7Q' \
    --limit '30' \
    --matchExist 'nEudK5GXY3h6m2l0' \
    --matchId 'Hnwil85lGYjMtFQ3' \
    --offset '100' \
    --serverStatus '4zCSeO4kLdhvuHNP' \
    --userId 'ffHFaZLdlTPqRgXm' \
    --sessionType 'CQp1BDmvAwjJ6mbY' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'bgnUOFP6OTjMcM8a' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '3' \
    --serverRegion 'gGSAGG5ys6BNqHND' \
    --sessionId 'N5h8cX7ZYa2ZtuIE' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --matchId '5GPEbj52qPkBztrg' \
    --offset '38' \
    --serverRegion 'hkhX3SSx443UQMUU' \
    --sessionId 'kchg8xnagHaaMpGm' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'a3SGBMwdtcDuoYMG' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5s6rc8lUk5GiowBU' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Bhzy2gwf8OUMmE9O' \
    --deleted 'false' \
    --matchID 'NTv4pMZVdbRaIBVj' \
    --partyID 'RbMNtzH1yjy7wVwl' \
    --sessionType 'BEmimWzjhY6wcmsu' \
    --status 'tAyWFpEWAhj41eTP' \
    --userID 'blYEuBxkBjV8HqWQ' \
    --limit '4' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'rhDJm5lipQuvVTDo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'pqRj9vangr4Jn4Sv' \
    --gameVersion 'TjKoSxAUWy8Wo0Vh' \
    --joinable 'BnFLHcNRm6tDwYPF' \
    --limit '24' \
    --matchExist 'KUx0IiejTTPbIZXN' \
    --matchId 'lepgZxqJAktWjqL6' \
    --offset '82' \
    --serverStatus 'ZIcqM2ZBjmmcqVkn' \
    --userId '9Tf99U1zxGWvT3PX' \
    --sessionType 'bvl5MzKTyWEE9cmS' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 90, "current_player": 87, "map_name": "3gzGclDB2Ycb9Z1y", "max_internal_player": 42, "max_player": 50, "mode": "MNqcqBLSyzNRkN9P", "num_bot": 42, "password": "kSVEufJvSyCr0EDG", "settings": {"0ZbzabuF5TQc5p8Z": {}, "7Z8jFm3ViFTB9px0": {}, "aygObvVMIahhQGXe": {}}}, "game_version": "nZ4ikZXsjyxauHvO", "namespace": "dtaVXTi8JEyG7M9j", "session_type": "0czJOCF5ZqYZFSGr", "username": "vRP5EEaP0gKN1WaV"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'JU1WMbHSvWu4fvHH' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID '4gvEMlQx92g8Hlfm' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'NwhV3UfqIPf7HriK' \
    --body '{"game_max_player": 38}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dTFNWbpX94JveJoh' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rBp0SJr1xfOXgrBx' \
    --body '{"password": "FUwkHozOaRcuadmy"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '3TMKQEZV5hsccpZF' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XTtls3OY7kaEv8zk' \
    --body '{"as_spectator": true, "user_id": "FfamRzJxv0XmozCG"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QgYpDU84eiA96TO2' \
    --userID '1ifK2PJuMWpDeFzF' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'oBBsd6nBYDwEB8VL' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'WlYrt4iSecEqr16R' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE