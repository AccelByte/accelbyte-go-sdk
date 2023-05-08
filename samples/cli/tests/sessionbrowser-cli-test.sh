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
    --gameMode 'fHVnTbpJRoQTQTb4' \
    --gameVersion 'QqrvGhm6utsBkJUH' \
    --joinable '2vNYfsEZrxAQUvzu' \
    --limit '6' \
    --matchExist 'C7yIJOAX2Q120tXa' \
    --matchId 'xg2vWjFBMrcrfemH' \
    --offset '42' \
    --serverStatus 'wsRmL9UkJx8uxj19' \
    --userId 'ycBvPavxbR4tWtsk' \
    --sessionType 'Vmf0iD1vn8urD5ps' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'QQ9UmLCpZQ1J4ljf' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '18' \
    --serverRegion 'AqpFWd7xVLSNbVR5' \
    --sessionId '2Y9k6njdwVpM15B1' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --matchId 'YS5sx1P7me2Ut73p' \
    --offset '8' \
    --serverRegion 'OSojBNP4dmnjGaWe' \
    --sessionId 'PPP9z0PUWI02F91E' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '6BOETkMRl2oCxraG' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ikdzhbzpf7EfmY1C' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'JEYf28JijoKY95kk' \
    --deleted 'true' \
    --matchID 'ABrDuxVXez0O4pdx' \
    --partyID 'VCdvDfuAPwxtd6O3' \
    --sessionType 'I1HwIhBSFaiOcRup' \
    --status 'mUXUcSclTyoJOhDB' \
    --userID '3Aj9haq4AQA43t6b' \
    --limit '47' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'dwXjTSu4zpwAmrWx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'JDBTNzSnvH0pOkDG' \
    --gameVersion 'fvhJenXHh3142Ma2' \
    --joinable 'BWXr9gX049pxQAZd' \
    --limit '13' \
    --matchExist '9oPQgdQvClOTo7fh' \
    --matchId 'tBMzErc0IwZfwYYU' \
    --offset '7' \
    --serverStatus 'bTNsRNtS5xQqzJNU' \
    --userId 'Tam0JPpuFORCRi4n' \
    --sessionType 'pPzTVtQULVAoM9Qy' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 92, "current_player": 57, "map_name": "a0TtzwnoO3dklKSF", "max_internal_player": 46, "max_player": 98, "mode": "7b7l3u6Qa4WBfIQe", "num_bot": 74, "password": "J356FEOP1PTA1AvY", "settings": {"7nURNYJJIENRW8Qk": {}, "r9wfEhV8Od1H92lZ": {}, "4BLX2RT0npMdKAqb": {}}}, "game_version": "Fng2AhgUs29R4Inn", "namespace": "cpn5rFP0g9auFn5P", "session_type": "DJj0izvGturFhaEi", "username": "GbeeZmbuHyFT3L9s"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'THAADfOZd4p6kFMf' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'n9l52x7suXqe7fDO' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'G6KVR6U2IItSdzCU' \
    --body '{"game_max_player": 67}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'wBeOBrFnZ7MbZUDJ' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xVzRoJehh9T2R37j' \
    --body '{"password": "YMQQkjRr8LcEA2vo"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'j8FfirU4EBmSMutE' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'u7y7OIUGV5kj9Rv8' \
    --body '{"as_spectator": false, "user_id": "tOqzUZo3Wws502EQ"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'a9oUTnt199k2aiKY' \
    --userID '11uyYTMob6JmUQQO' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'AxTzbSDusZUHsPPb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID '3owcozaE8y0KXmCm' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE