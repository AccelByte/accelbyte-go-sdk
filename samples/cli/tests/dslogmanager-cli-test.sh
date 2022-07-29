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
    --namespace 'pVIOMzlB' \
    --deployment 'g6ohuaeF' \
    --endDate 'RJWMuYX2' \
    --gameMode '2uuzI5xg' \
    --limit '59' \
    --next 'Fnxh0VIw' \
    --partyId 'lkDeDPiv' \
    --podName 'iMJ43IZ1' \
    --previous '9HhhX6F8' \
    --provider 'Wvjd6I1x' \
    --region 'OL3lP14t' \
    --sessionId 'e5dC3F0U' \
    --startDate 'Pfg0bssX' \
    --status 'euTgLsqr' \
    --userId '1dpZ3H0Z' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace '8S5st2K8' \
    --podName 'ppRr2And' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace '9hm1dQzn' \
    --podName 'wRiqLSoQ' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "4dX6FpF1", "namespace": "2mmnixRz", "pod_name": "zZx5gunz"}, {"alloc_id": "aXdEhW93", "namespace": "tqioN2T3", "pod_name": "Njg9AwqD"}, {"alloc_id": "bR1nyX0U", "namespace": "EznTQTBr", "pod_name": "BIn4yVvo"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'bQq5caLj' \
    --endDate 'JUO7KOHv' \
    --gameMode 'PGTD5FI9' \
    --limit '48' \
    --namespace 'vciZlJqK' \
    --next 'TcQh6Rr1' \
    --partyId 'czNHhEts' \
    --podName 't3RBXnBa' \
    --previous 'cTofkhYy' \
    --provider 'sfA24E9E' \
    --region 'NiW1M6PT' \
    --sessionId 'G0mAhXBB' \
    --startDate 'JyZlLvpU' \
    --status '5TFuxChl' \
    --userId 'ivQIdWYE' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE