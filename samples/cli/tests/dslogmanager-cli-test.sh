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
echo "1..8"

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

#- 2 GetServerLogs
samples/cli/sample-apps Dslogmanager getServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'gkLLzzKuVaBGPEh8' \
    --logType 'BIdA0QWg1dB5RYv7' \
    --offset '91' \
    --origin 'aXnax96QjWfBewM7' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'IjYsBMU3o99j7PXG' \
    --endDate 'ZqCIk8viXXYfEh1B' \
    --gameMode 'X99tLPQ2vIubLLhj' \
    --limit '32' \
    --next 'QuNmi3zpu2YuZz3B' \
    --partyId '2lLIaJjOAOGethNT' \
    --podName 'VQDwMOVj11lG8Hyv' \
    --previous 'X2iv2NgShddHhJgq' \
    --provider 's1iVc1Av1heuMBGG' \
    --region 'csZ4ZLwoceJuVwSt' \
    --sessionId 'qeqT9neAdUxYNtzG' \
    --startDate 'ubFFMyjDjcixLjb0' \
    --status 'WroOy3RuDrFJNm8u' \
    --userId 'hp5ejE7025sQdrWk' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'CWnt1RCcisulRFAQ' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'SWukzBZwJKYIkXjT' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "CgsIYhVyt59TGDlA", "namespace": "YDmXUnSY1xCNizuU", "pod_name": "hpzFXfuiweGmkpaE"}, {"alloc_id": "EzzkjeVoQJanmb6a", "namespace": "YUWuZl3R1d2VAuh9", "pod_name": "d9pZLEw0tKhi9gUU"}, {"alloc_id": "KLCVY8UWKERIdhF0", "namespace": "c5j0FWcWHUrsAikK", "pod_name": "AjXmHN3B53NI4On8"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'caCL0LAVsBdeu0Xl' \
    --endDate 'XFAo8A9g6mHIEdFr' \
    --gameMode '059JILBe5Zf4lTDI' \
    --limit '93' \
    --namespace 'Xt6oVTeHC85rHbUd' \
    --next 'UM85o0pyFjAZJoit' \
    --partyId 'uF3NyVneyPNNBqON' \
    --podName 'k5VFZV0XfKaelozn' \
    --previous 'nyzQjWH5SrZp3q2U' \
    --provider 'FSHMSfgZLioKwesC' \
    --region 'K90Lr08EClIYdCfZ' \
    --sessionId 'zm8uPzaovwc6riHH' \
    --startDate '4T5CJG7H4WaGfatu' \
    --status 'kum08dqPhOHem2x6' \
    --userId '7mrDWCQakBX9lIsy' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE