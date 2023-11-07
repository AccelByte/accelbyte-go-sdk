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
    --gameMode 'rb3k31RArN6vFUPp' \
    --gameVersion 'ZWEALhfwh2IHmRuW' \
    --joinable 'wap1VzAbyB4AhW7g' \
    --limit '44' \
    --matchExist 'c2WYqBEgKa3Xt4lV' \
    --matchId 'KnqPkrpqsH8rd0UO' \
    --offset '86' \
    --serverStatus 'gWT2M86eHSDewYzu' \
    --userId 'Fljoux0tGrFCLOC9' \
    --sessionType 'TSSvX2ro2iGH7eZ9' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'hsKDuxn9v458eMNU' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '3' \
    --serverRegion '8m7KHhwYDEZYCOIZ' \
    --sessionId 'CxJ6tgumuDmouFXA' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --matchId 'gszaO2GV2Jn5RDQU' \
    --offset '88' \
    --serverRegion 'CbgbtO6MK2GR3WCb' \
    --sessionId 'f9YLRaXBhfPNBjpB' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Yn5AHybRhuO2LVlv' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'nj7WuPJ8TvsEOjum' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'Q9DiqwXX8f62Jb3l' \
    --deleted 'true' \
    --matchID 'YKVTeiKOsCnqMe3w' \
    --partyID 'ZrCPhC3eti6W1nUN' \
    --sessionType 'gLWRyvyk2U6BQXH9' \
    --status 'Yp1nfm6rO5Ou5VBV' \
    --userID 'fws6hw5Mj3YTBEX1' \
    --limit '76' \
    --offset '59' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'PRQRQYrAAph37Gq3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'xQbxy7z3bQ9g4sl1' \
    --gameVersion 'J7m9zRV65EBKwtop' \
    --joinable '4Rcqr2mYsEKe2Mkl' \
    --limit '33' \
    --matchExist 'qph8rCAapM6nV62Y' \
    --matchId 'K6TpnR3ItJJkdsWO' \
    --offset '96' \
    --serverStatus 'PBZqtU3cmEcC2MNB' \
    --userId '8rVDPG6aXt6Dtj3O' \
    --sessionType 'FDQCz29LI9Vhkbi2' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 38, "current_player": 8, "map_name": "Xm2FTAI7AkZzbhCv", "max_internal_player": 38, "max_player": 80, "mode": "r2pJ6twODWcPWTJD", "num_bot": 44, "password": "3qx14YSWPEJNC0NB", "settings": {"YQ2LKqYxdYFJxWSd": {}, "NqBftEaEvr2ewSuc": {}, "oxTiBJM1tjHfTPtf": {}}}, "game_version": "8pEHyaVRCsWcboO8", "namespace": "ULzMnsMugPD8r9K2", "session_type": "ObsXSsl5JrrzDOU0", "username": "j6xSpMx8LvpOUIFm"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'LwAzWqMH3p9RUcnx' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'r4ruORJrI1yi5kbl' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CK4OsRMoMy9UD2dG' \
    --body '{"game_max_player": 22}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'GJR3wuOKiBklBEoh' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fVMXRCSjvDIfqtP1' \
    --body '{"password": "pUQEAUx1HeCcdlwm"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '2ql6tOZLwMlXwvhl' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XViMWM5dQiitPwOO' \
    --body '{"as_spectator": false, "user_id": "PTVZ63ElR92cu0m1"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID '3UABFdBy6rVGbp3C' \
    --userID 'T2emyN7dYuux66IC' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'GEXoKPcj0mqWVTSM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'BPts9HisbghTDHO6' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE