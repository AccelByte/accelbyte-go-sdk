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
    --gameMode '1grd8zFpNu5wsBZZ' \
    --gameVersion 'M2So9KBV4hXoax0E' \
    --joinable 'Dnp0DBeFHYmc9O4n' \
    --limit '58' \
    --matchExist 'RNvVrlHFGqmgvGkr' \
    --matchId 'vZyx9UoysL4hVtFw' \
    --offset '49' \
    --serverStatus 'h3iGSysGsNApGO6u' \
    --userId 'YOPschmE9nEuyAkd' \
    --sessionType 'JnaNj5xb1JeobbHS' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'OxLNlkpOfaZAJjiq' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '91' \
    --serverRegion 'AcSjhWgmXCPpJSGv' \
    --sessionId 'jJQfIZgYH3n99jr6' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --matchId 'Gfe1QM7leuxaqCut' \
    --offset '7' \
    --serverRegion '0Lc8z2RdVHCcKUfq' \
    --sessionId '6FvNjdXXjysw9JEz' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'VQNLKocGyGSCJL32' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RFEy4QJ7qEcFafOB' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel '6Do0xqLxr0NN4gob' \
    --deleted 'false' \
    --matchID '0JrsQGL8KeRaQ5ug' \
    --partyID 'jPWTu0iZyKxGvcJu' \
    --sessionType '2WfFCZnx64DC2fYn' \
    --status 'ACZQ0cwdJ0pbpTau' \
    --userID 'nLMipBjDPoTQTBSq' \
    --limit '71' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'sWMmK5B0myDviEiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'me0SRr1YXKHN39LM' \
    --gameVersion 'kIDRvbbBOfoRX4PQ' \
    --joinable 'P4RLZuX0Ceya2EZ5' \
    --limit '10' \
    --matchExist 'WZmwzoJRCrmRg7qy' \
    --matchId 'wPfGcL9yVMehNzfK' \
    --offset '42' \
    --serverStatus 'WJaPkrIQ7Pbw9aIY' \
    --userId 'Qjc5yjIRiEDgQS6C' \
    --sessionType '3vZl8mtZyuqrOqn3' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 97, "current_player": 96, "map_name": "iA7KG1xRwURsVTjr", "max_internal_player": 91, "max_player": 57, "mode": "SJhaYtYZkyoEMwuG", "num_bot": 10, "password": "l49VKMkAU9ebjKRz", "settings": {"RGjjNwXQ6042LSk5": {}, "wV2lzDqaKHAH7EUW": {}, "nvwcpl9gI4XbDQqQ": {}}}, "game_version": "MtNQppNxMnHxFgtR", "namespace": "5Xl5UZhoAHjSLDkW", "session_type": "CM7LhCShmYtaBA09", "username": "Vh6bbZsHAPb71qzo"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'YqHeBRj876UbGKGw' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'dUI7ocwrMwTsvahg' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ayBtyAXXl7UO18kx' \
    --body '{"game_max_player": 17}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '5Idt3zykrdECiCjX' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fzzegfcwDIKdCgUZ' \
    --body '{"password": "8b15wHldJ5IXskUX"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'LxUicE8bYC4D3jyZ' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'RBQKumlskefGxXWR' \
    --body '{"as_spectator": true, "user_id": "Ksj2lCnzqU9G157w"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'n25ZzPmkGr2c2Qw4' \
    --userID 'oW1aJX4Kp4lxhmUI' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'xhs41a4KPmd67Vjl' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'E4g9CR1aDdwXu3WI' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE