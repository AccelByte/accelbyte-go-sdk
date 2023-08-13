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
    --podName 'FUzZWrSr2TOdBJp4' \
    --logType 'MqdU2GybZytmlvKb' \
    --offset '97' \
    --origin 'TgXRjtdAKEnez2rD' \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace $AB_NAMESPACE \
    --deployment 'V5rQiBEGCWFU6DNp' \
    --endDate 'YiyJPyeQJK60x2FO' \
    --gameMode 'nLCXLew4zOojV8ai' \
    --limit '77' \
    --next 'J5UQk9OoyfhvFZJc' \
    --partyId 'QPdvU9qgqMch14Ih' \
    --podName 'lzwA8EcHY3Ho7rNl' \
    --previous 'g9lmGTmGW2RwQM67' \
    --provider 'O7vSc2BS1nv1zM8Z' \
    --region '5eqmQOJyFHB1nW1t' \
    --sessionId '69XoOmgXqnx7DZ4q' \
    --startDate 'jSpQYrkghudYfYHS' \
    --status 'TxnhsiImpOG5AaJB' \
    --userId 'P7vnGzV6EoxR1uSs' \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'EwYaRjH3LIJCOofc' \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace $AB_NAMESPACE \
    --podName 'hfdsZlVx2xIOTMv7' \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{"alloc_id": "Bw0GqqXG8MTcLk0D", "namespace": "ceyCXJ0eklxdcSwp", "pod_name": "fWyxkc1UMYjJqu4D"}, {"alloc_id": "sl1esw2ZgoeGtCf4", "namespace": "z2KD2cy3bhaKD943", "pod_name": "PcKLl649V4gyVZMX"}, {"alloc_id": "X488jkEIRsUn1LUQ", "namespace": "igPRMAnb7TOzq1Zi", "pod_name": "1cnLIAHUhJ3S92Wc"}]}' \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'Gdx8d5ggaEtsDyRl' \
    --endDate 'K50khRdOd5zVzzyt' \
    --gameMode 'Ck3Y0tQRchf8kS5x' \
    --limit '14' \
    --namespace '9wjftebKurpnV4nL' \
    --next 'ewR4Q7lHMFJpoJje' \
    --partyId 'RJvSvnOY4eaV7iYD' \
    --podName 'nkaZpIrRFirWZ56E' \
    --previous 'mhodeiXgQnHDgtIZ' \
    --provider 'rv9tmXkNHENNuQUJ' \
    --region 'UWJ7gWtD69Q7WRXd' \
    --sessionId 'VVI0clXfxuwVqWOI' \
    --startDate 'F00VWbKRzOPioOQp' \
    --status '5HXLOGTgaoFB3ehz' \
    --userId 'AXJK5QXXhPqzsUxA' \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
samples/cli/sample-apps Dslogmanager publicGetMessages \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


rm -f "tmp.dat"

exit $EXIT_CODE