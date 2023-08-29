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
    --gameMode 'PMr1Gf6jh02mLLvP' \
    --gameVersion '77U68hUevVGb8OVP' \
    --joinable '1mSuRPfo2YiROYO4' \
    --limit '95' \
    --matchExist 'grE4c3UQ7TeXH7ko' \
    --matchId '1f8qJRXXrBio7Lsx' \
    --offset '58' \
    --serverStatus 'sErVPAR5RC6yqU9Y' \
    --userId 'YQ1cNFW1VTfIXUHG' \
    --sessionType 'cfJ7BgAlUDkKn2nK' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'ij91ARxi8FNvSSH3' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '97' \
    --serverRegion '67UsgUGejU8Jvqka' \
    --sessionId 'hucOZ9XR3rFB0Wsm' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --matchId 'ryomCDjUFmq7tvDH' \
    --offset '34' \
    --serverRegion '6rgZeNwtq3Jbg7hJ' \
    --sessionId '24CeLfMsE4zLGE22' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID '9bL24flSr93klNED' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '98lGV6aSLSJCcG4A' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'yPcc5TYGqc6EjaOR' \
    --deleted 'true' \
    --matchID 'TmvYfxPXthiPb7vf' \
    --partyID 'Ro6ez7xUvxpoNaWg' \
    --sessionType '3hLnb9Jk2EZI0ZLF' \
    --status '5fgr3exjYMl256bH' \
    --userID 'hxVIQjXogj6PkqDi' \
    --limit '82' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'Pt07dGFyaMAgVVij' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode '1QRbHWrlXEszxeNv' \
    --gameVersion 'n3RDPmufr6u2mbeD' \
    --joinable '6Omudw2jB63rVM7r' \
    --limit '63' \
    --matchExist 'fFG9dKd0C6Pn1cB5' \
    --matchId 'PEJYycURR2trAmNK' \
    --offset '70' \
    --serverStatus 'HgheD1XyIHb3jalM' \
    --userId '5eGoX9xxSyLM4gkx' \
    --sessionType 'vMm09Hqj3yQaykJE' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 16, "current_player": 56, "map_name": "ohKe1HR6MYXl8pKk", "max_internal_player": 6, "max_player": 46, "mode": "3rroWMnizTYShRW3", "num_bot": 8, "password": "SJTJMynXVuQ8eNPK", "settings": {"WPJdcI0tcOyqpEBX": {}, "KQAJgtRILtVIYERj": {}, "ysFHu2wR9UT2RZdp": {}}}, "game_version": "uSojqJpAzZOaNbxv", "namespace": "caWcttYyNhcqDnc6", "session_type": "eq6keXdiNRltVwNM", "username": "8E4JekzxkqvbYSZE"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds '6RHcTSoGFkRxztpF' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rrqhMCjY5BJXerTO' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'K283DMz8SuWaamfM' \
    --body '{"game_max_player": 7}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'sFFNgTBDcTLmxwjz' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'xjXir9WlYAJ9gCPW' \
    --body '{"password": "lJJMwU31LWz6MkND"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'vBAtbISx1PO29ghP' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID '55anVPYfjvo4KkiB' \
    --body '{"as_spectator": false, "user_id": "aEJClhp4a3z6Kmwz"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RNL9kzXD8SekPy2N' \
    --userID '0Q5BGTIAZ2zBRuvz' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'ZfNfREFjk4HfjPqg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'kgKB6SzPUka6fy8T' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE