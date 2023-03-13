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
    --podName 'EAxcVpFr' \
    --logType 'ttufHIRd' \
    --offset '68' \
    --origin 'Dc09nIW0' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'Oaiw9B0D' \
    --endDate '7eHpzSn3' \
    --gameMode 'ZPUdc0qh' \
    --limit '27' \
    --next '2WopBJHP' \
    --partyId 'tcDs8bBZ' \
    --podName 'LCXLx8bb' \
    --previous 'gorQeFbQ' \
    --provider '1g7qbPng' \
    --region 'UNB1vRod' \
    --sessionId 'wpzS6DaD' \
    --startDate 'pv8N7ZQV' \
    --status 'qGj6oDLj' \
    --userId 'WjkY1aXl' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'FcDtgOjc' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'hIua5tWE' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "IC32ogW7", "namespace": "olvbTgrh", "pod_name": "RTcPiSuL"}, {"alloc_id": "0Sly6XM4", "namespace": "OI18mAQL", "pod_name": "nzjMf8GZ"}, {"alloc_id": "2WBZqxYG", "namespace": "3aREAu2D", "pod_name": "6QVKNCWP"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '75TB0i7p' \
    --endDate 'KxR8dl0z' \
    --gameMode 'RVW4EZG9' \
    --limit '25' \
    --namespace 'Z4U68su8' \
    --next 'XfqlqNiT' \
    --partyId 'vB6SdAdI' \
    --podName 'hUDrwoZ5' \
    --previous 'MecdKi5r' \
    --provider '6QEa1ysL' \
    --region 'Ezth6mXh' \
    --sessionId 'zkzWkFeZ' \
    --startDate 'SoEAcBdW' \
    --status '19m4eu6d' \
    --userId '5tA5jUmi' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE