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
echo "1..35"

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

#- 2 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --body '{"set_by": "4Gqc7E4h", "updatedAt": "Od6IKZQ7", "value": {"mvGJwQ5w": {}, "pGAf9V8u": {}, "NqZIrpeX": {}}}' \
    --key 'Nk4kjTdf' \
    --namespace 'fnEp44mf' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace 'wwzxVsJU' \
    --query 'nQCBb3wH' \
    --limit '25' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '2mKA0Vmu' \
    --namespace 'vf3gp2Dg' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --body '{}' \
    --key 'LET9wd6T' \
    --namespace 'IYzixEdK' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --body '{}' \
    --key '3Ml5aTFU' \
    --namespace 'y3gcC15P' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'CovIn2cZ' \
    --namespace 'vbP3YDcN' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 ListPlayerRecordHandlerV1
eval_tap 0 8 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 9 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --body '{"set_by": "yvg2XACH", "updatedAt": "Cz4lThw9", "value": {"fbSou9ak": {}, "062dqVqZ": {}, "5caOUxqb": {}}}' \
    --key 'KcC2guLB' \
    --namespace 'TqlKeZKH' \
    --userId 'RcBMqvTn' \
    > test.out 2>&1
eval_tap $? 9 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 10 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"set_by": "FEAtwOko", "updatedAt": "YhO60Nlg", "value": {"MGsfWLuH": {}, "U4P8Q5Iz": {}, "srddmfWl": {}}}' \
    --key 'g1C98N1W' \
    --namespace 'YtPUyit4' \
    --userId 'CzXDv2Kr' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 11 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace 'corAfhdy' \
    --userId 'Y2wMQDvM' \
    --limit '98' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 11 'AdminRetrievePlayerRecords' test.out

#- 12 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'TFrOOLlG' \
    --namespace 'zb7vemF7' \
    --userId 'PVjkGWYq' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPlayerRecordHandlerV1' test.out

#- 13 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'MKzAqeAL' \
    --namespace '3QyzD93Z' \
    --userId 'rUWl4OrA' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutPlayerRecordHandlerV1' test.out

#- 14 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'bcAQJJe2' \
    --namespace 'iUJBpd7a' \
    --userId 'QZ9l1ELm' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostPlayerRecordHandlerV1' test.out

#- 15 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '1WgX5i1F' \
    --namespace 'DgefNqOp' \
    --userId 'bOLzKawi' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeletePlayerRecordHandlerV1' test.out

#- 16 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'MQBD8O6h' \
    --namespace '1DIBjKAs' \
    --userId 'bIL14gpN' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 17 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'bh9ArrQK' \
    --namespace 'UGwTEgGP' \
    --userId 'SbHLiIKM' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'UmPEu7oc' \
    --namespace 'zKKgEGqo' \
    --userId 'NRl0DV7C' \
    > test.out 2>&1
eval_tap $? 18 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 19 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'BRaOedy2' \
    --namespace 'TzcVOSRX' \
    --userId 'uCHPGi0V' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 20 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "OHMhTAhT", "value": {"QOJvA0Vj": {}, "0N39di2u": {}, "nKImehVq": {}}}' \
    --key '35w3q8WK' \
    --namespace 'l94urvrW' \
    > test.out 2>&1
eval_tap $? 20 'PutGameRecordConcurrentHandlerV1' test.out

#- 21 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'kG3ghPiS' \
    --namespace 'XyNUD4kh' \
    > test.out 2>&1
eval_tap $? 21 'GetGameRecordHandlerV1' test.out

#- 22 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --body '{}' \
    --key 'WQZyw4f3' \
    --namespace 'Plukg8vD' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordHandlerV1' test.out

#- 23 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --body '{}' \
    --key 'DY0SBs8C' \
    --namespace 'hrHPx7Dg' \
    > test.out 2>&1
eval_tap $? 23 'PostGameRecordHandlerV1' test.out

#- 24 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'gC8f35vd' \
    --namespace 'XawoORfL' \
    > test.out 2>&1
eval_tap $? 24 'DeleteGameRecordHandlerV1' test.out

#- 25 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --body '{"userIds": ["UyBep90d", "msCS6zzF", "8RIvuJ04"]}' \
    --key 'SsKNGb4e' \
    --namespace 'l83y4rGr' \
    > test.out 2>&1
eval_tap $? 25 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 26 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'tTWycKcR' \
    --namespace 'vxePxJQM' \
    > test.out 2>&1
eval_tap $? 26 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 27 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "hbRFYMEA", "value": {"lc6lNY2S": {}, "TKsrhVao": {}, "Rn7Bv0Lx": {}}}' \
    --key 'Ik71Vd56' \
    --namespace '0NvDujzr' \
    --userId 'k5WF5f2Q' \
    > test.out 2>&1
eval_tap $? 27 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 28 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "AgQc4TjR", "value": {"4u4IgJul": {}, "O57FL1NR": {}, "zZfWAIPL": {}}}' \
    --key 'lJpKbeFV' \
    --namespace 'VFwnPVwI' \
    --userId 'o8twSaty' \
    > test.out 2>&1
eval_tap $? 28 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 29 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Cfm7tmT2' \
    --namespace 'V0GWDyAe' \
    --userId 'iS5zrCNs' \
    > test.out 2>&1
eval_tap $? 29 'GetPlayerRecordHandlerV1' test.out

#- 30 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --body '{}' \
    --key '2qrRyETY' \
    --namespace 'GLKplKGg' \
    --userId '9JSuvedm' \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerRecordHandlerV1' test.out

#- 31 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'l1u6lS8Z' \
    --namespace 'AsO6wCMg' \
    --userId 'RfQkCubK' \
    > test.out 2>&1
eval_tap $? 31 'PostPlayerRecordHandlerV1' test.out

#- 32 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Evb3MqMv' \
    --namespace 'twd9EyK4' \
    --userId 'kDVz6Dg8' \
    > test.out 2>&1
eval_tap $? 32 'DeletePlayerRecordHandlerV1' test.out

#- 33 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'tlNTyA6W' \
    --namespace 's1r8pCFZ' \
    --userId 'h7NoG6Hr' \
    > test.out 2>&1
eval_tap $? 33 'GetPlayerPublicRecordHandlerV1' test.out

#- 34 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'ANScTJfA' \
    --namespace 'tNvvmObc' \
    --userId 'uzWBdkRN' \
    > test.out 2>&1
eval_tap $? 34 'PutPlayerPublicRecordHandlerV1' test.out

#- 35 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'cF8ICzMt' \
    --namespace 'lOp7dS3I' \
    --userId 'QBHKE2uR' \
    > test.out 2>&1
eval_tap $? 35 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE