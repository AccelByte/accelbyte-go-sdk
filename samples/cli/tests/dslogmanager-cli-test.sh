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
    --podName 'RqYboqKHqF6hV7M5' \
    --logType 'idlynjoTyYqwb03R' \
    --offset '12' \
    --origin '9HPKG7I4QVrUjsZT' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'wpN46HNgk2NFG67P' \
    --endDate 'KD1qzOC6CPS65Sm3' \
    --gameMode 'gN1Uqk0vhM4GTt35' \
    --limit '49' \
    --next 'L0pxv6kEERbdHw8J' \
    --partyId 'hKsqd150vvSnyF2t' \
    --podName 'UjsguDROYBPRWIEH' \
    --previous 'IZ4RnsANwNGwmW2A' \
    --provider 'KjwPOyimwc2p2J3E' \
    --region 'LdncqzXOmWJEFDgy' \
    --sessionId 'Gje33G0zSbVGnrAU' \
    --startDate 'E0J525AbnJV1n3Di' \
    --status 'kSzKZ6wO60c8s0GG' \
    --userId 'L1aCJkSJ8FOCoba0' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'EHp82XGjmjCs3fxA' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'bXwc8YiUZgFQGxOB' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "xTx05HJzCR3BFohR", "namespace": "g4DMeKfJSFuR9U8A", "pod_name": "Wg0W7yxpyqADOn0E"}, {"alloc_id": "2VRlclgTLEbpaXU3", "namespace": "dSWgZBqbecKghNhG", "pod_name": "smHvnezlTxnBzae8"}, {"alloc_id": "C0km96sRbk9thsL7", "namespace": "YfsFjXqHarHek5rb", "pod_name": "mUmrLCs1DUSDpQiT"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'IiskICjTTvm1a4L0' \
    --endDate 'GBfiIsmgPNWLnQoX' \
    --gameMode 'AtHQlo5VUeSxNv6i' \
    --limit '6' \
    --namespace 'fo2WhVzpqR2gMRBx' \
    --next 'iOHWUL3aht0yl17s' \
    --partyId 'daTe83RWYhBFZlNQ' \
    --podName 'YGcCAxDdc0jxNZvO' \
    --previous 'dX5oOvaymHYQJyNG' \
    --provider 'PTnB3UFmNXVugLQ5' \
    --region 'J8JysnobfB5AuYyA' \
    --sessionId 'VjupmTlwp17qcN9m' \
    --startDate 'rPlSqNCMT3YP2TGz' \
    --status 'o5M8gd7H1BZ6PgUa' \
    --userId 'HODbskJOBpXIZz5A' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE