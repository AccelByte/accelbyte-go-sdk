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
    --podName 'xYo9DhBQibzKWqrA' \
    --logType 'njzV7abBfHdFJxC3' \
    --offset '80' \
    --origin 'iTaa4kn9YEFk4nxI' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'mg5UbynAUHBpMmmh' \
    --endDate 't1yhoP7ohi0G9aIq' \
    --gameMode 'WWkiNMnW0eogW2gj' \
    --limit '35' \
    --next '1E2ipS6VbbHz3k7Z' \
    --partyId 'hxzdik74K0RaHFfk' \
    --podName 'eDLDMjob0eX4fmDy' \
    --previous 'rU1e0Ej2RFF1VoGV' \
    --provider 'lx9NAOdLD9s0CUtB' \
    --region 'Xn1n35HkFFhUMeBL' \
    --sessionId 'Ox91gquTMb7Glhz9' \
    --source 'dNUwLe31uQ8GVDRc' \
    --startDate 'SutN9rt6sJULs7Kn' \
    --status 'Pu2JTzietdERicNE' \
    --userId 'W4knfPIZyqz3321F' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'hjdgMkNrI5Q9KJFP' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'SsSvNrtvOyVjD2lg' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "mPWWR0N93TXdSxGX", "namespace": "T62uPaHBY0w9U8TK", "pod_name": "SpkVOuzlhvBKjCfb"}, {"alloc_id": "CiO7PHpLS56eJ1Bu", "namespace": "q6VZSI2fzkJ3h3PY", "pod_name": "5tA75bbnUsjNHTc7"}, {"alloc_id": "FgCq7hn5PItDTqDM", "namespace": "ZT44UZS1kgdz9zB9", "pod_name": "LS9wvhexzdFHqprc"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ZC9U0JsME1AD88Sy' \
    --endDate 'Dp5Q14DbHPgjKGzp' \
    --gameMode '8zU0efnm6QAi71gK' \
    --limit '58' \
    --namespace '4Q16rTr8l3gEapvJ' \
    --next 'ieNoNqJspg4b0Mlk' \
    --partyId '2aC7aP9fsGEJFJkW' \
    --podName 'H7aXAewGkqI9nOKe' \
    --previous '9RQMghWIMfet1DIR' \
    --provider 'OPaHzQWzKcIoPGl3' \
    --region 'LppmReVdkU7H1ckN' \
    --sessionId 'SzBq357hGGBCBzRD' \
    --startDate '2EYL16dK4306nE8L' \
    --status 'BvCiBV7rDnMjrpwr' \
    --userId 'I9suuhFnvX4AZpSg' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE