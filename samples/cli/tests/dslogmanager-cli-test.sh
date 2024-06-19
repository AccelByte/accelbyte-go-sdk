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
    --podName 'VpjEZPGDqh3Pks15' \
    --logType 'z58opyDT0Yt3r6t5' \
    --offset '85' \
    --origin 'rpui3CZVBs8q280q' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '8H79JAFMZpO7rxUb' \
    --endDate 'un3DtSDRSzquTeae' \
    --gameMode 'aokaSvR6mQyQugBM' \
    --limit '26' \
    --next '4FjPanODTFzIHPQi' \
    --partyId 'c8AayUNz6qGyDSmv' \
    --podName 'YGH4e8A3hK2ULkai' \
    --previous '1WwPqVCN093A08kW' \
    --provider 'eF7VXnTHS9MceBnv' \
    --region '6WqtRfCNPR3TMokN' \
    --sessionId 'zJPXUYEegq3YAhZj' \
    --source 'woSaMX1pJFZbNl8z' \
    --startDate 'ubMYD2nUcgsnqFVq' \
    --status '5G930rL5maHkcKC0' \
    --userId 'GBhbvHAGhFLOftG8' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'ibHP71Exi0NiFA24' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Uw407y62ySv2q82E' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "PAc4CmSFpNA5Dhc0", "namespace": "eqjvWLqqs5kQk69G", "pod_name": "cgVNLaSnim2JNMvP"}, {"alloc_id": "SiSulbF9AVovaUtO", "namespace": "kwHzIjibP1MVOZXm", "pod_name": "vXDgelCxrb9RuhrF"}, {"alloc_id": "fJK3kboFSFljCrTM", "namespace": "8wsGx4bv9GBYmhUE", "pod_name": "TtveyxcNBeKTDvDp"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'xiZ5nHKuiVX1WaOf' \
    --endDate 'D4S922OKm7BoFttW' \
    --gameMode 'vpH5GEHQSF5hKodm' \
    --limit '18' \
    --namespace 'fi6QhpwoUQltnXcT' \
    --next 'Pw4xlQVYgIq4Hf7y' \
    --partyId 'SIwXzCkH66Q20EkI' \
    --podName 'lDXWVlBHyBLtAYXV' \
    --previous 'aRoXCjKIHmOEdyM8' \
    --provider 'xnzWkAqvObmyqJoU' \
    --region 'CPeC0v88ruuCot9c' \
    --sessionId 'uGzaHRJI3Id9IZw1' \
    --startDate 'IVtcZ78wW2MKAWmv' \
    --status 'IAzo76dmQKvqd3RG' \
    --userId 'Al0x75NENGJnGuPF' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE