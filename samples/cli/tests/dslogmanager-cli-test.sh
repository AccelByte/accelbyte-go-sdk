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
    --podName 'gDMtsb2s' \
    --logType 'u7Vpaa3W' \
    --offset '47' \
    --origin 'mwfajqM7' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'aEP5vDAr' \
    --endDate 'YYcTCM4a' \
    --gameMode 'ziIpXX3d' \
    --limit '49' \
    --next 'LfI6LVYu' \
    --partyId 'EvXyp0JO' \
    --podName 'BOOZ5TBP' \
    --previous 'Qy7sYrSz' \
    --provider 'AIxYH1dn' \
    --region 'QmHVNVDu' \
    --sessionId 'UQDnCpdD' \
    --startDate 'WGTGcS5s' \
    --status 'IaP74eA3' \
    --userId '3thiDc0h' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '31Eij6AY' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'rBNYIYYu' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "TRozamoN", "namespace": "WTms9ZRJ", "pod_name": "hMCCPKtp"}, {"alloc_id": "Mu7dNW6l", "namespace": "dCmg0Cdu", "pod_name": "DPQKBFhI"}, {"alloc_id": "Vl3XHSYp", "namespace": "kGEJDT5H", "pod_name": "bc9IwvNL"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '6mfnCn19' \
    --endDate '0DbWKFWh' \
    --gameMode '8e4nhyi0' \
    --limit '21' \
    --namespace 'ng4XqCqm' \
    --next 'wD2ByrDp' \
    --partyId 'agdCqAdX' \
    --podName 'M9RXJrXz' \
    --previous 'ShsdTn7A' \
    --provider 'goToKBJE' \
    --region 'tLPXtxMa' \
    --sessionId 'yjmUlAJx' \
    --startDate 'GfWGwutM' \
    --status 'FeLius6s' \
    --userId 'qpY4ELIQ' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE