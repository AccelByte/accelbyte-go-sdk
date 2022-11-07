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
echo "1..37"

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
    --key 'Ajfy7RSH' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "bfxtqQx2", "updatedAt": "fGz1BLcp", "value": {"QGizi4Pe": {}, "tNvfSJuM": {}, "9HCF7Dri": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'YP3wB3kq' \
    --limit '82' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'xNRzbutj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'wCpQnk4B' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'jy9t7EN4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'CvgA9Urk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["pFOSslds", "LvZk073f", "RXirSzaA"], "user_id": "gOvkiqI9"}, {"keys": ["UtTe4JzG", "6fbK07Ht", "84qjrSES"], "user_id": "jlMCHCYf"}, {"keys": ["1ol2xOrk", "ivyZVHj4", "8iGeol0w"], "user_id": "4nydbARc"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'SXJdks2P' \
    --namespace $AB_NAMESPACE \
    --userId 'TOsfcQws' \
    --body '{"set_by": "vpojkHMq", "updatedAt": "muav8bhB", "value": {"CYIweXZ9": {}, "Vd0qG20c": {}, "ASm6pmNm": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'uGKGWQJW' \
    --namespace $AB_NAMESPACE \
    --userId '6BRNnT1u' \
    --body '{"set_by": "ZxfpYmdB", "updatedAt": "Qh5PN8tS", "value": {"xErMtHEr": {}, "CzqEaPbo": {}, "FMSzNJjM": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId '2P7dUAaD' \
    --limit '3' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'lZjXHma4' \
    --namespace $AB_NAMESPACE \
    --userId '6Yp6APEV' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '9oJ5JRYr' \
    --namespace $AB_NAMESPACE \
    --userId 'yGiSUdBt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'XHK412Xs' \
    --namespace $AB_NAMESPACE \
    --userId 'nsIaozuM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'qrDseSOO' \
    --namespace $AB_NAMESPACE \
    --userId 'YetpdaWi' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'jxHx8XOH' \
    --namespace $AB_NAMESPACE \
    --userId 'z9weCUFw' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'Gs5BFFGw' \
    --namespace $AB_NAMESPACE \
    --userId 'fmkyx60v' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '7310rKUI' \
    --namespace $AB_NAMESPACE \
    --userId 'iOxFIPGl' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'M8XjH48I' \
    --namespace $AB_NAMESPACE \
    --userId 'flsF228c' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'IXPJjbH3' \
    --namespace $AB_NAMESPACE \
    --userId 'xAISOizI' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'jthKYrbx' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "VQT7KjUI", "value": {"RFoCK5Sw": {}, "zG2wjAse": {}, "TTfx1XGn": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'VhZgE4I3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'uXTCzOEs' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'k2FdJASE' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'akNTHU4E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'zCIxy6ZI' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xVEUQ5mK", "NtQhq4KW", "G7arFOE9"]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'zoPbJDMQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lIrZpkUp' \
    --namespace $AB_NAMESPACE \
    --userId 'JxUPpm2N' \
    --body '{"updatedAt": "THYZ8uaX", "value": {"k5ncIt8T": {}, "8r02PidS": {}, "HkwmV3CC": {}}}' \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'asFwhzUX' \
    --namespace $AB_NAMESPACE \
    --userId '6KzAqXHc' \
    --body '{"updatedAt": "QMPmuGZI", "value": {"jc0mDwmy": {}, "M5XxlPNf": {}, "yPxgQ869": {}}}' \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'KL6EL6d4' \
    --namespace $AB_NAMESPACE \
    --userId 'FUrZOteG' \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'sL5wz2Qc' \
    --namespace $AB_NAMESPACE \
    --userId 'asceTKRI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'UFKmgk6q' \
    --namespace $AB_NAMESPACE \
    --userId 'Fqohq36m' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'C3zrnDJo' \
    --namespace $AB_NAMESPACE \
    --userId '6ULd9SjV' \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '3L7FcCZ4' \
    --namespace $AB_NAMESPACE \
    --userId 'tkxWnV46' \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'FnT4GsMj' \
    --namespace $AB_NAMESPACE \
    --userId '3vX4Joly' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'jwxm4P8i' \
    --namespace $AB_NAMESPACE \
    --userId 'JHqZcnr9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE