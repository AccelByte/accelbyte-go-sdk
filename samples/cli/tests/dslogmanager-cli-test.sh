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
    --deployment 'l5Wl7W0F' \
    --endDate 'm8BkjgCS' \
    --gameMode 'YFxFdmJs' \
    --limit '92' \
    --next 'Nk33fmLC' \
    --partyId 'nVmw5WMz' \
    --podName 'QwcxjK5r' \
    --previous '2YFpY1KK' \
    --provider '2pTVvKyq' \
    --region 'klpgyXgs' \
    --sessionId 'MKWi834p' \
    --startDate 'u3yWf1Gn' \
    --status 'SSV8MNZH' \
    --userId 'Ms3KjkHi' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Exqh3biy' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Ih1xVw95' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "zxnlcSee", "namespace": "xzlz92YB", "pod_name": "NL6D1765"}, {"alloc_id": "DG7z5n4T", "namespace": "VHUnP1TS", "pod_name": "DRA7Ae9j"}, {"alloc_id": "WNt13Qzf", "namespace": "llefMYyA", "pod_name": "E4LlZitj"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'X9MdUZ0H' \
    --endDate 'FReu6grL' \
    --gameMode 'c7nmCMHs' \
    --limit '64' \
    --namespace 'ITKVuXDc' \
    --next 'd6uTyrbX' \
    --partyId 'iJ3wlUI8' \
    --podName '8n91XEVc' \
    --previous 'mdWMt1NQ' \
    --provider 'Miao01dX' \
    --region 'q4MGLE0G' \
    --sessionId 'MUycKK62' \
    --startDate '9FajXMWE' \
    --status 'AhuxTQ9d' \
    --userId 'yJ8xVLvH' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE