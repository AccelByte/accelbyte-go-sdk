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
    --deployment 'eCMn7beB' \
    --endDate '8sv5Q1zK' \
    --gameMode '1kgrOp9A' \
    --limit '38' \
    --next 'AtyTNYDW' \
    --partyId '6DAyaKJT' \
    --podName 'pNXOgA04' \
    --previous 'WKVKIQVp' \
    --provider '8uvGMV3Q' \
    --region 'stcvxFYq' \
    --sessionId 'DB2JHqTW' \
    --startDate 'IWFHRAr9' \
    --status 'A2TLszwj' \
    --userId '8hTpCzfT' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'qBBHjOe4' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '57sXT8dW' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "GDvP0goQ", "namespace": "nt7Ui9sS", "pod_name": "yNhZs1gy"}, {"alloc_id": "u20hFMqv", "namespace": "tcIJ6b9n", "pod_name": "MSX4IuZU"}, {"alloc_id": "ypBrt6Fy", "namespace": "RuJj2Yy6", "pod_name": "oVJ28vlD"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'SZH2K8gs' \
    --endDate 'UGSojSQq' \
    --gameMode 'tL2RYDbt' \
    --limit '23' \
    --namespace 'lRh7e48g' \
    --next 'z5wSUwfS' \
    --partyId 'DfmWaPUz' \
    --podName 'HIBVRXGL' \
    --previous 'YiqgN01k' \
    --provider 'MFHvzV1n' \
    --region 'Tk2NLi7A' \
    --sessionId 'uQkGGJev' \
    --startDate 'hw9to0b5' \
    --status 'Wtek1kVB' \
    --userId 'HaNTsL5e' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE