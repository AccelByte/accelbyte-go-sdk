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
    --podName 'IPqP08Do' \
    --logType 'VOlzG5us' \
    --offset '38' \
    --origin 'BUORLXEd' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '1Dk9WC5B' \
    --endDate 'EaZIOXQo' \
    --gameMode '8Bn57DJB' \
    --limit '14' \
    --next 'TZwmBCn3' \
    --partyId 'QyIAqU0C' \
    --podName 'QuCHTBUc' \
    --previous 'xWPjz759' \
    --provider 'ngD47uER' \
    --region 'OCWHVw7c' \
    --sessionId 'NsyjMbQl' \
    --startDate 'u2BsgZtt' \
    --status '2UinNaF9' \
    --userId 'LJtrseUj' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'mQUlg9pC' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'ZbylM3lW' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "2kzFN0fQ", "namespace": "gEd4uGtq", "pod_name": "y6SN49jM"}, {"alloc_id": "xYo5epu1", "namespace": "SHgTIiYs", "pod_name": "gRoeAmUl"}, {"alloc_id": "LCuLlvNR", "namespace": "Fb0Qo54N", "pod_name": "l1PWIXrh"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'F5MbkR9r' \
    --endDate 'SBINRx8E' \
    --gameMode 'J5pNzvgJ' \
    --limit '89' \
    --namespace 'QlTJY1U3' \
    --next 'pEEA55Ax' \
    --partyId '6uDnseBM' \
    --podName 'vRHLyks0' \
    --previous 'ZUByG1xQ' \
    --provider 'yx6Frh6I' \
    --region 'x99qHSks' \
    --sessionId 'g9DOYiSj' \
    --startDate 'igr5I0bz' \
    --status 'FyxEMDTL' \
    --userId 'agnfghZm' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE