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
    --podName 'OKVsAAy5' \
    --logType 'ansUauZd' \
    --offset '10' \
    --origin 'DLjavhqK' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'vhl4u93z' \
    --endDate 'h5CdboEr' \
    --gameMode 'ARmzZjRF' \
    --limit '20' \
    --next '5jKIXtXA' \
    --partyId 'FUIB1v02' \
    --podName 'nN7I5T6N' \
    --previous 'XTiYk3bo' \
    --provider 'EXoMuy66' \
    --region '67aR44mx' \
    --sessionId 'kucBgylV' \
    --startDate 'Xh61rQay' \
    --status '7VKhjsJ7' \
    --userId 'y42d45qC' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '1juEqfgg' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Ga42bsAY' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "ihkdEw2T", "namespace": "8ln79hwE", "pod_name": "sdaQ45vQ"}, {"alloc_id": "sYDHb3YB", "namespace": "oyUzSkvC", "pod_name": "jX0Ym4Bz"}, {"alloc_id": "78PANINH", "namespace": "e2dalyhu", "pod_name": "4VYVGCSm"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'EvObJmbw' \
    --endDate '54BxSNVI' \
    --gameMode 'iPIzzKEH' \
    --limit '61' \
    --namespace 'XG8EFdhi' \
    --next '9xY6ZZNO' \
    --partyId '2WtH7JPS' \
    --podName 'PEYLMjrv' \
    --previous 'OgiJDnZX' \
    --provider '2OnuK3fu' \
    --region 'QzZVPXyV' \
    --sessionId 'ETnRXe1H' \
    --startDate 'ZuMN7OTP' \
    --status 'czcMSwT6' \
    --userId '6O7Q9u19' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE