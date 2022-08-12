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
    --deployment '4JZjHeED' \
    --endDate 'qt0un9sa' \
    --gameMode 'lVSNRWQ2' \
    --limit '17' \
    --next 'R22pXYmb' \
    --partyId '1DSuvPCk' \
    --podName 'tnxktFn8' \
    --previous 'HUl3Muli' \
    --provider 'f7K0HzXw' \
    --region 'gxv1fhy9' \
    --sessionId 'EpuYd9QP' \
    --startDate 'qI7jeiGZ' \
    --status '56iWb4O3' \
    --userId 'PQt9x375' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Eko4cepJ' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'QurYIvFl' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "pcTPfPgk", "namespace": "Il6HU7NP", "pod_name": "Qof8cC8K"}, {"alloc_id": "WzzI6udD", "namespace": "YvTUvlNq", "pod_name": "zgxmOUNq"}, {"alloc_id": "rrjZx3t1", "namespace": "a32sAe7x", "pod_name": "OwzSbxHi"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ypIjcj1x' \
    --endDate 'qCFRrOaL' \
    --gameMode 'XNQK8DzE' \
    --limit '96' \
    --namespace 'Y7J2Gdyk' \
    --next '0TDpC0ZX' \
    --partyId 'RGC0wm6j' \
    --podName 'eDbzM6hk' \
    --previous 'kuGIuJqa' \
    --provider 'vjUJA0Xm' \
    --region 'YYZPBQpK' \
    --sessionId 'xnMaTdMr' \
    --startDate 'rgcSWFKt' \
    --status 'o5Tgfi8p' \
    --userId 'xsroXJQe' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE