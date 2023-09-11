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
    --podName 'yXhBAE5S5iMwrNJD' \
    --logType 'ZfnVRiJb2dMMzOk9' \
    --offset '80' \
    --origin '31rAXItVif8HHZ1w' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'DxuiXdF4ubMMH2ge' \
    --endDate '6qcFuYP3u2WRYfRf' \
    --gameMode 'R73yUUA9Jr0UeNms' \
    --limit '13' \
    --next 'bEkio8jMfOUTL6nx' \
    --partyId 'ofDoHNJRLy8c6sUa' \
    --podName 'jVZldsHwcfE4RbLk' \
    --previous 'Uv5tY2ED5VKcmpV2' \
    --provider 'llzOd85Al0oDnrpS' \
    --region 'Y58nCc3F7S2yX1Qe' \
    --sessionId 'EPbFf5QVu4c22vfk' \
    --startDate '20KOJ9Bu3Ajni48g' \
    --status 'HoT3ba6zlYu8vS2R' \
    --userId 'ZRBbGhZA1xpvc24M' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'iB86RCbYLWdfhSRD' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'R27NoeFk5Cvin1SX' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "MiLCVwYOJeAUUSHC", "namespace": "0eozZAPE1B0BCGos", "pod_name": "4WGCtBmHE3nsgxcL"}, {"alloc_id": "wljerHvyz6oTRDuj", "namespace": "FpgqJ7JBxSYtT77J", "pod_name": "PoVpE26jtcfcp0eb"}, {"alloc_id": "M6tZCSlC7jHjCQF4", "namespace": "8s1c0Qhs7ugE7bBL", "pod_name": "iW5lFtau81ufH0bX"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'mKeFNeSD0RHcQnYI' \
    --endDate 'YibnGXP3d9y2IgfJ' \
    --gameMode 'bvIymf3aBvTWtjND' \
    --limit '43' \
    --namespace 'SuQtwby6BvbPUsyx' \
    --next 'zUfejj48Loz5bOWp' \
    --partyId 'EagIXXnKznZsL9xD' \
    --podName 'HUN2FJsKkQUVU5Y3' \
    --previous 'RMtLET5OpZ7VecCl' \
    --provider 'J32QJXjzu44pDRFC' \
    --region 'IFxLTH2ijGVVOWOp' \
    --sessionId 'lyifTzOSdCF2lnh1' \
    --startDate 'EywGW3El4s5pmDyQ' \
    --status 'TJswJ2YemsYejL1e' \
    --userId 'dpGyb98TKrpaCEnG' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE