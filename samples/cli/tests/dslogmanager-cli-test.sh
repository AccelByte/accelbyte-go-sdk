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
    --podName 'GmQvEU2j1Oz2rV5K' \
    --logType 'Slt8cz8cjvgDujed' \
    --offset '88' \
    --origin 'aZ1iBnjL9lmFG9Wy' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'kHpK8vWeXwAfmR13' \
    --endDate 'Vocq90h6OMkVw6lj' \
    --gameMode 'c9DRI35ELyaFJKb9' \
    --limit '61' \
    --next '8EM1qHmBub6q9jE9' \
    --partyId 'fwxBJMNyI9UtzIvk' \
    --podName '7n3TzM4OrlsLf7pG' \
    --previous 'fsBlhfBim0MH3qRf' \
    --provider 'PZNIOA50z3cxp5Sw' \
    --region 'DlF3ERvQaxz7gq4m' \
    --sessionId '2Jhajq1R68WbFU2C' \
    --startDate 'KbA1We0Wboju2rJm' \
    --status 'MtHQ6hSdrscknJlG' \
    --userId 'Bjt7sFA6vUak5j7s' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'AjixQaY5MfdZ8Uac' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'S9gN6qeOiU95LuUp' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "egNhK1kwaOkeK6P7", "namespace": "zRtcjEqodK0cdb38", "pod_name": "yOkisPURYhYBZMhD"}, {"alloc_id": "4auGBTik9nntoNCt", "namespace": "FtsgSihPgVBoF7y5", "pod_name": "qSI1uvAoKzMEdwWQ"}, {"alloc_id": "C7CF8znHE86rXl1C", "namespace": "OTSBVgqKVig1hw8y", "pod_name": "rBus9mhBgKofFOwh"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'DzZEDjYLwky69szt' \
    --endDate 'pBpwYm8TDfSRlEZ5' \
    --gameMode 'CezFBHbDU8oEW5wI' \
    --limit '71' \
    --namespace 'uXEwiTS0A043Olyw' \
    --next 'MtyuMMY81QA3n0rs' \
    --partyId 'SZA94PxuXS9Feq5K' \
    --podName 'uHG39cSZwWkzhp0J' \
    --previous 'X44XYEnoF6AcrmUN' \
    --provider 'rS2hvdYbuo95jvpJ' \
    --region 'gALYcl7iAYCf10iU' \
    --sessionId 'DmAXjeffMUIMIRrF' \
    --startDate 'devfxWF3fvNi1EHX' \
    --status 'j0qm0PJOQ7m8n74N' \
    --userId 'heEYzbmZFIBsUcnr' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE