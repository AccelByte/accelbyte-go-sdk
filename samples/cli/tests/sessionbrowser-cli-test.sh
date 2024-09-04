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
    --gameMode 'G2id6IRqv2GxWygm' \
    --gameVersion 'DKbOq4bTC9AY9H04' \
    --joinable '2vAzkGVTIdU8lbgX' \
    --limit '2' \
    --matchExist 'GK0bTRfNbY3QXBP5' \
    --matchId 'J3JRzXt9e9KbI9ML' \
    --offset '42' \
    --serverStatus 'PBrQV26RBfjlUTYQ' \
    --userId 'hkdnLExczd16OEXm' \
    --sessionType '8cutD0fOdMuIXZWI' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'tRT1BoKlcGYbbLo3' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '12' \
    --serverRegion 'a0ojni4MPXEvsHP5' \
    --sessionId '05f23TC3gYJV4zcA' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --matchId 'vpr21uTr2StAsho0' \
    --offset '93' \
    --serverRegion 'mNqTaFPmfUm4mbm6' \
    --sessionId 'DEUJWPwXRioukB7l' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'i3KZI6yDEOcSp8b5' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aXhaiBnyOfn0jc99' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'j8Ayh5qdWt48zY2b' \
    --deleted 'true' \
    --matchID 'NTGUtAyscOUL3am6' \
    --partyID 'TXuUvoQK846aqRV9' \
    --sessionType 'ok8qRQkFDBV5lrNY' \
    --status 'iGxG3cAbX10YsrMX' \
    --userID 'u3qD2SjaPukleLcp' \
    --limit '47' \
    --offset '10' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID '0QtNt5icjNCPvzf8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '4LOU0lp783ih4qNa' \
    --gameVersion '0o5qs4WwYatVIM21' \
    --joinable 'ChGaXFnqJvhgQsCn' \
    --limit '19' \
    --matchExist 'iYgVqFUjOc7M3lPi' \
    --matchId 'rxVMuvBL6NnVeIZF' \
    --offset '13' \
    --serverStatus 'gyaxNialLzxpJ0jG' \
    --userId 'JpDe8Vh32c58hlS2' \
    --sessionType 'T3JXpBUE2HVAhLi6' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 7, "current_player": 76, "map_name": "mC9uVv72I5tmylOk", "max_internal_player": 33, "max_player": 56, "mode": "eL8DJ4S5JMVdlRHK", "num_bot": 24, "password": "0WrfxL4r9HHRVED0", "settings": {"CJEFfKIAufFRaC5l": {}, "PXmPigrwmDkWM9Ia": {}, "3sSR3Kkvxr6gohRo": {}}}, "game_version": "RsNs3qUguNeoRt5Q", "namespace": "av5t1BqK6gAogcoE", "session_type": "wPWnuyddwpNs1Bet", "username": "9ielHjadxb1DC385"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'segQS5FzCkpgRJyz' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'paWsguiXD9z2iksB' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vYcMsJf7UbU0gzst' \
    --body '{"game_max_player": 72}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hzicsq7xdbUrNvci' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'a6w8Mqncm3k2nmv0' \
    --body '{"password": "IdvWCaivR6rEduZD"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'VZbSHL2BulAYPJ9j' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '39oXfwNa2rdbcki2' \
    --body '{"as_spectator": false, "user_id": "fWBaqFFsXQLHJaKG"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wpGkBYj0JFMiTx9l' \
    --userID 'vhwdcjulIHFYF3bG' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'aGTyZVbznQQigrrP' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '5pFmToKys3wnfAiY' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE