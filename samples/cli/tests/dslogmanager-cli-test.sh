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
    --podName 'TKpXUsLATz9CRuMO' \
    --logType '0FFDsHEu6o2oUQuj' \
    --offset '14' \
    --origin 'Kv6SmNH95UNa3C4J' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'LAHhouc80KghoD9v' \
    --endDate 'RivLe6izN67sJbXg' \
    --gameMode 'vLN9SvsYwJY7v1tV' \
    --limit '69' \
    --next 'wFP3587OJSUpynop' \
    --partyId 'OnPwrXYOkwwpLgPg' \
    --podName 'jgy7JcFbWtkQs2RI' \
    --previous 'oZWSQrUhvt1ubSiL' \
    --provider 'hOzPcbDtf5W0czBd' \
    --region 'wO1fF2emNpglu3Mu' \
    --sessionId 'mgbyvf9hzJCzjG91' \
    --source 'z69KRMGe7hJR3Rb1' \
    --startDate 'mxdv6eNugZyWemXK' \
    --status 'zqF1PG2esHbRHb9k' \
    --userId '3P4qpP6c8vGfk4f2' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Hj3cLwrZ0i8Ea4VE' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'dJrhHhgEgFHXjdjL' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "i8EsaMMnHzutSUEK", "namespace": "hQGlAWNILTsvW0vl", "pod_name": "NFKPzekuVGJrKyVb"}, {"alloc_id": "Fi449zKobP1TffpF", "namespace": "OHyT2X37TA3QKJRS", "pod_name": "ByLwb5uf4wE8Oana"}, {"alloc_id": "QJXUPM79s0ynuNWn", "namespace": "yyV1820EaWpuUIFq", "pod_name": "bRO233lofo4ae6ZQ"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '9hHsnXCDErFW4CPp' \
    --endDate 'sOfQbKXS9gIl4xfu' \
    --gameMode 'vwUwD31cvCiAoJjn' \
    --limit '56' \
    --namespace 'uVrHDwS1U3cnp62v' \
    --next 'yIzLVZ7nn6VtYyD8' \
    --partyId 'LqJ5zLD4AOznj0xM' \
    --podName 'fkCERFhzsgAsDVyc' \
    --previous 'dS0pN5GgMmXyQYhn' \
    --provider 'xgaVG38L4DAwztPv' \
    --region '5ME110VpuphVvMEF' \
    --sessionId 'A3AQX0cKHNMvUnwd' \
    --startDate 'niVKhnhsSomIX6f8' \
    --status 'YluXlqrAQwioiDpO' \
    --userId 'D38DaF4e4THfUYTP' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE