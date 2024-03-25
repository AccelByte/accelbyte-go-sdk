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
    --podName 'bP3XmqT2UlTJwlkT' \
    --logType 't1tDM7L4UaPWNspG' \
    --offset '16' \
    --origin 'u2A2u2x1qfTRBEYQ' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'yEoVUkXrVPnq0mYa' \
    --endDate 'v5edgx8SRtswgguV' \
    --gameMode 'jhUqTtPHbjQX0C5S' \
    --limit '34' \
    --next 'wb2geuYBkmBKDdB9' \
    --partyId '5z7ZhIgLIbGkKFqq' \
    --podName '2Ux72DPMxM4cerH3' \
    --previous 'CjpdtavlHj6lohHa' \
    --provider 'IqV9A8SfJF5a5Zdm' \
    --region 'pk8kSqxc1TXojsck' \
    --sessionId 'hhW4GrLKxjG0n70A' \
    --source 'po6w7PMSEyFZPI4Q' \
    --startDate 'P8DT3srVgjiSrTGr' \
    --status 'uY4vu56SO0CzxzTd' \
    --userId 'jL06JFkepe1qSDzD' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'uMOnWxCA5aNRzytZ' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'QQFdytIe4IgMWtxr' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "s16BiVZKF8HqKwf7", "namespace": "rh1H6KTlCz0WjbCf", "pod_name": "r4Mh0u5XFwVXGuIj"}, {"alloc_id": "5bG6jbHcRGx1k88h", "namespace": "1uv1nY1YCLGvRqlp", "pod_name": "PugC8zncO2Bb1NWG"}, {"alloc_id": "GfukkAE8lPZgxGNP", "namespace": "i3gn2SfSI95Wf3ju", "pod_name": "Ib83G8fEstxNVmgx"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ZfjhgGCPLDTGRv1C' \
    --endDate 'rykufSkjcCYzni62' \
    --gameMode 'iDowM7sd1YPULUui' \
    --limit '27' \
    --namespace 'NTovlVmVapAXa6eJ' \
    --next 'TArZZiHNRCmdHo9X' \
    --partyId 'glfQP0tC1AwVnUxS' \
    --podName 'mvjMr8EorFV5jNfL' \
    --previous 'q9ezrvikMsVMbmJM' \
    --provider 'iQvojZTXIf4ptQb2' \
    --region 'YuK7fRET8XFtfeXI' \
    --sessionId '6tzFC7xeMQatyKmx' \
    --startDate 'pZCdfxc1bgxAWd61' \
    --status 'gYQ2UWMGXXw5LMQL' \
    --userId '25SFZ1bbNB4kDuHh' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE