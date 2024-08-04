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
    --gameMode 'Emil1634FZRSId9X' \
    --gameVersion 'IYVXziGaZA1zpTIt' \
    --joinable 'uCLCpVUQdAThcpF2' \
    --limit '19' \
    --matchExist '1McJebJMbaAD9zF8' \
    --matchId 'LI0m3qsmT8xRdz8R' \
    --offset '16' \
    --serverStatus 'onnaH3qJeGXF69AC' \
    --userId 'K0Cw7CvdilPhckQi' \
    --sessionType '6ko2rvmGkh4m7C4p' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'YQbL22FMFjskU3Ag' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '99' \
    --serverRegion 'bygoqhCgPNPB0X1Y' \
    --sessionId 'kkoDTcJ5NS9UylIO' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --matchId 'SILPxlR3qaPREssK' \
    --offset '66' \
    --serverRegion 'o0lmKG9Msbe4yHfn' \
    --sessionId 'OBfhuf7kEPxPedNh' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ID5mR9apalE8bB5F' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6czOOTJxsMIFiTYT' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'l52RfsQfTDaewoYQ' \
    --deleted 'false' \
    --matchID 'bonsO4ZhUm67c4GC' \
    --partyID 'lGUvatVa1mZu722s' \
    --sessionType 'QenG7dMu9pJcP0fO' \
    --status 'lU0UO3sFKhcY2F59' \
    --userID 'kn3sLm0xDzxvVRQ0' \
    --limit '70' \
    --offset '14' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'T4y26YGN9gG4gyW2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'WyL8MwBTlupnI7zs' \
    --gameVersion 'f2wG9W7JtMo2PbtC' \
    --joinable '6LLnUBfuuCXaAsIm' \
    --limit '81' \
    --matchExist 'exP1ecUwXMiucyrO' \
    --matchId 'K4DUDYD8sl3Ld0Xf' \
    --offset '49' \
    --serverStatus 'aqQCoMc8kPNV7xra' \
    --userId 'L7jgMSEGqeYOAee5' \
    --sessionType 'DDqxJtNkPDq4oTs4' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 35, "current_player": 66, "map_name": "OV1YrKi563bhZ5lw", "max_internal_player": 62, "max_player": 64, "mode": "XsHfZmOXdDQ8PNDx", "num_bot": 13, "password": "r8N2hASCJAZ21E3X", "settings": {"YifNt66E2oy94UFv": {}, "271WLiho3HKbrBAZ": {}, "XOjd7Nbw0zaZB5Zs": {}}}, "game_version": "ZAkcrbgvVWreTxkU", "namespace": "yHmukMXkWZlazXPm", "session_type": "3JhuHblLWFpm65MJ", "username": "X13FlZ20dqkxmUb9"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'yEvCf1ZxwekwAuLv' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'uQ6VD63fnu0EYN0O' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fEbsGIm07wfDxkSB' \
    --body '{"game_max_player": 55}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'CrLrkHCHOSYDdZvm' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'm17N8fvXyZ4Z911N' \
    --body '{"password": "Fkkl6xrGRc4MeZQ5"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'TzMgXElf8JW54AOk' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '7wqcgsi7LX6pE1zf' \
    --body '{"as_spectator": true, "user_id": "8mc0AaNbO4irmhOL"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cfe5p4taO5HRMZdC' \
    --userID '7ew78BlScAAE1dFW' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'ERnZbNGNfVSxa68A' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'omVMp2zLHOMsNvTb' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE