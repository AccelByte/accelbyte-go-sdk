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
echo "1..9"

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
    --podName 'ZLgnUr13eXxUQoOZ' \
    --logType 'pQXy9dA321o38BuL' \
    --offset '81' \
    --origin 'OBQxsJ1PWpMT3h46' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '7bgwKQmAle3LtnMf' \
    --endDate 'prcqhMOMwrtEfHRy' \
    --gameMode 'zzIWaNtknWU7m4ze' \
    --limit '28' \
    --next 'SLGgdCz6H8FWfgJo' \
    --partyId '4eoVzH3HUlllnGYe' \
    --podName 'veHMtYB7WLkyFryP' \
    --previous 'AxgdvqE1bbPferqs' \
    --provider 'MMGZ7BOlZDXBisTS' \
    --region 'nXahyLAIN1oVr0fD' \
    --sessionId 'nhAcQcGbpIYKwrA6' \
    --source 'Up4MeIqxnoUko087' \
    --startDate 'MhnvxdBJDDAxJdQ5' \
    --status 'ce8Alxq3cPT3IAX6' \
    --userId '2UBLI6ulBja8hH1f' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'nUdISQ5loZNk19tz' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'qI7NyOlNIevnicde' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "DmkClEmyQNiHSz1s", "namespace": "9yUjlOSQyPR1QCfB", "pod_name": "riQ6iw342JTiA58S"}, {"alloc_id": "FdwUv3mDBfkA4kJv", "namespace": "tG4z0IMTcgdDTkV7", "pod_name": "fS0sek1TZYY4D1bS"}, {"alloc_id": "oVaN4FPiujIFQb83", "namespace": "ZmmxhTG8DDru8Cau", "pod_name": "0JVwaB0G8KwMvcrh"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["tK5pC9yg661QlVQE", "tBJJTIOm2UwqwT3f", "Nx5VOzkHrVhsplJT"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'PXTxYO3nROZDBVBw' \
    --endDate 'p68KWWPMYJJnT26w' \
    --gameMode 'FjIOsNaOYLVO8SCl' \
    --limit '74' \
    --namespace 'siGntqIgryErIkDo' \
    --next 'zAi6u8XRbAll9ivK' \
    --partyId 'Uzx8Q4Pol6A6Widl' \
    --podName 'deZ0lboi2xnVa5tm' \
    --previous 'l82N50tUTqJfWc13' \
    --provider 'GeeX7AaV1VsNLy6F' \
    --region 'MJpLmMJGQ6eJtYw2' \
    --sessionId 'BwE2ccMephqOEmMy' \
    --startDate 'n0wdOojm8yDCTqRQ' \
    --status 'njgX2XcbkJ3zwoEK' \
    --userId 'rQd2I4KrYrWbErXu' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE