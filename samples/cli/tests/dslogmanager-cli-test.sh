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
    --podName 'Pg7JnCjS7BSePQ7l' \
    --logType 'Ckll7EgLP2H34Tve' \
    --offset '9' \
    --origin '4SKlvUi0QhlXN3o3' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'PNlaZLxT4JI8a3na' \
    --endDate 'YiR5UsXlgXL4xQYv' \
    --gameMode 'Cwawn1Y90yvtplhi' \
    --limit '11' \
    --next 'rg2ETlBeSHHFVjQS' \
    --partyId 'ujFiydim74ThgVqi' \
    --podName 'kHKO54gNop2CkgEH' \
    --previous '1Ex6zut21ZjxTz6z' \
    --provider 'kr8L2fxsqNmD9lBw' \
    --region 'AuDRh2hSdL7Jp7o6' \
    --sessionId 'iteiQMSIXhjZceJd' \
    --startDate 'ZZe8iwetE6I5J0Zt' \
    --status 'J1htWm7RQl982vo6' \
    --userId 'TnkRShWKwM2h8iGq' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName '9hYpYq0HHPJklod8' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'AAUmiP6A9pYNHeM6' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "ohkDD7oNDyPE6TJE", "namespace": "rASyejOd70fc2NdN", "pod_name": "PD6M0bWmIcncM19S"}, {"alloc_id": "q3nd6HbX1JO6d0QH", "namespace": "YUfFrSo0wj8KNpZw", "pod_name": "ndvl0P9zUg4IeJJU"}, {"alloc_id": "J39dELgHBejKJrby", "namespace": "2VpBolkUpBitMwEu", "pod_name": "Ht9wBo6sXz2WeZI9"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'dhQdaES3Imqnkx8T' \
    --endDate 'amhJlxfhdqY78BpC' \
    --gameMode 'Usyf02qT7fZyEwfw' \
    --limit '17' \
    --namespace 'FXpjUXpeJsjPpmY0' \
    --next 'EZYa7T8Nz2riLu8t' \
    --partyId '8yNof2wbrdIsWhE8' \
    --podName '6XaGSJCbJ2fJ46D4' \
    --previous '3mfVlivDcaA2XqFD' \
    --provider 'xIL1sYhL6gLvljYt' \
    --region 'A99ZqbT0Ihx64vqH' \
    --sessionId '4YPl0iQd284n4eFo' \
    --startDate '77uSuYxFy9kkmxRQ' \
    --status 'Rv7YyHzwwBCo2gN8' \
    --userId 'spo606jk8UOY1TEh' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE