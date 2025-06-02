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
    --podName 'dPTanfDvFxBIrUDk' \
    --logType '13fgGFvPAWByGEWF' \
    --offset '91' \
    --origin 'hDU8Y7T2fT42sri5' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'Xj2U68zEEKpX0qRn' \
    --endDate 'eZvVYheG7VrebkAB' \
    --gameMode 'I71eBVct9IoEXfGI' \
    --limit '99' \
    --next 'uQvRHR60ZWsZPIU2' \
    --partyId 'YGxZX8kf3tGWieev' \
    --podName 'wm1AN4PFWZR9CUEU' \
    --previous 'aGivwliXlOxomrdm' \
    --provider 'Vqt8icZD9Lne7BDq' \
    --region 'O65sgZXlMQCKF8PC' \
    --sessionId 'WMuVY4qKsEhRMUpy' \
    --source 'QwDUVnFiBBYF42lz' \
    --startDate 'I4wvTpbrVMQNqeVa' \
    --status 'JfX90U4AUqMwXsox' \
    --userId '64Nlli1NY1V2UWql' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'Gs16ZqMCLLY77fYi' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'zpXnj84n0XAuZNZU' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "kzgMSLkuBrGKw21v", "namespace": "xDuRiaM06CwfdZkn", "pod_name": "C3NJyYpliqCn6N8P"}, {"alloc_id": "SIVaG7t13WWCoWjX", "namespace": "HLWnWYUDIvuVsTyG", "pod_name": "jYhGxDLhvmqZOJbc"}, {"alloc_id": "ljmA1gdCnISXFaSk", "namespace": "cPhN8PgkIA6fNAqP", "pod_name": "zy9ESZmpK1a7bt3p"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListMetadataServers
samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["szWKj92o5P1hWND0", "c7FieNIcSqECXP1l", "BQ2JltATmWfPCQ7V"]}' \
    > test.out 2>&1
eval_tap $? 7 'ListMetadataServers' test.out

#- 8 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment '8QeNz7ZqTcfojhdl' \
    --endDate '9AVuaiILh0wuaX1r' \
    --gameMode '02GZ3blfBf6cWS4c' \
    --limit '22' \
    --namespace 'nSLcLWQXPgfY86Lg' \
    --next 'ZsSYv8XvmR01JUBs' \
    --partyId '5PRjz6vElcgT6jCU' \
    --podName 'EhnwpCUfbl3raIKl' \
    --previous 'kOHh8xRuO8oMja7u' \
    --provider 'L8tQ2cdaJYdpuM4q' \
    --region 'WvS0FAFMFnNxrIju' \
    --sessionId 'mOL1ZfCl4jeQbnGZ' \
    --startDate 'hMErEbwKOXIKLkAR' \
    --status 'HX9jPpgFVSU0exmG' \
    --userId 'nVMfsD1UyfGPL2By' \
    > test.out 2>&1
eval_tap $? 8 'ListAllTerminatedServers' test.out

#- 9 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 9 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE