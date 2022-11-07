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
    --deployment 'SiX2GHsz' \
    --endDate '3GTdOB5D' \
    --gameMode '4GGjGpz5' \
    --limit '12' \
    --next 'wvpDrB4A' \
    --partyId 'aCaUQ334' \
    --podName 'p09LpHTC' \
    --previous 'AhEHpl27' \
    --provider 'rtx2U88Z' \
    --region 'OPhL8ZOb' \
    --sessionId 'QbnNuO3s' \
    --startDate 'y312k9Rd' \
    --status 'SKkvU3N6' \
    --userId 'nhnFDnpD' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'EtXElZW4' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'sfMXNKLB' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "WWI62hFK", "namespace": "VHxNoUNe", "pod_name": "su5w1YnU"}, {"alloc_id": "9j8Birqn", "namespace": "c1a91dOI", "pod_name": "1YtF5f9b"}, {"alloc_id": "TctYY4fi", "namespace": "imhDrOWb", "pod_name": "umKmmUfX"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'NMHp9xsT' \
    --endDate 'SMOnmoJk' \
    --gameMode 'kkHXIs4O' \
    --limit '46' \
    --namespace 'Uqwqbm25' \
    --next 'UX2xxAmk' \
    --partyId 'XAp9wsJZ' \
    --podName 'BzkIam4J' \
    --previous 'FlqjCQ31' \
    --provider 'VAMNi6Re' \
    --region 'akot45ak' \
    --sessionId 'PAuxg6K5' \
    --startDate '19HYdfk8' \
    --status 'Ww9DGh7S' \
    --userId '4utLU621' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE