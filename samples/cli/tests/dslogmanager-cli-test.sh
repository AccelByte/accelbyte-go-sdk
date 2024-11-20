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
echo "1..9"

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
    --podName 'jRklrICjnzrAkp1Y' \
    --logType 'kfh0rWov8jnbtEsw' \
    --offset '24' \
    --origin '3pV09l62Hbiz1T5X' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'QcCPIPVOaFDPmGuA' \
    --endDate 'KA8ISTVw8k3nP3JX' \
    --gameMode 'U7XU1kF2WoZEco9a' \
    --limit '16' \
    --next 'gI5RI2K8xhCJ4SrX' \
    --partyId 'PThwdXO1QvmdFlph' \
    --podName 'Edw1LQc7Dfrqp6PT' \
    --previous 'SV3irhdRyFVCAG61' \
    --provider 'EL29NINPhuii3biS' \
    --region 'YeZONQiNps6t9WF8' \
    --sessionId 'qjUobgCAmM5mcQHs' \
    --source 'F9Q0Av4h4fBpcCyB' \
    --startDate '4dB2le6axndfial2' \
    --status 'pp8ydFrYs8FCtYaa' \
    --userId 'Lr2w9cQU6jWn0U0Z' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'tD7c7ZktSw6Bayar' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'zuxbz4GmdamIsNDg' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "C0vOdRwPeuA3ZI3b", "namespace": "E9ajjSe0raV514XX", "pod_name": "7SRqnBgzUeIiWdTU"}, {"alloc_id": "glZXBWzCkIKakyFX", "namespace": "eMkOfXZPsmc3nRr4", "pod_name": "DvIR9uFE90O1Xmg0"}, {"alloc_id": "DHYL0bJBdjV3PHtF", "namespace": "Yr2T796atvqzKVTn", "pod_name": "p2vfza4dRtuPrxIi"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["jxbIukc3P9keNbLI", "rKziUVTxhhXLA6AQ", "1qqiiH5MYMYgEDc2"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'buaUw1mVNNaxCOoO' \
    --endDate 'FjgQ3VfmgepXqLvG' \
    --gameMode '9eZskEpAGgxcqzRm' \
    --limit '50' \
    --namespace 'M7MYNhqwV4P7o5ma' \
    --next '5eXkuDEXhQvJ35gg' \
    --partyId 'zp49jqGPJUeyb4GY' \
    --podName '5x5Xci1jfFZj9ZQ7' \
    --previous 'RtjUNd5yZELe7hUl' \
    --provider 'MqZopOTNhsgANPlj' \
    --region '2oB9gUYBpVnAx7rZ' \
    --sessionId 'LbtILhhCd80fPAPM' \
    --startDate '8cgmCsmI3hcNEeq9' \
    --status '2eZv0gDIsWHUe5at' \
    --userId 'DiHRJc3E9cXBbXl3' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE