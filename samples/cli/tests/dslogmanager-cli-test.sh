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
    --deployment 'kLY33BBH' \
    --endDate 'oQTNYWAo' \
    --gameMode 'RtdX9ezI' \
    --limit '32' \
    --next 'pwAgBYiz' \
    --partyId 'DbMO1g8i' \
    --podName '2JLvs9H2' \
    --previous 'mQeirIiZ' \
    --provider 'CiTSw0UQ' \
    --region 'a7mkSTS8' \
    --sessionId 'fwOKw5tU' \
    --startDate 'mbZrr0I6' \
    --status 'PmrNnCi7' \
    --userId 'uYgmVkba' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'jJI7VkR7' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Mgh789Yo' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "8elNMRWh", "namespace": "N56EPtMp", "pod_name": "iBnEa4pK"}, {"alloc_id": "auGhITGN", "namespace": "1so1aQIS", "pod_name": "VzmPIlM0"}, {"alloc_id": "GeyfZzJa", "namespace": "ilwAMtLs", "pod_name": "IrBN1wfK"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '8yM1Xw70' \
    --endDate 'Tm6Sh5We' \
    --gameMode 'on9fRR6n' \
    --limit '19' \
    --namespace 'vOH0a2xy' \
    --next 'P9q3pjq6' \
    --partyId 'zCJIsOTh' \
    --podName 'KYjKCe4X' \
    --previous 'ViLULbU6' \
    --provider 'L0WTGKwY' \
    --region 'XvVHQelE' \
    --sessionId 'moN5CvUr' \
    --startDate 'nXEcxJuA' \
    --status 'DzmdvO1i' \
    --userId 'eVzrJwbx' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE