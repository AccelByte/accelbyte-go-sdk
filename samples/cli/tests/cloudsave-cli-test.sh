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
echo "1..33"

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
    --body '{"set_by": "FtBxyZcD", "updatedAt": "XBpGlsQu", "value": {"Ju8vMf0I": {}}}' \
    --key 'sJkTrd8I' \
    --namespace 'DcV2zXnT' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace 'KjXY1bPq' \
    --query 'amiBxx9C' \
    --limit '36' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'Y84ekItq' \
    --namespace 'RzHU1oh5' \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --body '{}' \
    --key '70KQBVae' \
    --namespace 'wc72krSh' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --body '{}' \
    --key 'a68n3Yno' \
    --namespace 'zp1C2KmI' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'QTuBdNEU' \
    --namespace 'sxFb8CJ1' \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 ListPlayerRecordHandlerV1
eval_tap 0 8 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 9 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"set_by": "7M7DJZaM", "updatedAt": "SxECbZby", "value": {"gyoarORo": {}}}' \
    --key 'eNHSb8Rh' \
    --namespace '3kgs9qqJ' \
    --userId 'bnQsoBgi' \
    > test.out 2>&1
eval_tap $? 9 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 10 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace 'VpP8Cm3y' \
    --userId 'vASUoxdx' \
    --limit '46' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 10 'AdminRetrievePlayerRecords' test.out

#- 11 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'qmAGTJ8I' \
    --namespace 'EdagEtp4' \
    --userId 'w29KOu9c' \
    > test.out 2>&1
eval_tap $? 11 'AdminGetPlayerRecordHandlerV1' test.out

#- 12 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --body '{}' \
    --key '19R6XDqW' \
    --namespace 'HkkP8npL' \
    --userId 'EKMfjiX7' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutPlayerRecordHandlerV1' test.out

#- 13 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'jpkVZk3I' \
    --namespace 'aQYEmqGo' \
    --userId 'dOEGt9gP' \
    > test.out 2>&1
eval_tap $? 13 'AdminPostPlayerRecordHandlerV1' test.out

#- 14 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'Oj0c6i0J' \
    --namespace 'kvIas73u' \
    --userId 'cYnFAJ3D' \
    > test.out 2>&1
eval_tap $? 14 'AdminDeletePlayerRecordHandlerV1' test.out

#- 15 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'K5T4Eogg' \
    --namespace '0Y39UoYl' \
    --userId 'pv5bVAgt' \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 16 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'sDhUTDUs' \
    --namespace 'cbQDjbTQ' \
    --userId 'uPMz2PTR' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 17 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'lkyU89ZP' \
    --namespace 'Ow6zPFJ4' \
    --userId '2cwmzBBS' \
    > test.out 2>&1
eval_tap $? 17 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 18 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'MNcoAAOj' \
    --namespace 'KNjfcYHm' \
    --userId '093aYgBU' \
    > test.out 2>&1
eval_tap $? 18 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 19 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "1sqjyK0X", "value": {"H45PaRSO": {}}}' \
    --key 'FQBtu23R' \
    --namespace 'EZ8hRVX7' \
    > test.out 2>&1
eval_tap $? 19 'PutGameRecordConcurrentHandlerV1' test.out

#- 20 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'LGOvDdYi' \
    --namespace 'QS9i7mV1' \
    > test.out 2>&1
eval_tap $? 20 'GetGameRecordHandlerV1' test.out

#- 21 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --body '{}' \
    --key 'C91pjG9g' \
    --namespace 'pxL6ycTQ' \
    > test.out 2>&1
eval_tap $? 21 'PutGameRecordHandlerV1' test.out

#- 22 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --body '{}' \
    --key 'dvln2LAu' \
    --namespace 'SQWEXL6L' \
    > test.out 2>&1
eval_tap $? 22 'PostGameRecordHandlerV1' test.out

#- 23 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'FE1YHo9m' \
    --namespace '126ZWc8h' \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameRecordHandlerV1' test.out

#- 24 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --body '{"userIds": ["HtWvbNYq"]}' \
    --key 'gUqslArF' \
    --namespace 'PiHUIvaC' \
    > test.out 2>&1
eval_tap $? 24 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 25 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'v8kU9dBB' \
    --namespace 'pdsJLhsV' \
    > test.out 2>&1
eval_tap $? 25 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 26 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --body '{"updatedAt": "yExrkxoo", "value": {"t0B7WOfe": {}}}' \
    --key 'rcZdpMci' \
    --namespace '37Ds7YSf' \
    --userId 'ExaI3uzL' \
    > test.out 2>&1
eval_tap $? 26 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 27 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'teMbFAlt' \
    --namespace '4hr7HmOY' \
    --userId 'iBA5ltAO' \
    > test.out 2>&1
eval_tap $? 27 'GetPlayerRecordHandlerV1' test.out

#- 28 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --body '{}' \
    --key 'XmlG6eh1' \
    --namespace 'dTdoTFpB' \
    --userId 'IcuC1dQY' \
    > test.out 2>&1
eval_tap $? 28 'PutPlayerRecordHandlerV1' test.out

#- 29 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --body '{}' \
    --key '93OJnJ6T' \
    --namespace 'e9vD8ldz' \
    --userId '7Hu8AD79' \
    > test.out 2>&1
eval_tap $? 29 'PostPlayerRecordHandlerV1' test.out

#- 30 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'kdWunviz' \
    --namespace 'U0q1pHyh' \
    --userId 'hERoGgdr' \
    > test.out 2>&1
eval_tap $? 30 'DeletePlayerRecordHandlerV1' test.out

#- 31 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'ysMizBGS' \
    --namespace 'RdP2l7DN' \
    --userId 'SZ8Aq0Xi' \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'PLQXSe07' \
    --namespace 'ZddOGTMl' \
    --userId 'JjBwj9HJ' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerPublicRecordHandlerV1' test.out

#- 33 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --body '{}' \
    --key 'HQKseEdS' \
    --namespace 'XRDSvgua' \
    --userId 'uw1xT7eM' \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE