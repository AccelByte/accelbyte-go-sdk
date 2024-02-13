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
    --podName '1Qu2VOGkRNHmJH7k' \
    --logType 'eZdqx2JKpfTyuTBX' \
    --offset '10' \
    --origin 'edn68I9GAgiMdHLs' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '1eKQ0mMdERzSfNph' \
    --endDate '7AlqLaNOdSEI7GHy' \
    --gameMode 'FfFQvBq9cwu37tpP' \
    --limit '68' \
    --next 'ovA1JIF83Es0wHYG' \
    --partyId 'YHFF02HQgwz2JFJb' \
    --podName 'HntuSRmgOIBBsNsW' \
    --previous 'OG414JEXIBLLBKGk' \
    --provider '0NzgQBzGU2sPdiAB' \
    --region 'hMuHpLBJUjYAo5ZV' \
    --sessionId 'HcDVrIcz2Hbc1X7V' \
    --source 'c1ju2WjwSOJSx9i2' \
    --startDate 'RtPkRzN6Mw56823u' \
    --status 'QxBUXbEJsBPevtpQ' \
    --userId 'R4C4p7fRZrH0dmuX' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'xU2PDECwJis8UGWg' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'K3vf1us3pMwABTZV' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "PZ9yIqvHFAknrpwT", "namespace": "uASM0svLynOwK9cc", "pod_name": "G1LcAKIr4jCpBLI6"}, {"alloc_id": "rgsiFex0iYuUaBk7", "namespace": "Te3uc91g3bQmZxGx", "pod_name": "OwNEiOvsyIiHlX32"}, {"alloc_id": "QvX6skiWm74Lzjs1", "namespace": "VCoRQr3VNG1Ytpqo", "pod_name": "rbYrSZbi8gdag3z4"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'yBxTOzICI6PNgeFv' \
    --endDate '4yQmwKjouYKwg0w6' \
    --gameMode 'cgrhWHpPCF25CseU' \
    --limit '75' \
    --namespace 'ixasFQ3RhYTn5Wm9' \
    --next '1eJ94gFUucrkjJgw' \
    --partyId 'VC6rcmaZFz0KKPil' \
    --podName 'VNuSJSIAGUGAYSFu' \
    --previous 'kyBC4k2bzj7BCfZm' \
    --provider '4MI86IVUHiJNyfee' \
    --region 'wPv5hSqBf7qIgwMq' \
    --sessionId 'QJwyDgD6uVezTgz0' \
    --startDate '0v8LXdaNlDtDKMg0' \
    --status 'ByZ6tf25H5fUrQET' \
    --userId 'DH5puf2Wl4Vo27MY' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE