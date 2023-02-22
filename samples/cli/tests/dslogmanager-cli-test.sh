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
    --podName 'C0L0hXfI' \
    --logType 'H3KXVQhd' \
    --offset '56' \
    --origin 'TCjRYco0' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'y9uLgHfI' \
    --endDate '6dhvKhXk' \
    --gameMode 'MD4FX2Mq' \
    --limit '25' \
    --next 'WR2DtCu7' \
    --partyId 'glTHRW6V' \
    --podName 'rFiCC5XG' \
    --previous '9EdQl2JX' \
    --provider 'AtkWYlkj' \
    --region 'J4m709c8' \
    --sessionId 'NUabPzAN' \
    --startDate 'dEXBc7mr' \
    --status 'E4wW7HBP' \
    --userId '7AqUfeDx' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'sLrvwHOH' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '4YhfVL2D' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Tw2YT3hg", "namespace": "LB6m62cD", "pod_name": "gk7RUsXJ"}, {"alloc_id": "KP4BDJ5w", "namespace": "OcMuJHZz", "pod_name": "SRhZSekm"}, {"alloc_id": "JKhLsiBR", "namespace": "0r9Ev8gi", "pod_name": "x3892Vfs"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '7guWVVKp' \
    --endDate 'pP6LBTAq' \
    --gameMode 'H71pynAW' \
    --limit '69' \
    --namespace 'XbhnJOwf' \
    --next 'DiuskWpc' \
    --partyId 'odqaG1ox' \
    --podName 'jucqITx3' \
    --previous 'Tm2XSAzp' \
    --provider 'IIzcmD9z' \
    --region 'VZk5ZLNS' \
    --sessionId '7EerrNWK' \
    --startDate 'mo5juL8e' \
    --status 'z1tgbqh7' \
    --userId 'k1M5URBY' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE