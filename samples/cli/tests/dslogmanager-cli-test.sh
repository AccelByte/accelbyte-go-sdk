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
    --podName 'phJykM8Kl2xv47c1' \
    --logType 'oIHVcbtxHO0DqB5x' \
    --offset '45' \
    --origin 'r0eMEJLpdn1tSVra' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'tZ1mI9aUx30VcvfE' \
    --endDate 'YUSEW9pNSmioRiJo' \
    --gameMode 'ZFyyydY9c46AcsXR' \
    --limit '24' \
    --next '0x9GYVcHSLIcvWsW' \
    --partyId 'B4y2KbORvqnlseRi' \
    --podName '0m3uQ0RhYvKtOmCK' \
    --previous 'k6Kyhi0M4zJYI3h8' \
    --provider 'VMMHFsKdHMktfgVv' \
    --region 'ueap2YtVbxb9klDN' \
    --sessionId '5MGu25CbXXJceHmM' \
    --startDate '7iouNBNctUiu2Vif' \
    --status 'myTvZh8K6n7YxllJ' \
    --userId 'DNLXJiwATDOa3zvZ' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'IIgAJAi3KWCsUYgI' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'mz2aFaB72rQxxkZK' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "gLWFJSWBrsglWANo", "namespace": "26gU5m1HHBTkIDgS", "pod_name": "tzIcHZKMHJ872BQq"}, {"alloc_id": "L418tIS6R8asDBdL", "namespace": "yw49cGEyBzUfjCKy", "pod_name": "uTydyQwX2wKz5Sm3"}, {"alloc_id": "t7CqeV0wsxE06STZ", "namespace": "WAylEjmkRfHVvVun", "pod_name": "J6eNkDqcarnRQ53W"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'c9P2pk9uaHpxYDXo' \
    --endDate 'OWJr8bBX9z0xZIM1' \
    --gameMode 'vMcxXVlvRYBvtlBS' \
    --limit '80' \
    --namespace 'LW9HsflsiRm9TInb' \
    --next 'SwrX9QX0NTop1qAz' \
    --partyId 'pl0U6bzpXJjJnw6x' \
    --podName '4UZyQLPtz2xWtKU4' \
    --previous 'dWkQT35xpC4QgiTj' \
    --provider 'irbcnJBkB7JuMFut' \
    --region 'STclxgPGNsLERBH6' \
    --sessionId 'TAG4Q4ommjuhPrOQ' \
    --startDate 'wbvV1DVkGoqCzPNT' \
    --status 'sjPNyAdaPsbVoiB9' \
    --userId 'tiGM4aleikVCcOIL' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE