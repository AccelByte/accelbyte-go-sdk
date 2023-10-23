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
    --podName 'RmxINZ7ltgenCYkB' \
    --logType 'oXK9HAtb32I0JPrB' \
    --offset '9' \
    --origin 'ae4w41tDtuEAvfms' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '2ZY3rdiD4Pf3Hzvw' \
    --endDate 'yhchvgHaqpIA0Jzq' \
    --gameMode 'cRsGpYH2Y3inHkn5' \
    --limit '0' \
    --next '8oE2XDUs2W2espjb' \
    --partyId 'BbZPv69SApevmlhC' \
    --podName 'zbUcJ3yAiHdUpXaY' \
    --previous '52gP0vyrRqgvtTIl' \
    --provider 'BKywUAOd7rToCXpL' \
    --region 'P6lcxdgU9WCcAQjo' \
    --sessionId 'r64RFhaU1WaSm733' \
    --source 'mWSzXUZhGt6W1vQ1' \
    --startDate 'mv9s8RhdiIVdLnxL' \
    --status 'Zx6tA8IRgWN6hpA0' \
    --userId '5F0lsClsPCL6ofCq' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'guwX7v9RCmlpoaWC' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'bpop5KGnV0ck4GjV' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "8BPlVn3vk0TMTaXW", "namespace": "rZYA5EmqymOeIb2J", "pod_name": "Tb64bOxK6VI0VhyD"}, {"alloc_id": "QZanGD15aBbUJVlP", "namespace": "Shvy8wtwaJLPJPtE", "pod_name": "0azDOH4pMldKNoz8"}, {"alloc_id": "ZQIDNo74wUvamvyI", "namespace": "LObCHuBo1SzE60W5", "pod_name": "cvGxrEYI2cGKSo7s"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'fnVYcithIvk6ZHUK' \
    --endDate 'opxiUkTlzDgPyO4d' \
    --gameMode 'f302f2lyOq7Mr2K5' \
    --limit '31' \
    --namespace 'KdGKuCmUjyNom7xK' \
    --next '0CQjoVGbQt9FppNS' \
    --partyId 'cbtMzwc2pTEJTUo3' \
    --podName 'lVrTkXDJgRhEsEa4' \
    --previous 'dETE7ZECjdpx8JUV' \
    --provider 'YzOatmCqHpXS4BRZ' \
    --region 'S04SvWfT7MpERUqW' \
    --sessionId 'EHczmW2GINbb5HOk' \
    --startDate 'gbxRQRnO0rLLS2vR' \
    --status 'rnrVe4bcwsi4NGPC' \
    --userId 'w99xobkuiKmkDRxZ' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE