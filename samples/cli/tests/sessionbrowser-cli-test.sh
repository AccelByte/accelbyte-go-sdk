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
    --gameMode 'kAmpgzPcBEaFw3hk' \
    --gameVersion 'LInzMZ1ZiTtwbyUX' \
    --joinable 'glZPd2wCqnlRlEVq' \
    --limit '36' \
    --matchExist 'VNTQVC9ZCf5pxSiY' \
    --matchId 'crRGZ5ctzxGORgpl' \
    --offset '69' \
    --serverStatus 'APAVFSi6V1K3Qda7' \
    --userId 'pNiLLBvi4EvXiuQz' \
    --sessionType 'q4wRFIDIq0i6Wo2o' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'dH15xdppnyOoeoSO' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '78' \
    --serverRegion 'zDZwBszRY6x4QP92' \
    --sessionId 'nWdwXfouOeYwOXtH' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --matchId 'BnqmsuEJE2MHHi4t' \
    --offset '59' \
    --serverRegion 'qgFvz7WJhoDWx2eq' \
    --sessionId 'dLidkXrwFPyylaHX' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XLj8UVCmrIfyYlYR' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Bb9DIqBLclB17EHs' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel '1dNGShobixKPglIj' \
    --deleted 'true' \
    --matchID '4qUiBWXLonRn8NIc' \
    --partyID 'HVSCb8LlVrmOZRg8' \
    --sessionType 'Ksrr2O4o3ntqZvyT' \
    --status 'JECCYbbVtAlV7KCp' \
    --userID '8IcrGexIfLQ4xE59' \
    --limit '45' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'RbG0zaLUANnfi1gH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'KXCJTnDDyuD64IFk' \
    --gameVersion '2wOV5uywRtAfPiuG' \
    --joinable 'ey23Z3gq2C5Zww4L' \
    --limit '46' \
    --matchExist 'bbIiNWtVKfAN9cKd' \
    --matchId 'NACUKDGWM5zzCI9E' \
    --offset '8' \
    --serverStatus '0boomeFW8fxhtE2q' \
    --userId 'h34oJWzj62Snjyvq' \
    --sessionType 'eEif7qQqDNhOr9W9' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 30, "current_player": 72, "map_name": "WYvY7bOZ1rZrbdbi", "max_internal_player": 67, "max_player": 68, "mode": "5PHQDYvy8OwNJugR", "num_bot": 27, "password": "7QwssGMkYhmEdMpY", "settings": {"Ko7CLJ2T3iUMYUIn": {}, "Fva9mhc46xuqjX0j": {}, "pE4VF1Oi6Mpbufw4": {}}}, "game_version": "zf4S3XTNGy4ja1Bt", "namespace": "TK577X2kS6XRcKU1", "session_type": "YzZZDGSwYBZ1xidO", "username": "hnNzx5srxKpfQSzz"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds '8AO839EuYyEiDTlp' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GDdcM7qp1SpEwVBd' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'LylnPrZwfM9vUV5z' \
    --body '{"game_max_player": 57}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'JX8dBt0ASXGsnG8X' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'bM3Lc6V0Kw1iFNvK' \
    --body '{"password": "3xRYJLvJTt12DRBp"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'JVF2C7C0XdYlG5wo' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8e9hlsSxB4XqUzoO' \
    --body '{"as_spectator": true, "user_id": "saXBeP04VE2f2gKD"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ulz2nDuePo4zPGen' \
    --userID 'g7dTyc6hY35XZ9zP' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'vdIqLrO6itEs8zPn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'FXKmtHWLCrHVB3nB' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE