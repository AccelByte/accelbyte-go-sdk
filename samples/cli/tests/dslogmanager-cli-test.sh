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
    --podName '2n2HrrmD8wWau0qF' \
    --logType 'rhgKuadZq1ma8vKo' \
    --offset '64' \
    --origin 'EmiCnKJqyrS72AjS' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'AeNuPljR2HDEpxtt' \
    --endDate 'L9XCqkfpax15CDdb' \
    --gameMode 'uyCF7fmhzza24Gge' \
    --limit '31' \
    --next 'S7yBy0rGJYy3KTrA' \
    --partyId 'kYX8WJOyBgcOc8sZ' \
    --podName 'hPBaYw6LBqvSLkvg' \
    --previous '6laljc5KHptr7Ato' \
    --provider 'QZUqWKO2XNV9aspx' \
    --region 'GcxsyInm9Y6CP4Ev' \
    --sessionId 'RYHai9BQqgPH4POy' \
    --source 'dm77aH5oAG2Yo474' \
    --startDate 'M2MyAP9d2TFkuZmi' \
    --status '9vyK7u5dmCrY6SGx' \
    --userId 'n1ATlKrtR612tyvx' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'TL0ykYBHX5JcCAHn' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'pd1wHaS2VSJEKDvP' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "SktbW6Zih4owZBYG", "namespace": "oePoqQhFgZmUzpfl", "pod_name": "8YgQeIgPmQEMIiVK"}, {"alloc_id": "Hbh3Zyizxz67PIuM", "namespace": "CpTRkFGZ9nYpVzJK", "pod_name": "lmD84irhU0BbW1Bm"}, {"alloc_id": "WowS5vCPKUSRef7s", "namespace": "q8KyduQWTUL3IEiK", "pod_name": "o3f9soFzG7uirTgZ"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["5sZZuBiSJmUkxG0A", "VCx1aKJMzeJ59Iia", "BJxiSGJDWshqiusy"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'rtxwwnZPXYSBhrfW' \
    --endDate '6PxKVLWsz2GVDJ8X' \
    --gameMode '0d2OafVXHi6EjLmG' \
    --limit '47' \
    --namespace 'EwVcqYSleLOjzUDh' \
    --next 'd3fimCO70p5gSen1' \
    --partyId 'wjvtNfP8Oikgj0r0' \
    --podName 'DPxgsTKozGJVgtMK' \
    --previous 'PDEFTowklbL0GYbz' \
    --provider 'QMsw7W9lsk5K8Ylo' \
    --region 'MO5UAVJL3wtHTIHh' \
    --sessionId 'tgplBSn9fapnDEn6' \
    --startDate 'sEgvkMfHofsYcVrb' \
    --status 'p0tUk3NqO6SexmEk' \
    --userId '5jayuRrkBKhBVXOa' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE