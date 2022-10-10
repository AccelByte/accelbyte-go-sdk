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
    --deployment 'WeUeJ1ng' \
    --endDate 'GdAGs2PO' \
    --gameMode 'XGZq7rSP' \
    --limit '93' \
    --next '5Mj9dQJc' \
    --partyId 'eplMnzp7' \
    --podName 'RyeP7vxJ' \
    --previous '69bd4Wn6' \
    --provider 'upE2UJoP' \
    --region 'JTm0eAOT' \
    --sessionId 'Pt43KtEp' \
    --startDate 'lqno1utW' \
    --status 'ZW50iPId' \
    --userId 'HRCv31Sg' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '3rpXkarI' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'YEYuJdZO' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Xr9RDP4M", "namespace": "bamM2Jxp", "pod_name": "t7fM6tk5"}, {"alloc_id": "YWiC89Ov", "namespace": "KgL441cd", "pod_name": "p3bsFZWu"}, {"alloc_id": "2Nt7McC4", "namespace": "ZOVY7QRS", "pod_name": "Qo3q7JSX"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'DHMPWvxW' \
    --endDate 'OhVXmVbu' \
    --gameMode 'bIoWR5O4' \
    --limit '3' \
    --namespace 'Vt6e1feK' \
    --next 'lozy4QzI' \
    --partyId 'HwhaRsys' \
    --podName 'nIUUTWaZ' \
    --previous 'ufBRlpEy' \
    --provider 'agMVWIAN' \
    --region 'NXiEThz2' \
    --sessionId 'KFB3p87W' \
    --startDate 'SBhDLblU' \
    --status 'K6Q98Wdx' \
    --userId 'NHM1vpgB' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE