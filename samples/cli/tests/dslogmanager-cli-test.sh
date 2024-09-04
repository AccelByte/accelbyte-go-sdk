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
    --podName 'FFWfXNpn2RXR5XVi' \
    --logType 'oDRssw43SAtNhSOa' \
    --offset '32' \
    --origin 'KcCt9NrMMIEFtsTF' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'fGw4C9PsiCsKDAfP' \
    --endDate 'lwPAiXwmdSXXZjhb' \
    --gameMode 'wyZpC1QERv1JzSjy' \
    --limit '1' \
    --next 'AbkzbEVnGFaWbJuT' \
    --partyId 'MNXtX1lB1Wb948Se' \
    --podName 'hR4dhh1JgI4CUoxE' \
    --previous '6Bin29l2WA2RBkWi' \
    --provider 'EcKPLFmjCPaiIA5m' \
    --region 'w12SDyciNCJE85EO' \
    --sessionId 'tAse2e9WOizKImGB' \
    --source 'ttY5IE3q3yk8e5JV' \
    --startDate 'yiLBZZxO3HB1XmZ0' \
    --status 'VL3CmG3ycLOcfLfL' \
    --userId 'UmWdCzbNVWAb08gs' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'eBdMVZ5zzsMtCdbY' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'j31rQIdbhZ7I5Suk' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "r4u3uRdq6deJVRrR", "namespace": "kYTfZBNRx3Ixvk3L", "pod_name": "pJN201AuX4ZTYx8z"}, {"alloc_id": "1Gv81zlb7MXl9mQs", "namespace": "nLmvUuYyP6Ll6oxw", "pod_name": "4jCNTq2vgrxGrWEs"}, {"alloc_id": "3QIXrm1Ev9Fsk61L", "namespace": "Tt6fLs21nQ6sYLs1", "pod_name": "bXu8WSHSuiCk6Ofm"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["TBKcfWs1Jq1GvQMM", "KZeL5G0FcBczx1Yu", "TZjjYSuacaBI1MDe"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'J2WjNnbJXnSTzHXL' \
    --endDate '77cp9Rs7vNAGqCPO' \
    --gameMode 'NHy8aTYPgCdjARmE' \
    --limit '8' \
    --namespace '9ezv2EvpLDcM6RkA' \
    --next 'JSsx9Li6XQWQHQuy' \
    --partyId '0WdgavYT7BaA2xEN' \
    --podName 'MCoQh1pktfT6XL1I' \
    --previous 'Ocilq31LxGikEGuW' \
    --provider 'zkEwCmNVNnSdRac2' \
    --region 'KcfYmj67SyMp8XaS' \
    --sessionId '4xpUHX5PpD3C1AHs' \
    --startDate '51dBCfh6C42dZVV5' \
    --status 'wbYCeoPVlZmKXLlX' \
    --userId 'ct8Oobp1pmHjRmZJ' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE