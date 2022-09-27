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
    --deployment '5CEAxv1b' \
    --endDate 'ixAocvZU' \
    --gameMode 'zVO5YmH2' \
    --limit '16' \
    --next 'ryrC7cSO' \
    --partyId 'BCzPAcme' \
    --podName 'oAlUORXI' \
    --previous 'lFBBrps4' \
    --provider 'DcUENN4C' \
    --region '7ZGO7Egx' \
    --sessionId 'pNHbbmHJ' \
    --startDate 'P2xzXa7p' \
    --status 'dzHA4BTe' \
    --userId 'nQ3U3TcN' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'rnecg7ox' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'FJeKctnf' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "N4cUchp8", "namespace": "uMj0iMkN", "pod_name": "zYZ5J0Rr"}, {"alloc_id": "nCV5A9ul", "namespace": "h6dAkMkV", "pod_name": "hocsTwoj"}, {"alloc_id": "SSXufViD", "namespace": "hWybbcHm", "pod_name": "1P91vVaT"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'FsZsOXlh' \
    --endDate 'MfnZXOIP' \
    --gameMode '1VPrecy5' \
    --limit '96' \
    --namespace 'nXmZSros' \
    --next 'zBWswm0M' \
    --partyId 'gzufrhU5' \
    --podName 'UCHVBR6V' \
    --previous 'Z7d1hnuK' \
    --provider 'IP1ZpmQ5' \
    --region 'f43uQ2kG' \
    --sessionId 'kmMwr2Dg' \
    --startDate 'OgrwIBKo' \
    --status 'D50Zx4ai' \
    --userId '7gIpPvrH' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE