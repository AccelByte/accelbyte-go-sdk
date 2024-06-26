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
    --gameMode 'q3nhmod3114qHkuU' \
    --gameVersion 'Pemyt0NzamATfx8i' \
    --joinable 'WFHEJPfeAUefHX9k' \
    --limit '88' \
    --matchExist 'TisWuhpnIwVJaXrY' \
    --matchId 'DXzJ40wxMxMY6hrg' \
    --offset '80' \
    --serverStatus 'f3rpHY7HUHCL18nb' \
    --userId 'DjfK5yrtmg2jTbII' \
    --sessionType 'vrJCJZJiwD5wMzoJ' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'utSeCB5KpUAD3MAT' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '78' \
    --serverRegion 'c3TCQ6hOuBcbiDi7' \
    --sessionId 'j42wtPIfY6Cj2G27' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --matchId 'E7SoU5aaY0NDKIdH' \
    --offset '15' \
    --serverRegion 'dtS4F83zNF8xtCHd' \
    --sessionId '3ex0FKXdelAqLORK' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'I9Z2tYo7eoCZuTsg' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'ghurOjqXYtMXNxWd' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel '3HaCTGsF0MNuXJ2o' \
    --deleted 'true' \
    --matchID 'NZio0epANrSDLxhk' \
    --partyID 'yT80hSjjzXAl4HAn' \
    --sessionType '3SKDPGwyo312ylxs' \
    --status 'B5krNnM8WIXItyeR' \
    --userID 'fAU6TJGqSFOaZEnr' \
    --limit '45' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID 'fhzCuPBOZJBQBiY1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'qtsKd0wfG6nuJqbR' \
    --gameVersion 'ZKu28W9hd4KPjTun' \
    --joinable 'hJekHEkbF3PlCNKU' \
    --limit '56' \
    --matchExist 'RcsanxuWLwJig5qm' \
    --matchId 'BWStvpakdXuGGCWT' \
    --offset '66' \
    --serverStatus 'j8quhzqqOWFl0I5J' \
    --userId 'UNUfLPzcCAcDZ5V0' \
    --sessionType 'KI9AnMHCyEU8IqIZ' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 10, "current_player": 22, "map_name": "2JadfJUz1mzH1bVO", "max_internal_player": 59, "max_player": 40, "mode": "ESmxLKwmLTCi1Lqy", "num_bot": 49, "password": "UslhHl9bYX5vIky0", "settings": {"qexcSTsEglPjGQlh": {}, "VJsmtrCuLQyIcfRx": {}, "vIWHXyFU88zgCptj": {}}}, "game_version": "TysOvISm3cm8rK4E", "namespace": "UpBXz3fXtnQo2MPg", "session_type": "msq6TwJXllx2Tlp8", "username": "PAdb6uhrK2jd8MXt"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds 'Ecq0NROc7tbDjOmz' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'adnxkw2ZW89HvfxB' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'YLGreK97rXSSxYkf' \
    --body '{"game_max_player": 69}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'MGnWZ5nUbQ5kBvZ5' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID '1O5K5Kq2bZmTsNHa' \
    --body '{"password": "pXMapEQo0zJwk5Et"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID '86FiN16udBtsVFBz' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'TSrEu2IA7OCuT8Ja' \
    --body '{"as_spectator": false, "user_id": "cMRAJpWa2JfG6vL2"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'WQl4wLfhzPTFE15C' \
    --userID 'eCetMjz1eKxLuQUc' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'V2W8u6rtOnqCZyrk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'xDlsPg6yfRPYg83M' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE