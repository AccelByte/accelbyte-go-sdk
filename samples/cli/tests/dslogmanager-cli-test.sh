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
    --podName 'RQCCUdNSgwwJYVNJ' \
    --logType 'pa6LU835jPmcfwHO' \
    --offset '92' \
    --origin 'Rd3aCWAJgD2nQ7O4' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '6ZmYg6PKx7Gp6Ri7' \
    --endDate 'aQDHGmmAOWYy1FUc' \
    --gameMode 'gAck9r361ivV9Bzw' \
    --limit '74' \
    --next 'dua4cpOeK1Nd5zL7' \
    --partyId 'EZh0kcJveONJ8jL5' \
    --podName 'ZIWZJBCmvKefKcG7' \
    --previous '5pRnuTay5Wusr6KI' \
    --provider '4riPiysqWFDc57W6' \
    --region 'Qi00aZ6SBim0CM6q' \
    --sessionId 'fApdIlHJhW6nnitt' \
    --startDate 'hQhPvb5uhI2mnz1l' \
    --status 'aDAtzoK9672oGAfO' \
    --userId 'VVp6POGGp19Tu83C' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'lMAbJwYyvex2F6EA' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '7gqCJzsTxsiqY6FE' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "XwFl8Ga9mLbZCQwx", "namespace": "pzjPaTbWvbYVZrzS", "pod_name": "Zcg8w6FSDc1G0aMn"}, {"alloc_id": "NXo6PtbEtphzzffL", "namespace": "od5ZZRGIEqOWuSEQ", "pod_name": "YtQPxgZNvbj50h0j"}, {"alloc_id": "yR4WySJXKQSJw4xo", "namespace": "kyWcil5VLPxtd2m8", "pod_name": "JVHinpHSqqNmPyFj"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '6Rr7wtteEHBcGJuR' \
    --endDate 'yRjgaBrZR8uozP3l' \
    --gameMode '39PVdGq31GAGcwEO' \
    --limit '97' \
    --namespace 't32KxQUtxYEd0KbK' \
    --next 'o7p42fTcYpQy5Fi0' \
    --partyId 'Db97l2IGHhO8VIIA' \
    --podName 'npBt6NVkbZvL8wnv' \
    --previous 'lbYbVEybkUFplE7Q' \
    --provider '4OWQ4wPN3eK6IJ0s' \
    --region '5DNUHZFN2lU8U3uZ' \
    --sessionId 'zy6lh3rFMEHkqYpv' \
    --startDate 'b3G2SPNoOARUwNha' \
    --status 'HXhK3cCkEBdmm5eA' \
    --userId 'qqEMq7CkLw9C9kpI' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE