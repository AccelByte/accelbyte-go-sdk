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
    --deployment 'R4C9L3n9' \
    --endDate 'DrzDk4NQ' \
    --gameMode 'Ebp89nRB' \
    --limit '4' \
    --next 'KvE4kG54' \
    --partyId 'SXDJsvpe' \
    --podName 'tUupxJ9v' \
    --previous 'VOD5x9is' \
    --provider 'IoR3Dtp4' \
    --region 'Mi37Yyps' \
    --sessionId 'upMbAMhv' \
    --startDate 'K7NEk60U' \
    --status '2goFLDyt' \
    --userId 'mRpyoo1W' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '1XJa503p' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'nkvG1GLK' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "8YjnDUHn", "namespace": "MKuv5pxC", "pod_name": "RWUBzIxY"}, {"alloc_id": "HVNaMO8V", "namespace": "t0n8FVVo", "pod_name": "U0tPg444"}, {"alloc_id": "0e14NqDR", "namespace": "UvHleqhC", "pod_name": "bnvKzJg1"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'UDbQ7n5H' \
    --endDate '3ivE32KI' \
    --gameMode 'gnxCsLMy' \
    --limit '57' \
    --namespace 'bVHkioO1' \
    --next '68zhPnBn' \
    --partyId '37R21c1S' \
    --podName 'idbS3Ycg' \
    --previous 'rx2nvfx5' \
    --provider 'jBRMVZbr' \
    --region 'HPali0jm' \
    --sessionId '98t5RvMN' \
    --startDate 'fblqL4vQ' \
    --status 'SZ4ueqTK' \
    --userId 'uAiRHS8G' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE