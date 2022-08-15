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
    --deployment 'k9dvgaaM' \
    --endDate '7WQRJcGG' \
    --gameMode 'MHYt320H' \
    --limit '11' \
    --next 'cSbiFP5y' \
    --partyId 'bI8ag2pO' \
    --podName '2Y07U30U' \
    --previous 'dGacQPtn' \
    --provider 'z517NDjI' \
    --region 'ru53v91n' \
    --sessionId '9nUtDL3k' \
    --startDate '6gfib6tI' \
    --status 'Myy3vdeK' \
    --userId 'QV7m89tp' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'E1X6qwXT' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'a10bkX8T' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "JlB05Ct0", "namespace": "ymQ4N27v", "pod_name": "qdnK4sgo"}, {"alloc_id": "9zlpMQ10", "namespace": "ZTyCmsZc", "pod_name": "ND2IxxQz"}, {"alloc_id": "14kZYEGu", "namespace": "yCMxOjJF", "pod_name": "nFzQTGZ5"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'IKjfZily' \
    --endDate 'wqoSUf4d' \
    --gameMode 'RD3gYzJS' \
    --limit '13' \
    --namespace 'kAXMSw8a' \
    --next 'oAz8JnTv' \
    --partyId 'HB0PZSt8' \
    --podName 'lCBleLyH' \
    --previous 'Wa667M5t' \
    --provider 'eq2nkoL8' \
    --region 'l3PZ6Eo6' \
    --sessionId 'EQRN7R7N' \
    --startDate 'IiUpdQpB' \
    --status '89rUBkh3' \
    --userId '7mbPfVwx' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE