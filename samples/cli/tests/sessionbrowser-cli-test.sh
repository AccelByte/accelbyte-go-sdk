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
    --gameMode 'GiiPSn8t3V3TxpGZ' \
    --gameVersion 'W2VUSue9mP8oIYca' \
    --joinable 'CcK0TBVc17xBOLaT' \
    --limit '17' \
    --matchExist 'psifnyq47JoORhDr' \
    --matchId 'YLbuuYSEDUGye6Dn' \
    --offset '12' \
    --serverStatus 'daZl8lYR4R6OBcud' \
    --userId 'OxiRSPuXCGbc9EUi' \
    --sessionType '2q1CrfyufvHuyH7l' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType '38ux799cFUPK11jS' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '38' \
    --serverRegion 'yq8fqaES4raeRFAW' \
    --sessionId 'myJ10HoP48RFw5hv' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --matchId '5JYSu24BB9aWPwEy' \
    --offset '40' \
    --serverRegion '1vecApgA7ZFv2WIP' \
    --sessionId '7IcyQ5ddq7njar5l' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'y0o55rXrUGxOyRkC' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YwlAEGf3okUDTZAO' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'h3pAvt2g5cPrLhI9' \
    --deleted 'false' \
    --matchID 'zv5ZP1gQoSpbe0tn' \
    --partyID 'XuNgsy6tUQ7TPvHl' \
    --sessionType 'akay4GkTVpleNffV' \
    --status '1SmbqopQqIAkSfSg' \
    --userID 'C8jKSAZ2DRYlPR47' \
    --limit '86' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'gRB1TFPiVKp2bQdH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'X5j68yKbuFjqwjW1' \
    --gameVersion 'TQ3bsnjTh9jge0wX' \
    --joinable 'bW9nxaNbdS1dWC9K' \
    --limit '91' \
    --matchExist '3z5SJO1FH9q65iHI' \
    --matchId 'sqlH3qwEgsahPxzC' \
    --offset '57' \
    --serverStatus 'J7H1TjJSvEgCQw4M' \
    --userId '1GxWnc3pqACL7nyC' \
    --sessionType 'XGqp1eTyX8DiBZf8' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 18, "current_player": 41, "map_name": "wziWDPm7vMf7s05z", "max_internal_player": 80, "max_player": 17, "mode": "LyaNlVGlVlWpRtwQ", "num_bot": 38, "password": "zUQuMP62okB3UZVn", "settings": {"ziGE37bYuFfYfuVn": {}, "1J6DL8DvB5QGLuFP": {}, "57cCpltoblc15QOQ": {}}}, "game_version": "9DNVXzosSwKglitC", "namespace": "kkOVS0lXCWHj0rGy", "session_type": "GJwdSTsBBrKtbiog", "username": "XLZJ4KN01Ng0q4Rp"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds '8o4wQEUiifM4SSNX' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'j0BMQYgkfQP3IH7U' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'rMqpi97yOj5gQ5bZ' \
    --body '{"game_max_player": 29}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID '2BhiEpDC2aGjGKIQ' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ESYWocrdoH6Z4dJO' \
    --body '{"password": "vRo0FwsxNVe1DHTX"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'wK70Zb4nfSmM4tyW' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aMKwvPM7vbT9zuhI' \
    --body '{"as_spectator": true, "user_id": "P8nMJPC17GoMcyxo"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'JFCSkhJwyQxM3nDu' \
    --userID 'aBe6gd1BcJoQvNRY' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'e7okpFdwAD8Pj5PQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'AbSaNWeeBuZuZVSX' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE