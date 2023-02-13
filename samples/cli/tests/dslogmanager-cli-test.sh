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
    --podName 'egtNP0B7' \
    --logType 'p8jRVYk1' \
    --offset '54' \
    --origin '6CWyQBEE' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'LGI9AM0f' \
    --endDate 'fiy123JI' \
    --gameMode 'g5Uof3C1' \
    --limit '34' \
    --next 'OihcSwWQ' \
    --partyId '3v50r1oc' \
    --podName 'OU9w8Jyf' \
    --previous 'YxY5Us1D' \
    --provider 'K7ayFPlc' \
    --region 'l7vm8KEg' \
    --sessionId 'UJm92h38' \
    --startDate 'QWilfFyC' \
    --status 'mqV1qn3E' \
    --userId 'VtfQ1uoL' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'j7JKI37k' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'bLavL8OB' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "rwbFknTv", "namespace": "4hQdBRiF", "pod_name": "Ad1UbZdW"}, {"alloc_id": "xNG46hgC", "namespace": "Lttgxnl4", "pod_name": "zMVGBd9I"}, {"alloc_id": "AuyGDagJ", "namespace": "52Aj8UiK", "pod_name": "KhQxytGW"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'PmPnKej9' \
    --endDate 'Lyb9VDce' \
    --gameMode 'dufijF8G' \
    --limit '31' \
    --namespace 'GtV9ozcq' \
    --next 'n2S0qgQ9' \
    --partyId 'dQlA9evm' \
    --podName 'vWVHvCtC' \
    --previous 'RoDOkKu3' \
    --provider 'c2skKQRS' \
    --region 'YTRhyGnj' \
    --sessionId 'GzGnEVAg' \
    --startDate 'k9sNW4Zt' \
    --status 'PcTVk8IV' \
    --userId 't5nL1t7B' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE