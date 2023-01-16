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
    --podName 'cuPT1y4p' \
    --logType 'm6jmenYX' \
    --offset '60' \
    --origin 'w28E6Vq2' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'BVQGhB9Y' \
    --endDate 'n3zEPGoZ' \
    --gameMode 'nfcvP0yz' \
    --limit '49' \
    --next 'RIvwmD9P' \
    --partyId 'T1zFPhGH' \
    --podName 'tGleWzwG' \
    --previous 'D0rNM2Ce' \
    --provider 'vysXPdmw' \
    --region 'r39NA6LB' \
    --sessionId '9RinkPZp' \
    --startDate 'dEuWtI5G' \
    --status '33X2tBE4' \
    --userId 'B33HWFtG' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'fr8m37mn' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'JODTYRpL' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "ff3RerjL", "namespace": "lxua2XbI", "pod_name": "tr5A50sE"}, {"alloc_id": "YyrjHKuV", "namespace": "pt7Z4IHc", "pod_name": "3wP4sCEE"}, {"alloc_id": "Ha7wEI6P", "namespace": "u5WwxTI3", "pod_name": "1qwsQ6GS"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '0C6w8phn' \
    --endDate 'dQSreNSH' \
    --gameMode 'EMy82viI' \
    --limit '28' \
    --namespace 'isE4lWwC' \
    --next 'G5ow56LG' \
    --partyId 'cYPADzNi' \
    --podName '9HMuU6QK' \
    --previous 'YwzthxfZ' \
    --provider 'sA3rr29S' \
    --region 'c2uTu1bQ' \
    --sessionId 'tArLychx' \
    --startDate 'hQeaR45b' \
    --status 'IYXlocbc' \
    --userId 'KCE7qk66' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE