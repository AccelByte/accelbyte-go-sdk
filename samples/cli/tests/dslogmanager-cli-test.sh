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
    --podName 'nUddfXyJtwHzvRMU' \
    --logType 'jGQ0TuORR415v2FS' \
    --offset '38' \
    --origin 'NNjZe0Oo6YMxCKlU' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'hxPp8HLK9InpZUXX' \
    --endDate 'G0AThKomnOn2lZKc' \
    --gameMode '5Vgns4F4EE05mxdo' \
    --limit '93' \
    --next 'mDfVapcYAHBoW9QN' \
    --partyId '0iagUyu277tS4Ed8' \
    --podName 'peLOLjTIDvrVxMjX' \
    --previous 'mlVJw0uPvkrRNjJc' \
    --provider 'q1iGgK5KUOm8wjBN' \
    --region 'QKwAGorNyFsRNcJW' \
    --sessionId 'NEr9yTcyVkOulmF4' \
    --source 'OUWChagtMtlVbDB6' \
    --startDate 'ByDC2SE55OB41bbs' \
    --status 'O8cupxcJvNViuO2Q' \
    --userId 'oyIjDBuKq3hMNZpl' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'P291Ftl079wyWA8H' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'WQGJCh8lFCYnQLJq' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "5yu4wdPv0waYuUI4", "namespace": "KGqnYYBubxTS10DQ", "pod_name": "x9fkWmp60eBrmfYs"}, {"alloc_id": "jFF9zX9j2WqGf1Mo", "namespace": "bJU9HnN4X3grH3Pi", "pod_name": "YRsX6ydNuZo8pY7k"}, {"alloc_id": "AlDUEwrTLqYmInk2", "namespace": "nG2jqFoNNfxz4shE", "pod_name": "4oZcMS1btGAynpPY"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ZRVIoWq8u7IKiJ7t' \
    --endDate 'HSHTtghDS78DXWiI' \
    --gameMode 'oYvTzuC4UF6FofCb' \
    --limit '76' \
    --namespace '2waNmwZ3sEctrx3j' \
    --next 'ntMQkDM4BHGAWyQa' \
    --partyId 'ZIKkEUN16PqmXG5Y' \
    --podName 'XqAM3bx6TGLcH3Gl' \
    --previous '54r6o46q3AfOecpF' \
    --provider 'oKTXGX56KLpcgMmv' \
    --region 'H1Z0mPHJoKMXa7uq' \
    --sessionId 'FO3bcCj4IBobZ9eQ' \
    --startDate 'iXDld7jV8cbsKo9u' \
    --status 'sfwhFkJQ2Zlt0oEw' \
    --userId 'P7Bc9iQcPRLUhk90' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE