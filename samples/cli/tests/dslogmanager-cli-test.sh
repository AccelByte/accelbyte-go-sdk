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

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

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
    --namespace 'FtBxyZcD' \
    --deployment 'XBpGlsQu' \
    --endDate 'Ju8vMf0I' \
    --gameMode 'sJkTrd8I' \
    --limit '59' \
    --next 'cV2zXnTK' \
    --partyId 'jXY1bPqa' \
    --podName 'miBxx9Cs' \
    --previous '18EY84ek' \
    --provider 'ItqRzHU1' \
    --region 'oh570KQB' \
    --sessionId 'Vaewc72k' \
    --startDate 'rSha68n3' \
    --userId 'Ynozp1C2' \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace 'KmIQTuBd' \
    --podName 'NEUsxFb8' \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace 'CJ17M7DJ' \
    --podName 'ZaMSxECb' \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Zbygyoar", "namespace": "ORoeNHSb", "pod_name": "8Rh3kgs9"}]}' \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'qqJbnQso' \
    --endDate 'BgiVpP8C' \
    --gameMode 'm3yvASUo' \
    --limit '47' \
    --namespace 'dxxFqmAG' \
    --next 'TJ8IEdag' \
    --partyId 'Etp4w29K' \
    --podName 'Ou9c19R6' \
    --previous 'XDqWHkkP' \
    --provider '8npLEKMf' \
    --region 'jiX7jpkV' \
    --sessionId 'Zk3IaQYE' \
    --startDate 'mqGodOEG' \
    --userId 't9gPOj0c' \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE