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
echo "1..7"

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

#- 2 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'D1dOENEh' \
    --endDate 'ejyoN6rG' \
    --gameMode 'KA4kPkkt' \
    --limit '33' \
    --next 'bOoZEpuu' \
    --partyId 'T1tRMNor' \
    --podName 'PLUnkRL0' \
    --previous 'I4HohER1' \
    --provider 'BzgMLfGI' \
    --region 'CA20qJL7' \
    --sessionId 'vfBLzFiN' \
    --startDate 'xyTmpIKT' \
    --status 'Lm9E5WJn' \
    --userId 'X1kqJ8sz' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'lK6gStBA' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'MyyTfsdp' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "53U2V00m", "namespace": "8nIQPXnA", "pod_name": "hNvYBzr1"}, {"alloc_id": "90b1anJW", "namespace": "ETCUZ9ee", "pod_name": "8WBvxiGK"}, {"alloc_id": "cYrHOmno", "namespace": "CDS7KzQy", "pod_name": "gyh3Horv"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ficBQnQ0' \
    --endDate '4VuYXLrq' \
    --gameMode 'RF85dgmd' \
    --limit '20' \
    --namespace 'wqHNF75E' \
    --next 'xmaakWqg' \
    --partyId 'nJwJJ5TR' \
    --podName 'AN1ISmv3' \
    --previous 'vyQfblx4' \
    --provider 'A98zW7dm' \
    --region 'TLOLG0xO' \
    --sessionId 'o0GQ4cnF' \
    --startDate 'cXqeNaGf' \
    --status 'XFLNHQLH' \
    --userId 'ruNk479k' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE