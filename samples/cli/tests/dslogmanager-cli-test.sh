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
    --podName '0xWNHcKgWoGjK9lf' \
    --logType 'pAkA8jp7PX4psyba' \
    --offset '48' \
    --origin 'ryJbpQheQprFzVQd' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'IV4TnIbVQ53CcRvG' \
    --endDate '7A0tNKUrT19vn7Z9' \
    --gameMode 'zuDBxL4kUoFd8ATX' \
    --limit '18' \
    --next 'AoBun3B528D331Vv' \
    --partyId 'J9oA2hRrBkb79AM0' \
    --podName '47yQ3kmQxNaupplx' \
    --previous '1HKBC7kfwJvqISBm' \
    --provider 'eqr2zuHXimKHBUIa' \
    --region 'AnNncbUxLAXMpjNG' \
    --sessionId 'VBfu0GcQmUDmivpI' \
    --startDate '0vftFfS1lJ7pfFDC' \
    --status 'qDMZtRfs5t5oqqsn' \
    --userId '6cTGqv1nr5YOntcq' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'OQmIbxfmDWArzkQn' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'HEfhJYlEUR8h2uMH' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "NVUr1BAlXZlQ7Oex", "namespace": "zmpB2cFhll3fGIfC", "pod_name": "CU6gQy9nVkGXOfYx"}, {"alloc_id": "pU6CpLe8UI3aBVA7", "namespace": "2QQpcrx5GJHBvwG8", "pod_name": "i9XsgMzyFEYyVa2g"}, {"alloc_id": "T0Kk23PVPHWaATNi", "namespace": "yblJopuSHJtfDFsa", "pod_name": "tpjofTc3v5PBHsYD"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'kRaD29KpnWLqgMXD' \
    --endDate 'RxrLvw5ISFoo2Rkb' \
    --gameMode 'p1aVB9lWdI902hqg' \
    --limit '79' \
    --namespace 'RJVyWAB0VlE4dQ8b' \
    --next 'LPyVtjOMAnPKIbK1' \
    --partyId 'tn00qGwh9ULhccEz' \
    --podName 'rjlWMAu4CyeGMmtx' \
    --previous 'UJhHWJBnlsOvU4nS' \
    --provider 'oXl0csN4RaZCDUeM' \
    --region 'H8A4oTwHKszVFW4V' \
    --sessionId 'MkKhVmje5f13OeQN' \
    --startDate 'MszbZ1EfQ6Aj2qqY' \
    --status '2gqzOIgULxgLpFDo' \
    --userId '2X6oP1PIKHkOqtY3' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE