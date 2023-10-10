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
    --podName 'fRaZF5abAoAi7VU8' \
    --logType 'HjxSwMusrYGxkiRi' \
    --offset '75' \
    --origin '3NjPDvzHLa978dVe' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment '9SXrPOBUYF6dey53' \
    --endDate 'EXyEz3hycFcxxuJe' \
    --gameMode '52kmB79i2C20o2PR' \
    --limit '34' \
    --next 'QQ6tWh7brOAHxmM6' \
    --partyId '9cPlccSyjauY6yqE' \
    --podName 'MdxW8VQwkNmtvgEe' \
    --previous 'XvttwVzu8p0byBg1' \
    --provider 'jQWFfFttTx5XlYTB' \
    --region 'R9KRUPsUfSGwaOYT' \
    --sessionId 'H0Y1MzsfFcuGqc4R' \
    --source 'PqvzFu60VOcGeEp7' \
    --startDate 'QoGoRNcbpJFpM5nk' \
    --status 'Z1wRIrJRJLrkxniU' \
    --userId 'picBdsErxCJiy6hg' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'XfEeNoGPKiVh2VWc' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'fdmJt0j43tMsc5wG' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "6Yz7EbBBU9lU7zkQ", "namespace": "PCQytCFDETTG2mRQ", "pod_name": "anmZ84SUtec9pEDf"}, {"alloc_id": "YhWRzj65DlharE2H", "namespace": "vHcyQztK0wmB8qpm", "pod_name": "FPNsqPopetOLQcGJ"}, {"alloc_id": "tZrht0BFgyBdmwVC", "namespace": "8ZoreqwhhCGBF49a", "pod_name": "WUPDtW4s98I0Xm85"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'u5UqXhfZaB6s07Zk' \
    --endDate 'aWPoClF6z6UORcr0' \
    --gameMode 'fSsdmmJOA5cNUoXW' \
    --limit '11' \
    --namespace 'zxUgr35mOOivg9N6' \
    --next 'rT2BQ1rOioikeFze' \
    --partyId 'IrpqESxblUQ7f5vS' \
    --podName 'e8jcJii05NUbYd8t' \
    --previous 'RmtHrrNmAWgSAzFA' \
    --provider 'TFrBQSIbZAsJ6dVB' \
    --region 'fuGBhDmzTJuUqSFJ' \
    --sessionId 'pkSRHgVUevuaBvM2' \
    --startDate '68XsELyTqlQLrbC2' \
    --status 'iozh5Kd7MjddJLiT' \
    --userId 'YQmCRmFZfbJG0bAp' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE