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
echo "1..9"

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
    --podName 'bMb7sSL4U9yHIegs' \
    --logType 'KHvRpmyi5JVwRLtz' \
    --offset '52' \
    --origin 'igv7ikAqVamCGJcV' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'Dron94KkAXy1Au0T' \
    --endDate 'NztN6YM86ONwbON3' \
    --gameMode '8DgHsUnBtKsvJumx' \
    --limit '31' \
    --next '6G7Voh6LeKlmk6pt' \
    --partyId 'GtkZ0QL6KETQwLvL' \
    --podName 'C1BgGZXTf7Rd9kak' \
    --previous 'tToedjckNpQ0hoXr' \
    --provider '0OnCvqvAbYdfAzuU' \
    --region 'n3Ni6HRXbgMAMKvS' \
    --sessionId '9WCAvEkRTNAUvjZ4' \
    --source '1pQ2WszTtVFzOVcN' \
    --startDate 'cm5kMfNYG8xMv7qd' \
    --status 'sm8JImXIkgVqKJRY' \
    --userId 'U5YwpCc0WI8wyxpx' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'bnjB1tttYdPPygXA' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'IObEOhHEbIkw5A6f' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "8V82PLQaz3bYUBTp", "namespace": "5AjPxacpGzeo0RCc", "pod_name": "4PaRBX7m327SxQBG"}, {"alloc_id": "IGd4Vd2PDpCFRL1X", "namespace": "zBkPXsKkSSzPscEZ", "pod_name": "6zQ8xGH5bxjbucWF"}, {"alloc_id": "tHDU9NtbCylprt9V", "namespace": "tDS0LHaY68MQUPP3", "pod_name": "wfprvxrPqgy4Yptp"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["sFGeNL0ScwWmqlby", "e9hXnR91XVgUv7kV", "uRZTaUOHdZszadW1"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'JIFEdTtSLQsJ38sz' \
    --endDate 'x3AmqHnUUtZ7pENJ' \
    --gameMode 'IQiy6DGLHlvAtQSq' \
    --limit '88' \
    --namespace 'N0tgaaOjGd4FcsDZ' \
    --next '72h4pu4zBgVDZaV9' \
    --partyId 'HG4nKLzre0kD66X1' \
    --podName 'u1lMF2KUmrRWTzEO' \
    --previous 'MEolid3vUpBbKUXC' \
    --provider 'c7pxOkqoNJQIV77y' \
    --region 'nPeFRNoU0FqGMAHc' \
    --sessionId 'Gr8xMntu2ejzI0Ui' \
    --startDate 'sd5LnP9SDCmvRiRz' \
    --status 'jfK3dUVN06g69BZz' \
    --userId 'FoPS0qwelKehXJYw' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE