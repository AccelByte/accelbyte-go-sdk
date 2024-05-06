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
    --gameMode 'i0UplA24QL5gnKaF' \
    --gameVersion 'JZCWICCFpbYdwx0T' \
    --joinable 'izLni8MnWmEKDbcv' \
    --limit '26' \
    --matchExist 'azcrqq46eTo42QA0' \
    --matchId 'X1ybHelmtw20n2Od' \
    --offset '1' \
    --serverStatus 'pq7oV18SHusqTlKr' \
    --userId 'BJSOJFYCfJ3Z5krJ' \
    --sessionType 'loyRqEXCgPUgqvLk' \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
samples/cli/sample-apps Sessionbrowser getTotalActiveSession \
    --namespace $AB_NAMESPACE \
    --sessionType 'd2MBsbxrhTgjPntY' \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
samples/cli/sample-apps Sessionbrowser getActiveCustomGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '38' \
    --serverRegion 'ltW9DS3ShZnZXVKe' \
    --sessionId 'hSWtDtgzbyRX3yGf' \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
samples/cli/sample-apps Sessionbrowser getActiveMatchmakingGameSessions \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --matchId 'WUmipRlgNn4eofcD' \
    --offset '17' \
    --serverRegion 'JpLZEQKevIpeoVHN' \
    --sessionId 'MQiYDDCGuz3bnWBd' \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
samples/cli/sample-apps Sessionbrowser adminGetSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'mAWnl0GSxH2AoINU' \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
samples/cli/sample-apps Sessionbrowser adminDeleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'SMvUvgmhw3K7FbRD' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
samples/cli/sample-apps Sessionbrowser adminSearchSessionsV2 \
    --namespace $AB_NAMESPACE \
    --channel 'cz3oZeEsLi9WuNXi' \
    --deleted 'false' \
    --matchID 'oJVFjgMVcBNXuCDk' \
    --partyID 'g28bU5i4FtNXTczP' \
    --sessionType 'unjKu6g9EknStHw3' \
    --status 'UsGXs4mMinQD36ML' \
    --userID 'Q7YcCyn2brV6ydcO' \
    --limit '69' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
samples/cli/sample-apps Sessionbrowser getSessionHistoryDetailed \
    --matchID '6Q0JukhfubOAJf9N' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
samples/cli/sample-apps Sessionbrowser userQuerySession \
    --namespace $AB_NAMESPACE \
    --gameMode 'xLUcr96JvX29gByI' \
    --gameVersion 'M7m7VA7sDW5IlFQp' \
    --joinable 'LY1LEMPPiC7RgvJO' \
    --limit '79' \
    --matchExist 'YCwxMKR43PWYOrDa' \
    --matchId 'QlauWuEHzVtb9iZN' \
    --offset '55' \
    --serverStatus 'ivKOQ4rg3SSjZj06' \
    --userId 'J3UEtauLuwDhcBeZ' \
    --sessionType 'bJzJi7dXVXCLmdPf' \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
samples/cli/sample-apps Sessionbrowser createSession \
    --namespace $AB_NAMESPACE \
    --body '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 47, "current_player": 57, "map_name": "ywQTxTfmPiEox7MS", "max_internal_player": 75, "max_player": 17, "mode": "qnd8b5SwZm8CETOn", "num_bot": 71, "password": "O9TQvBgqS01aIHY5", "settings": {"CKM2rthA1Asbki6o": {}, "AzatWQA63tDnHo09": {}, "hv0AZru2jaR15ob4": {}}}, "game_version": "m9SHdct0OLFAWFI1", "namespace": "bU8xP2IIgClHIpIg", "session_type": "bcJCwBFl2iKPHpQe", "username": "1qdOduFzidkTOUtJ"}' \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
samples/cli/sample-apps Sessionbrowser getSessionByUserIDs \
    --namespace $AB_NAMESPACE \
    --userIds '8kfHozHxPm2Va5cc' \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
samples/cli/sample-apps Sessionbrowser getSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'hRUlTLlfpBe27rzz' \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
samples/cli/sample-apps Sessionbrowser updateSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'AEqJkIYbADD8CyIs' \
    --body '{"game_max_player": 68}' \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
samples/cli/sample-apps Sessionbrowser deleteSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'KCi98ZCpOf9FTQFN' \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
samples/cli/sample-apps Sessionbrowser joinSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'aAEXmboN6CLnrYIa' \
    --body '{"password": "tCnVTc4SoG3Sp4hM"}' \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
samples/cli/sample-apps Sessionbrowser deleteSessionLocalDS \
    --namespace $AB_NAMESPACE \
    --sessionID 'EWe2NpJ0RuGF1eic' \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
samples/cli/sample-apps Sessionbrowser addPlayerToSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'fPwIeXZWsiZCmjWB' \
    --body '{"as_spectator": true, "user_id": "6m2avbzcfJ6say8S"}' \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
samples/cli/sample-apps Sessionbrowser removePlayerFromSession \
    --namespace $AB_NAMESPACE \
    --sessionID 'HowFXwCFej2PgNh1' \
    --userID 'VUfVzMLjTCTxdHdF' \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
samples/cli/sample-apps Sessionbrowser updateSettings \
    --namespace $AB_NAMESPACE \
    --sessionID 'yaozl2lRX7NzGIjB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
samples/cli/sample-apps Sessionbrowser getRecentPlayer \
    --namespace $AB_NAMESPACE \
    --userID 'P9x1DfuspPCZ5MEI' \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE