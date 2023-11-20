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
    --podName 'tOvAVCbOieq4jDXD' \
    --logType 'h9Jk1o1ePlu5092o' \
    --offset '77' \
    --origin 'lzqc1fjdekAbjBRj' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '470n1oIFT8H41bsI' \
    --endDate 'Qp3ujWGWSVhsSmG9' \
    --gameMode 'Zxgk5aseYgg1rqCx' \
    --limit '31' \
    --next 'snZeXOmcnmv41AJ5' \
    --partyId 'vbmB2CA5WvMAL6x0' \
    --podName 'z7I7abS95UAR328g' \
    --previous 'mfRXuuq0OzVESB7D' \
    --provider 'OrRvCE5pNyHwmha7' \
    --region '8bPvi3w2o8ReF3lW' \
    --sessionId 'i19IWRufGTULLDdW' \
    --source 'FypAkDaGGJtueobY' \
    --startDate 'CVydkUkOvFXkk7hy' \
    --status 'c9DZVIFUOM97Q5m7' \
    --userId 'CV4j5FeIlnkMc7Eg' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'PnEvSgXCAWOwqQto' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'x1QUiT34xgrQu9jm' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "AChSvWmZ6bhSHlAQ", "namespace": "Ssc2oV1BsyZOjbyU", "pod_name": "dlXlmgJVKqbx0NfQ"}, {"alloc_id": "6SwrH6IMXoDfzppO", "namespace": "j3PJv2fsSHXyfn4l", "pod_name": "CyUCtAEHvZf9IW8D"}, {"alloc_id": "05PFbHPSng7tqyRQ", "namespace": "9XkATSTa6uwUVHXj", "pod_name": "vlGHbLwsfqfFiCQE"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'MbOmiLHAzzj2EHWn' \
    --endDate 'LJtFvWg3UCBqK0tB' \
    --gameMode '3HMemCzrtXQX1oRT' \
    --limit '98' \
    --namespace 'Cjbg5W1d3d8LKU5k' \
    --next 'UEADbXgKUsMP4D8e' \
    --partyId 'OJ0aBjAZWzzNVlQV' \
    --podName 'XZxlelMEBcnWZjAK' \
    --previous 'yWZJKh8kRwoCDvY5' \
    --provider '6GuS2GzfW3tEOKOD' \
    --region 'QAeOfCOlvj10zmDH' \
    --sessionId 'fsszA560jAApajhd' \
    --startDate 'rqz2WfdULIUjOn4x' \
    --status '2WecdQYU1Pgcl54A' \
    --userId 'dVBxweIHpD1vLMgq' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE