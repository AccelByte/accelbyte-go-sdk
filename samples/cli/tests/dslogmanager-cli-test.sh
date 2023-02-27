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
    --podName 'bJdC8LED' \
    --logType 'lsSXK62g' \
    --offset '34' \
    --origin 'RWRh1jxd' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'wFbWT9Uh' \
    --endDate 'YCQoSW4A' \
    --gameMode 'nx6PIgzS' \
    --limit '45' \
    --next 'PTwdYbOP' \
    --partyId 'xv43NdPr' \
    --podName 'xQJBB56h' \
    --previous 'p7BiBVjN' \
    --provider 'GivvHZGg' \
    --region 'Fa7YaxTn' \
    --sessionId 'FA8x8PAb' \
    --startDate 'FwF9vWxN' \
    --status 'Zc72DFnr' \
    --userId '74eHc5b0' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'ffChbbBT' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'DD9BMV7N' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "FYxl5ifB", "namespace": "G8qovyRX", "pod_name": "EeiCZpDs"}, {"alloc_id": "Il8DvXdN", "namespace": "D6RSpICK", "pod_name": "6x5b502n"}, {"alloc_id": "C5ianQT0", "namespace": "zbLhi3dx", "pod_name": "cjUkokg5"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'C99ozjZr' \
    --endDate 'hm3QL1Bf' \
    --gameMode '6Io9tB6C' \
    --limit '58' \
    --namespace '64Hz65u4' \
    --next 'sSpFye41' \
    --partyId '0MpXwhPb' \
    --podName 'KDryrPIp' \
    --previous 'PDs524LF' \
    --provider 'OL7k2H20' \
    --region 'yPA2TxsE' \
    --sessionId 'SXrMdPya' \
    --startDate 'RvnfXNDJ' \
    --status 'rflMwG4J' \
    --userId 'oozeJDws' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE