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
    --gameMode 'YtyhgWNsjEV6z4f4' \
    --gameVersion 'eBL1TCfzbTggzISi' \
    --joinable 'ZpzckLiqqetkMsWF' \
    --limit '27' \
    --matchExist 'LYqooKD7LRNzesA1' \
    --matchId 'Ckv7S5NTef7IiVz0' \
    --offset '90' \
    --serverStatus 'YJFNiRiw1FKuyqeV' \
    --userId 'WAaVtIvCcXQvuTqH' \
    --sessionType 'K2x3ZqJxcDmohSwn' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'zsSO1Wt9mVKKWhjw' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '83' \
    --serverRegion 'Ht8Yn78oGzjSHc5f' \
    --sessionId '8OFXeUHgZAfnMvI0' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --matchId 'eQkKBTFUNjbJT4ct' \
    --offset '53' \
    --serverRegion 'pfrJHAAk9WoHXWy1' \
    --sessionId 'UwdKqJiuODswuX2e' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'tVuIFruR31Y2rufI' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ujtYcr2ptQOJrywO' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'yCB1xgI83PVKRMIR' \
    --deleted 'true' \
    --matchID '0O32bjLcUsOZI79L' \
    --partyID '65MUzbmM5QzfJwOX' \
    --sessionType '47iuVkIq4dMP8nQi' \
    --status 'SFGcAd3L6zbXoaUx' \
    --userID 'HT5A09PE3gpbAWDw' \
    --limit '73' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'MXqOWh4yxmOGwx0f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'IsWddMSouKQMRHRZ' \
    --gameVersion 'd1qOdIkNYCXKWoPX' \
    --joinable 'p4DUNW9SDVTH0e8z' \
    --limit '23' \
    --matchExist 'VU1gdg7JP4kM4z8M' \
    --matchId 'dMlVw6E2tQHCgLRy' \
    --offset '49' \
    --serverStatus 'ClbVy2vaFbwsflwd' \
    --userId 'dhjsG634wFgPkKh8' \
    --sessionType 'HmdNSm0RtJkfqhXx' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 71, "current_player": 74, "map_name": "vxmoP9HCwTQkjfDm", "max_internal_player": 5, "max_player": 49, "mode": "xTLCY02UfIOmhfwX", "num_bot": 92, "password": "AKhtcOSbg7bCxybO", "settings": {"gXpgOO4A5Ix1SZNc": {}, "Rw2C5o7ridpxyemU": {}, "7YWTztEk85Kh0npf": {}}}, "game_version": "1BfmWcmNQ8qPldKC", "namespace": "XvDqq99mGeU7815J", "session_type": "SIce0RVr7NlWIRhk", "username": "lasHaFAf5jlAMVwu"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'tx5CciVKYybFY0jk' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mSqMEW2kCx3t5Gej' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RWsq4oqNX0yTLfcb' \
    --body '{"game_max_player": 87}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '0YcMnUUuN71anrlk' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'W28HGBfvYxdEzOcU' \
    --body '{"password": "sJEJUPveqWWAO6hc"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'RUMLKaUrLjbmfoB2' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MV5UkgJaGS5MuoLw' \
    --body '{"as_spectator": true, "user_id": "YQ88kDHAG1e0szGl"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KWh3gRKitYS32DzR' \
    --userID 'ceCMftgsd2CdAyut' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'CkyjiGbPwIw7Ianz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '7vVeH4g7sNUSYREm' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE