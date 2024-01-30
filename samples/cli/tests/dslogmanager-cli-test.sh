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
    --podName 'L50uapQZgFq2MpRy' \
    --logType 'Fw2G5FM5JECFEtYw' \
    --offset '0' \
    --origin 'NK7ULiKBHW7mkPDQ' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'LM73qFPyOrqP9h53' \
    --endDate 'N7JobZfLQNv5Eu9w' \
    --gameMode 'sEBR9woTEASBpNsp' \
    --limit '46' \
    --next 'F95rpOK657GlGppq' \
    --partyId 'ahZSE8fASTVZmu6C' \
    --podName 'APoCQUbW8qD9wXUM' \
    --previous 'ClU5aJUEgWNKN7fB' \
    --provider 'HLWUAOyYpG3jke2Q' \
    --region 'LN1ucpqhXnSBtFHH' \
    --sessionId 'N9xk7dYa7BhUSevu' \
    --source 'SVigP2sIgdfT5rw0' \
    --startDate 'yMtqXkRATVLxEieE' \
    --status 'F2AOlzndZZeDvO9Y' \
    --userId 'dPkGflts7SseWazj' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Ba0GYVkTkouiV6hA' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '3lgbdHuTz2xlspIQ' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "0aqOGaz0W4AovSBc", "namespace": "5sDEYavOcfFfMDtE", "pod_name": "msUck8iLB7slAZdR"}, {"alloc_id": "WTkf78wBHNZCK5tb", "namespace": "HgNqFtiUgMcSC2lw", "pod_name": "sS5RcdrYjWyTbxZH"}, {"alloc_id": "AwoJ3j0qb6ozd1Dj", "namespace": "GFVn7T4WAgcc17pK", "pod_name": "d5nuFW1acfsOk8lp"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'JBTs3IjNUy5r3mdU' \
    --endDate 'BsvOlx5DvSlVXN7P' \
    --gameMode 'ZTDVjtu9hrnOF4LI' \
    --limit '18' \
    --namespace '1z2kho2WQf5KyCeZ' \
    --next 'gOpgflbptaRfLpaV' \
    --partyId '4Cg6pCtvD0gdHHT8' \
    --podName 'FYJIfVOI8kmtdOQa' \
    --previous 'nqKwQeXHSseHzm76' \
    --provider 'FVM2NhY8dFU47lwt' \
    --region 'kQY4gDHPUivmBBBe' \
    --sessionId 'vvItlGbI6dnLXCD2' \
    --startDate 'u35pauo49tT1OFOZ' \
    --status 'ECrgw6SFMUiGRywl' \
    --userId 'LUDMlDdAP2HcytGy' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE