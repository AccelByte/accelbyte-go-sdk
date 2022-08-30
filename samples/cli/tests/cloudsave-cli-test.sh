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
    --key 'Fqx3Iy9r' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "U5FgMW0H", "updatedAt": "FTmsPhqj", "value": {"3DjqTO4X": {}, "OhAocGRn": {}, "vCyb2mlY": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '3XWf75sp' \
    --limit '13' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '2HIAMeVA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 's3f9uUmA' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'jIk9uM23' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '1LUWxiY4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 ListPlayerRecordHandlerV1
eval_tap 0 8 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 9 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'nf47dJhw' \
    --namespace $AB_NAMESPACE \
    --userId 'w6PZ9llT' \
    --body '{"set_by": "MXq3q9BV", "updatedAt": "bkOoLxaP", "value": {"6r7kxWXn": {}, "hpEmLdYl": {}, "efNimpXz": {}}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 10 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '3EIxygdP' \
    --namespace $AB_NAMESPACE \
    --userId '4hzkmAWS' \
    --body '{"set_by": "Xnf9LWEa", "updatedAt": "27NaDby4", "value": {"9Fc8wg0C": {}, "UmnyoHf4": {}, "XquGZwcw": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 11 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'mgzqMoBd' \
    --limit '48' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 11 'AdminRetrievePlayerRecords' test.out

#- 12 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'EaMKvl2n' \
    --namespace $AB_NAMESPACE \
    --userId 'oZZVDQEQ' \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPlayerRecordHandlerV1' test.out

#- 13 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'Hfmz7XxF' \
    --namespace $AB_NAMESPACE \
    --userId 'xs5lHi1S' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutPlayerRecordHandlerV1' test.out

#- 14 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '8RK4OgcJ' \
    --namespace $AB_NAMESPACE \
    --userId 'skOC5QpV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostPlayerRecordHandlerV1' test.out

#- 15 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'XMEX00hU' \
    --namespace $AB_NAMESPACE \
    --userId 'ASmG9aW0' \
    > test.out 2>&1
eval_tap $? 15 'AdminDeletePlayerRecordHandlerV1' test.out

#- 16 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'VlGwuypG' \
    --namespace $AB_NAMESPACE \
    --userId 'rrj5hdvp' \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 17 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'V04LnBSP' \
    --namespace $AB_NAMESPACE \
    --userId '9856HRNc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'alwgbrzu' \
    --namespace $AB_NAMESPACE \
    --userId '1wnAhGwI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 19 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'goBRrLXp' \
    --namespace $AB_NAMESPACE \
    --userId '84bQnVel' \
    > test.out 2>&1
eval_tap $? 19 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 20 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '2x2gGANU' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "b4sISnCm", "value": {"g3Di3SpX": {}, "18vSLyKd": {}, "b33qKMjR": {}}}' \
    > test.out 2>&1
eval_tap $? 20 'PutGameRecordConcurrentHandlerV1' test.out

#- 21 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '22pxvChw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetGameRecordHandlerV1' test.out

#- 22 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'VXvZFBL0' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordHandlerV1' test.out

#- 23 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'VENd1qRd' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'PostGameRecordHandlerV1' test.out

#- 24 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'p9DezKeT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'DeleteGameRecordHandlerV1' test.out

#- 25 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'N6YKWLjG' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1d6eehBu", "SxjyFy0r", "M7MirJkx"]}' \
    > test.out 2>&1
eval_tap $? 25 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 26 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'uQtKtgS6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 27 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'sRhvSmQU' \
    --namespace $AB_NAMESPACE \
    --userId 'ntjKPY5S' \
    --body '{"updatedAt": "OWhPjOng", "value": {"yMddlurn": {}, "57oCqZEk": {}, "Wxy3nMlW": {}}}' \
    > test.out 2>&1
eval_tap $? 27 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 28 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'loq3KK9V' \
    --namespace $AB_NAMESPACE \
    --userId 'xuCoJgIH' \
    --body '{"updatedAt": "d8rel3gj", "value": {"4SR32G6t": {}, "W0pl9Bap": {}, "Q2g5Swo0": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 29 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '5Dthv072' \
    --namespace $AB_NAMESPACE \
    --userId 'i36NaXUj' \
    > test.out 2>&1
eval_tap $? 29 'GetPlayerRecordHandlerV1' test.out

#- 30 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'v9cOOABK' \
    --namespace $AB_NAMESPACE \
    --userId 'Zwl9wAPg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerRecordHandlerV1' test.out

#- 31 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'zXAKeWXr' \
    --namespace $AB_NAMESPACE \
    --userId 'FxrY3ds5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 31 'PostPlayerRecordHandlerV1' test.out

#- 32 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'gd1SDD5C' \
    --namespace $AB_NAMESPACE \
    --userId 'fby29vuO' \
    > test.out 2>&1
eval_tap $? 32 'DeletePlayerRecordHandlerV1' test.out

#- 33 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'MSbUQBQ3' \
    --namespace $AB_NAMESPACE \
    --userId 'JdyZVavh' \
    > test.out 2>&1
eval_tap $? 33 'GetPlayerPublicRecordHandlerV1' test.out

#- 34 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'pZjSEgq7' \
    --namespace $AB_NAMESPACE \
    --userId 'BgzvW66I' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 34 'PutPlayerPublicRecordHandlerV1' test.out

#- 35 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '4sCRtPk9' \
    --namespace $AB_NAMESPACE \
    --userId '1KCwDU9t' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 35 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE