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
    --gameMode 's8wzpq0swyLzs0ly' \
    --gameVersion 'GR8NzPtot3v57lbO' \
    --joinable 'uIN2ktE5wca2ONAd' \
    --limit '77' \
    --matchExist 'zDUATYyz2utrWFry' \
    --matchId 'zY229u6LMbawkstT' \
    --offset '44' \
    --serverStatus 'lzayE1MdtEYd0NGB' \
    --userId 'vp08goQrhRcJ5GBc' \
    --sessionType '9TCxCMgyDCnOqP7o' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'KSxnm3GzowxlWKmc' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '94' \
    --serverRegion 'G40t3qrgihjgKWxd' \
    --sessionId 'o2Yi6pwnel0PpUvO' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --matchId '74RQDoAFU3oKpYc1' \
    --offset '53' \
    --serverRegion 'IEcUkHcGaQTBWM6l' \
    --sessionId 'rH5uPVqeUG9L4PlA' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'QQs8oJlUbi657aNP' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xSQ6ySkznt9Wizk0' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel '8jrH09xt4G8Udu7d' \
    --deleted 'false' \
    --matchID 'ho20vLSIpX7XbeQi' \
    --partyID 'ARDGutPuy3F6pX7M' \
    --sessionType 'SJbwNjnUJsW67IDr' \
    --status '5ymKIFHfPwKhv5BV' \
    --userID '1GWGoNtB92ypNlI2' \
    --limit '74' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'uS3jrlx1bxJKcdC5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '59KtNiQHWZXVZaxY' \
    --gameVersion 'GkatjV0t9e8ZcGwI' \
    --joinable '0sJDwhtABZS7Bj5A' \
    --limit '32' \
    --matchExist 'j3fBx5CrI1E3utfT' \
    --matchId 'HAOkX1HmRY78xeOS' \
    --offset '26' \
    --serverStatus 'hRCZgf0Ai3oxRAVJ' \
    --userId 'ISiMiPKool8LhN61' \
    --sessionType '2M7RJer80hSDce1a' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 84, "current_player": 70, "map_name": "Ylp6rO1c2uaLUYa0", "max_internal_player": 91, "max_player": 49, "mode": "yCYhhWB0l2QFwmiP", "num_bot": 15, "password": "vkDl4VuZjjZj1x4V", "settings": {"qDk3Pcr7fATxwSfy": {}, "mp8DJgPKUCywFKO6": {}, "9e1hPKCE0NrbgaSK": {}}}, "game_version": "83FaNOs9bR8JxIBr", "namespace": "OM7yKwb2C8oU2Osh", "session_type": "w2fTK6bfFVLRPGT1", "username": "8veOBA1CH4G3Jcha"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'evhBCOO9vxfuP8wT' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'c5HQtQrxijMBY0WQ' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'zSjbu6w0OajNqYYq' \
    --body '{"game_max_player": 26}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Eknych5edjnj6j9Z' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'oxNTWiNmmE6RWCn3' \
    --body '{"password": "eWkvGkJ7QXGHmR7v"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'uPPdpYhIQ6cX4eGL' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VhFoYPNiUmA8cZqj' \
    --body '{"as_spectator": true, "user_id": "1Vf8GYZbN0vGz3mk"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YR3Ay7Dkd5nAAykI' \
    --userID 'zTG8mkPcmHZrRV6K' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'Pk5zj7VL9YWaYx40' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'gSOPtrsJNDgGYkEc' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE