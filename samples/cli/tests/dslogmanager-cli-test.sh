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
    --deployment 'LLsRd5i1' \
    --endDate '2MSaQlsl' \
    --gameMode 'lXzQC7Nr' \
    --limit '23' \
    --next 'BQoiNe8K' \
    --partyId 'IddI408t' \
    --podName '0phRItVU' \
    --previous 'Hjc6U2dP' \
    --provider 'gS9TOkyT' \
    --region '8mCJk2tz' \
    --sessionId 'VAz1KqPh' \
    --startDate 'Cgo38HiS' \
    --status '2ugh8ZSv' \
    --userId '8FceIL75' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'leG4sl2H' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'TlbacqAi' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Vzh4UOBd", "namespace": "UQeeGula", "pod_name": "zYRborwH"}, {"alloc_id": "TtWU1PVV", "namespace": "RpfX3nBK", "pod_name": "ZtCqZnGP"}, {"alloc_id": "whEbQDmT", "namespace": "OPNSXLTY", "pod_name": "1UVkWZVT"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '9Na5Ump8' \
    --endDate 'NByYScLJ' \
    --gameMode '5y6h0BRQ' \
    --limit '26' \
    --namespace 'DJLEkiOI' \
    --next '4rmlbrKZ' \
    --partyId 'tOdFpWfl' \
    --podName 'bA2THZmm' \
    --previous 'H9JspiVi' \
    --provider '9DiKJ6Od' \
    --region 'ezvIMFxh' \
    --sessionId 'MqUkO2Ku' \
    --startDate 'BLtm6MRg' \
    --status 'ixd3v77m' \
    --userId 'exc67aKR' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE