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
    --gameMode 'xp90DiUVozPbFTzu' \
    --gameVersion '2woDcp76zmkinvKf' \
    --joinable 'pJeSmuknVovCc0VU' \
    --limit '16' \
    --matchExist 'oQzTIJakeD9Co5t0' \
    --matchId 'VdtdfOklOn4VKKJX' \
    --offset '4' \
    --serverStatus 'WhK36iHlcPtoyfPu' \
    --userId 'C6Df6HM1C00G6cbA' \
    --sessionType 'NQ7XBgyxbLh1lwar' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType '83E9VXAFZkn8w9y6' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '8' \
    --serverRegion 'ctFRdB2rdLiKRY2F' \
    --sessionId '0XP7TJKxZjxDJGkr' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --matchId 'heD9ArOj01GO1NY4' \
    --offset '6' \
    --serverRegion 'Baf1BAOR8SnD5ZH2' \
    --sessionId '7I9EmUlo2HMEJnvX' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'Wnrrx4bpphX79512' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'cqIqPQ31ocUwLC6t' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel '2A6waXAzHJe6b7kv' \
    --deleted 'false' \
    --matchID '8qp5kATr3QpfD0ke' \
    --partyID 'Xof9gPI1QV5V5Alg' \
    --sessionType 'T94bCoLBBR28SAks' \
    --status 'iXdDmD0Tu2z44R17' \
    --userID 'iYP6KaEzO9juQsAe' \
    --limit '92' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'YUVrxNjHcHGz4RmG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '45fJhEpDFfUrz2mS' \
    --gameVersion 'wrY4bu8SyHf2sDgH' \
    --joinable '4KhcK2IU4ArxvQ9b' \
    --limit '90' \
    --matchExist '5YdRvSVumoZDQYZw' \
    --matchId 'brrUd5NHXGci737J' \
    --offset '26' \
    --serverStatus 'AcY0IZ6R9z9vWiOJ' \
    --userId '0HYX6DgERaHiLIJe' \
    --sessionType 'uM7LkOYLWROi5u66' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 64, "current_player": 6, "map_name": "q52hSMwXcT8PDYX8", "max_internal_player": 41, "max_player": 82, "mode": "Ps1poRur2tAX5cbR", "num_bot": 19, "password": "PDRjzzAYmIxXAEC9", "settings": {"Rd1c2ieEcJlqMZFJ": {}, "tqNxhO5RXCvQTcFT": {}, "0hNqcZNkHHaD0iWn": {}}}, "game_version": "QQub9CZJLUFIMkK7", "namespace": "57WXLw2tUpaOnJ5v", "session_type": "liWewPoIsghdgApS", "username": "8g2gwSZDdKPWRPQ4"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'eAoYr04Yyy0ViDL4' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sazE5NblhvWzyQX7' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'qmlhRFEnDjRyUhkX' \
    --body '{"game_max_player": 22}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '8DZIb3qqsJ75Dux3' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wYCl3nOCgryPDSw0' \
    --body '{"password": "EM3lHIsT0SC5s0oZ"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'H7kgE9mExgIS3O7j' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AADjUXGWZMhu0Z9c' \
    --body '{"as_spectator": false, "user_id": "N0rGa8u78DlyUUG2"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'vga6ML8xXZ5COKY2' \
    --userID 'Hm7Mxcp05z1JnYda' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'HpgsSwOwIXw892kp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'g3GYcR8iYfk8U0Zg' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE