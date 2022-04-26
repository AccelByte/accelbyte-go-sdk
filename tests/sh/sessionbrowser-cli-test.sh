#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: go-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"

echo "TAP version 13"
echo "1..16"

#- 1 Login
rm -f $TEMP_TOKEN \
    && mkdir -p $(dirname $TEMP_TOKEN) \
    && echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace 'FtBxyZcD' \
    --sessionType 'XBpGlsQu' \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace 'Ju8vMf0I' \
    --serverRegion 'sJkTrd8I' \
    --sessionId 'DcV2zXnT' \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace 'KjXY1bPq' \
    --matchId 'amiBxx9C' \
    --serverRegion 's18EY84e' \
    --sessionId 'kItqRzHU' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace '1oh570KQ' \
    --sessionID 'BVaewc72' \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 QuerySession
samples/cli/sample-apps Sessionbrowser querySession \
    --namespace 'krSha68n' \
    --gameMode '3Ynozp1C' \
    --gameVersion '2KmIQTuB' \
    --joinable 'dNEUsxFb' \
    --limit '56' \
    --matchExist 'J17M7DJZ' \
    --matchId 'aMSxECbZ' \
    --offset '2' \
    --serverStatus 'ygyoarOR' \
    --userId 'oeNHSb8R' \
    --sessionType 'h3kgs9qq' \
    > test.out 2>&1
eval_tap $? 6 'QuerySession' test.out

#- 7 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 27, "current_player": 85, "map_name": "soBgiVpP", "max_internal_player": 56, "max_player": 24, "mode": "3yvASUox", "num_bot": 7, "password": "xxFqmAGT", "settings": {"J8IEdagE": {}}}, "game_version": "tp4w29KO", "namespace": "u9c19R6X", "session_type": "DqWHkkP8", "username": "npLEKMfj"}' \
    --namespace 'iX7jpkVZ' \
    > test.out 2>&1
eval_tap $? 7 'CreateSession' test.out

#- 8 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace 'k3IaQYEm' \
    --userIds 'qGodOEGt' \
    > test.out 2>&1
eval_tap $? 8 'GetSessionByUserIDs' test.out

#- 9 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace '9gPOj0c6' \
    --sessionID 'i0JkvIas' \
    > test.out 2>&1
eval_tap $? 9 'GetSession' test.out

#- 10 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --body '{"game_current_player": 40, "game_max_player": 4}' \
    --namespace 'YnFAJ3DK' \
    --sessionID '5T4Eogg0' \
    > test.out 2>&1
eval_tap $? 10 'UpdateSession' test.out

#- 11 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace 'Y39UoYlp' \
    --sessionID 'v5bVAgts' \
    > test.out 2>&1
eval_tap $? 11 'DeleteSession' test.out

#- 12 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --body '{"password": "DhUTDUsc"}' \
    --namespace 'bQDjbTQu' \
    --sessionID 'PMz2PTRl' \
    > test.out 2>&1
eval_tap $? 12 'JoinSession' test.out

#- 13 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace 'kyU89ZPO' \
    --sessionID 'w6zPFJ42' \
    > test.out 2>&1
eval_tap $? 13 'DeleteSessionLocalDS' test.out

#- 14 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --body '{"as_spectator": false, "user_id": "wmzBBSMN"}' \
    --namespace 'coAAOjKN' \
    --sessionID 'jfcYHm09' \
    > test.out 2>&1
eval_tap $? 14 'AddPlayerToSession' test.out

#- 15 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace '3aYgBU1s' \
    --sessionID 'qjyK0XH4' \
    --userID '5PaRSOFQ' \
    > test.out 2>&1
eval_tap $? 15 'RemovePlayerFromSession' test.out

#- 16 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace 'Btu23REZ' \
    --userID '8hRVX7LG' \
    > test.out 2>&1
eval_tap $? 16 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE