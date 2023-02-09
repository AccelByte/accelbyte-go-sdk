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
    --podName 'LvVUG4ba' \
    --logType 'j1q5wKNK' \
    --offset '54' \
    --origin 'Ez1Zpqmj' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'd517YgFG' \
    --endDate 'bWVUk5GI' \
    --gameMode 'A7Zwpab3' \
    --limit '22' \
    --next 'evSy6fsp' \
    --partyId 'PDR7a9Cn' \
    --podName 'PQdj2gVU' \
    --previous 'T0ji5UR0' \
    --provider 'o0llNX0l' \
    --region '8RbwVGHo' \
    --sessionId 'rOZ3pdms' \
    --startDate 'y7s2pVYs' \
    --status 'mB6qi1Lf' \
    --userId 'kfjpR1R7' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'nRjypQIJ' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '83bg2e1r' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "NWA798QR", "namespace": "z6MTNiGO", "pod_name": "LEOKxpqH"}, {"alloc_id": "kcDegAV5", "namespace": "TIY7Z26g", "pod_name": "FPB4rNYo"}, {"alloc_id": "jViypQWr", "namespace": "eYS6ZDKH", "pod_name": "JztN4sqI"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'H05r7bmn' \
    --endDate 'fv0s1j8y' \
    --gameMode 'e0VXA3qg' \
    --limit '12' \
    --namespace '80TyYbom' \
    --next 'xQ1r2BKW' \
    --partyId '7zgLG1CF' \
    --podName 'VAdu4AzY' \
    --previous '1S8iEELn' \
    --provider 'oem0oKgr' \
    --region 'p2cWn6DT' \
    --sessionId 'SEbABpus' \
    --startDate 'h80Y5UFp' \
    --status 'fIuWsNsp' \
    --userId 'ynW84g8n' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE