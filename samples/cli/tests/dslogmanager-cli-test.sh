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
    --podName 'B3W2Xo2m5qFnrkHt' \
    --logType 'prO2hihfXLOtnjlV' \
    --offset '10' \
    --origin 'q9EMSq54tCBu1gwU' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'XhWRUO6nt9TfvDo3' \
    --endDate 'BHoC5lgYpONYIWUJ' \
    --gameMode 'zts2RlBilwpSewZv' \
    --limit '31' \
    --next '2i2P32d6aoN8zlbS' \
    --partyId '9ISAoY3zTsO15NQY' \
    --podName 'hSHZZPmyAN3dtr9d' \
    --previous 'aGmSMOTongqRUE9Z' \
    --provider '5qHixNSVThfXtZng' \
    --region 'iqewbaKjQuQNvEyG' \
    --sessionId 'u9b8F2X8vxbhjjhC' \
    --startDate 'zQgHoyO6KldbZdXY' \
    --status '0pgZgQ32xuZeWchC' \
    --userId 'NSX1opY6CpqwvF4Z' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '0LrJd6GHlsIcZpe3' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'KOOIR3YVyvjzsWdF' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "FbQqB0PDHRADZKXe", "namespace": "px3k1bMRyKxljsSM", "pod_name": "vPnEtwKTdWHT89Al"}, {"alloc_id": "zAni9QgMQ1MLN6NW", "namespace": "TwTfDYykguLj6Hrl", "pod_name": "6FxgDAi0SohK9kPo"}, {"alloc_id": "bAuEiJt2HPivBK8o", "namespace": "73ZCXQzbDWFQhhjH", "pod_name": "uKZp7LG7t72TZq7Q"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'XWZhZ1KgWwAKAJP6' \
    --endDate 'vfn4Po04gUNdqvcH' \
    --gameMode '9RBSn2mKYXR8uo5V' \
    --limit '42' \
    --namespace 'fODRpeme1rmHwS7B' \
    --next 'TrXg4pAoZJQAmRsl' \
    --partyId 'UaCZSxV8GfpLLLML' \
    --podName '94MGHL3cf8txsl2L' \
    --previous 'nW2eHWPK2JfjSdpr' \
    --provider 'kRnRUUXZaV7vobtT' \
    --region 'qykd7j6oJu9a1fa8' \
    --sessionId 'u5b52W9BX7MAgDd6' \
    --startDate 'Ak0ynUy53FSgrH0N' \
    --status 'RWjQMpGcqvmRwsxV' \
    --userId 'EqBfUhM5br6xRbQ0' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE