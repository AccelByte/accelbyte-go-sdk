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
    --podName 'M4TVVsDIG0IpLQLe' \
    --logType 'O5Th1CgEJz7qjk9I' \
    --offset '11' \
    --origin 'qhZxrzlR7pWZhckK' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '4fvQu5Lmc9YjntvV' \
    --endDate 'UiDoIx81vv8Kxbs2' \
    --gameMode 'nhZOpxednfdbtkJq' \
    --limit '13' \
    --next 'QykCP3Jgw8nZKmb4' \
    --partyId '3pATOzOgYuNcHjyw' \
    --podName 'jFiqg8ihFzl75w1p' \
    --previous 'CgsvMPwhNeQ5MvSg' \
    --provider 'SBoQeHIM4QWn7iyK' \
    --region '3g00cFx7pY5yKWo7' \
    --sessionId 'ZdEyFztu6h9l6Ucc' \
    --source 'IhEYu1DxoDII2wxs' \
    --startDate 'kJDM91mLpTIfaKSP' \
    --status 'YcsK6CoLvQpjHR3X' \
    --userId 'k06Eskuc0YqXSJL4' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'jgVbtQFeSzaEkl0Q' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'MyOyFufT3qBYhBRJ' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "NGgga509yHwePIuL", "namespace": "TsWVubZEo3NCltNL", "pod_name": "fql4gJ4ZHzfOGfWr"}, {"alloc_id": "J5t91ghJA6GBpmYA", "namespace": "sRgRcJY6OLSjvhbc", "pod_name": "HZZfAIzd5s25VA6Y"}, {"alloc_id": "sPxdOPWA5eGCFP4n", "namespace": "25MvPBtoMCY1NKEO", "pod_name": "PsuXYcEmr9tqXJcL"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'ogr3Rm72OWyyNonP' \
    --endDate '6ZlQfqpSsbKSnl1L' \
    --gameMode 'd7840kz9yxdpQ2ud' \
    --limit '31' \
    --namespace 'Tb8n4Mv73ejngXre' \
    --next 'RV080XGB7SsvQYhK' \
    --partyId 'BN1lUkIKChwO0e2o' \
    --podName 'lmwS2xAL4LB6BUl1' \
    --previous 'wnswVn4zXj4VMNGG' \
    --provider 'Gn0e0wLmUAZyF5Jz' \
    --region '40dSHBxzmRKsi30Y' \
    --sessionId 'Fdj2ZzhX4KoibHkq' \
    --startDate '0sKuphXyNTxa4X4I' \
    --status 'IP8MaovT2XlpW0EJ' \
    --userId 'Nh2ZX9IQhgIJ3ApP' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE