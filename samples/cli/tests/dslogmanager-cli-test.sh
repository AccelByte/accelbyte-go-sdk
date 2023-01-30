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
    --podName 'olLl70AV' \
    --logType '0J8leFgP' \
    --offset '29' \
    --origin '9RDoovdg' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'zCg3lKSd' \
    --endDate '0VwiM3mf' \
    --gameMode 'dvvUYDpB' \
    --limit '3' \
    --next 'fLwgNHkw' \
    --partyId 'Dy68YtsA' \
    --podName 'Y0DMNihj' \
    --previous 'QbhFG9Sl' \
    --provider 'i7B4iFKG' \
    --region 'JDOXO4lO' \
    --sessionId 'Lq7M16ed' \
    --startDate 'xTCXTQKk' \
    --status 'M1oV6C7s' \
    --userId 'CTb40Pfw' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'QKl5DWzG' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '70yv26Gs' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "nZYo4vuG", "namespace": "y6GnWVcR", "pod_name": "odzXhsQ8"}, {"alloc_id": "vmaOj7Nb", "namespace": "vGkXcika", "pod_name": "OADknh3d"}, {"alloc_id": "gGj5LDoF", "namespace": "zrJPJiwf", "pod_name": "XPMNupd9"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'JCCFIXGY' \
    --endDate 'ZyRCiQWN' \
    --gameMode 'DXko1f5Z' \
    --limit '61' \
    --namespace 'pCBEX53Y' \
    --next 'zeIhJJVM' \
    --partyId 'Hg3w5USt' \
    --podName 'YMMzdNtR' \
    --previous '3wmAgfRV' \
    --provider 'c6rxbKMl' \
    --region 'BnaPYG30' \
    --sessionId 'r19wNtLZ' \
    --startDate 'HGsCPo3e' \
    --status 'hxaGKF5r' \
    --userId 'JiyrehVl' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE