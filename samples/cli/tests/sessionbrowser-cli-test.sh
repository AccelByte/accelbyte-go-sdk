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
    --gameMode 'jndI3KT4UVz7gA6W' \
    --gameVersion 'PG0ekaWhxnwShafI' \
    --joinable '2sDBFSEweMRI6qFp' \
    --limit '2' \
    --matchExist 'dn74OB3A3tVdeALp' \
    --matchId '1IxHVUsOEuxMqiDg' \
    --offset '94' \
    --serverStatus 'mbe26EyT6rDK7esl' \
    --userId 'oT3jA5r9MOoYrNmS' \
    --sessionType '5fMrXSga1reSoKmc' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'gbRCd67D0SvH2pRS' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '83' \
    --serverRegion '98Fv8byc1QNbKlGV' \
    --sessionId '30uio4TLvzasR9K4' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --matchId '1MgxRzEaWhMVZw0C' \
    --offset '20' \
    --serverRegion '1QpT0Bl6QrwCauKN' \
    --sessionId '9jwamROo7xGDfeCP' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cW5eIQKoP7eSKeiU' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'jgvafwS0lXUcHhJ1' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'FTUoBDhmIxRq5d3R' \
    --deleted 'false' \
    --matchID 'tC63MMI5Hgr96HOv' \
    --partyID 'mdyM9N1CREcFNetI' \
    --sessionType 'S0p4mq74A7qqmoSC' \
    --status '2zVBt3dZrOv2sPWS' \
    --userID 'YIn74fvClluLPeT5' \
    --limit '95' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID '0OVBV6gcLQtt2hjz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'zhIRd3sDJZeLuDci' \
    --gameVersion '1dbMHUyhU5ms1DRg' \
    --joinable '78ZbIX4bIU0pANtB' \
    --limit '5' \
    --matchExist 'oQ7j0Nw8xUb09cXw' \
    --matchId 'i8mHcsKn3cS0039M' \
    --offset '76' \
    --serverStatus 'AfMg7nOnJqKC5wVS' \
    --userId 'lisPhMKNhYoZWcTr' \
    --sessionType '2fJMKOWvLimY2cYv' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 56, "current_player": 34, "map_name": "F9gyapfMqej9KSz9", "max_internal_player": 72, "max_player": 35, "mode": "2Hlfx9NFN4N4553Q", "num_bot": 55, "password": "nIuSnnirE2aPtaPq", "settings": {"VJJgYdaaGOxf6NwS": {}, "ztAPFbDkjzA0uiLG": {}, "A9GaDWJXTcVdo8i0": {}}}, "game_version": "I9RE2XalwijyRUzD", "namespace": "wo1EbHusqurKlsPF", "session_type": "2qmdtZfcL2gVfby4", "username": "AGFssmjj7nEgoORc"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'emNz82v1LPm9iBti' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WtxBkneeryIehLAU' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID '03dmXtjchmhFPORM' \
    --body '{"game_max_player": 63}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'XnBuMKFOM8wLh0PL' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vXhUNlGBYo7AyL1h' \
    --body '{"password": "NMFym1IdmH2f2tQS"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'SHNYeAZGm41e56Xy' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'OPHmK3F1ea57YitT' \
    --body '{"as_spectator": true, "user_id": "HW6C2wKPGYisvKW0"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xm6VBLKVdnERxdt5' \
    --userID 'Xe7xuNhxmWseJ5Al' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'iwUUcS5INkBhgo9g' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '8aYQGLgfodt2q5z9' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE