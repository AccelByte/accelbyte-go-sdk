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
    --deployment 'gQfkId32' \
    --endDate '4s9IFV6W' \
    --gameMode 'TMofqftz' \
    --limit '46' \
    --next 'eTEwtNAS' \
    --partyId '4X9DsaRu' \
    --podName '8qT8YKgb' \
    --previous 'PrpAwNnK' \
    --provider 'JA7ZdYmt' \
    --region 'Yzl27D7o' \
    --sessionId 'SaoFVS38' \
    --startDate '2lPV1tsE' \
    --status 'bL1CJzHs' \
    --userId '7mZHEpkN' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'P8eIEojM' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '3kHwHRr3' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "i5MMC4Xb", "namespace": "mthsh83s", "pod_name": "LiuZhMGM"}, {"alloc_id": "C799z3W9", "namespace": "IrmTLisK", "pod_name": "KPkz5vCo"}, {"alloc_id": "hEOzj6PG", "namespace": "LIpIBupE", "pod_name": "97J91Czi"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '78ediLTI' \
    --endDate '776CkiYv' \
    --gameMode 'MVen5zFp' \
    --limit '12' \
    --namespace 'Vaw1NwWz' \
    --next 'YGfy3sxk' \
    --partyId 'QHUqkHt3' \
    --podName 'zqy8apKD' \
    --previous '3pPeEDmR' \
    --provider 'mwbFiout' \
    --region '44sKcnFj' \
    --sessionId '70H7IsTS' \
    --startDate '3UPXxFJ7' \
    --status 'dSCJNViq' \
    --userId 'LZryJuHw' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE