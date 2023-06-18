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
    --podName 'bNI7AgRFRz4pL9Xa' \
    --logType 'yzQGOHK52BblmDu6' \
    --offset '50' \
    --origin 'nAQQ728RQtDLHjZJ' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'kBti9MHO8bhfDA7x' \
    --endDate 'p3gicZeMWXkXRmJB' \
    --gameMode '29slkKtddcac0guE' \
    --limit '41' \
    --next '9SpIcG3TbN944iZn' \
    --partyId 'CbNmsIgaYeF5h5TP' \
    --podName 'YEF8lphrzlfQEbV4' \
    --previous '6ZlhSEB26KlONIwT' \
    --provider 'oS1ZFuk2r7ZmFdRm' \
    --region '9nhXv7My1Z2TpYvy' \
    --sessionId 'Vl4LT2xjX2YVW9rm' \
    --startDate 's8bduklg0LCq4aal' \
    --status 'BH3OgTLP30snwtun' \
    --userId 'Iu73CqqzygepVpGY' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Wcmk2r1Oh2Hr9jDG' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'WTHTG3cernupA1Q3' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "pCuq9Zy58EWVq0B7", "namespace": "xDJ1qsk0nkwXgY3X", "pod_name": "BVWzNBCh8tVOaUSA"}, {"alloc_id": "4ft6GOGLKkouRCqm", "namespace": "3KM6gl8Qkbw9b11Z", "pod_name": "qoZf08vM6jw3DQn8"}, {"alloc_id": "ZxYst8iYet6KJmhm", "namespace": "no8RSZzG8zi3WsBW", "pod_name": "sLzhZeNuHcGOuGWh"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'k6fjU59hCG98VthF' \
    --endDate 'wAP8yazJ8bERHTVZ' \
    --gameMode 'Szs9rYnCHQCAzWZu' \
    --limit '76' \
    --namespace 'pJBqIxwYltPnnYqH' \
    --next 'g933wPtoqvY5mJ1E' \
    --partyId '2q5UK9jmAeAMskHF' \
    --podName '41D2OJ5qrPNHLwY1' \
    --previous 'cbhsu2n80IOBc4Vc' \
    --provider 'DXTXpJidsap5gYuh' \
    --region 'uSarvMH8YIQLbCpm' \
    --sessionId 'pT9bRzD3K1HyukCA' \
    --startDate 'VhzBjIq34uz2GlHI' \
    --status 'ZwkxZkIxU7KpmwIt' \
    --userId 'WVI9mMhVENQOXz5t' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE