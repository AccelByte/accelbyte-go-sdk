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
echo "1..42"

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
    --key 'pMAGE3FeghRgENe6' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "sPronNtV36eSPmL9", "updatedAt": "SeHfqZR8wXmTQrrG", "value": {"UkKsbObckg1bcvhI": {}, "PTzpsgxQNxoGpMek": {}, "RguSN9gK32hrnEB3": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'Je0KrAnNnEfpx8Eo' \
    --limit '45' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'PbCQG7F6w4Mt5Won' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key '0OOcii14G8Od43xY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'OIXLgrEs0y6zNvFO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'ieXYS5JlqnbLFB9s' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["CvF3mSqX90yOICeT", "5WKJAuSpuEp0uv58", "Rsh2OFz86hEnZRkU"], "user_id": "pVygOzyUxu8yxYLk"}, {"keys": ["kqJEgQl7BL2J7Js4", "RW1lOpapLNcxcxnL", "I68UY0toqcFzqWg7"], "user_id": "uNyaLGl5CQmirjD0"}, {"keys": ["LtztEDeLavcqpmvq", "ZLvcKnqAjjh3ExzT", "t90jkV3x3v5UuxP0"], "user_id": "yOHLHATKifltwIXX"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'xH8lSQy8YfMJiPMZ' \
    --namespace $AB_NAMESPACE \
    --userId 'MYB27e1QmO5W1VSm' \
    --body '{"set_by": "mWQLdYJityZJvhMa", "updatedAt": "wbjPfmrAS1Kx0f6O", "value": {"7T0uvWPn4uzl8YtS": {}, "ri1BeQr7iaSc2XHE": {}, "09owi57HfQHw8RJZ": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '73z6DSUo3huoZAGx' \
    --namespace $AB_NAMESPACE \
    --userId 'AuZiriesh0DHPoKV' \
    --body '{"set_by": "XDDH1heyD2Sbsz5v", "updatedAt": "kAiLhHgAWWt9fdZG", "value": {"0bpnQXd83jgO5qK4": {}, "tcQCrfkc46HiJQNk": {}, "fwhy7bCG7gXVAR71": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'CmOko69k8phd9ful' \
    --limit '54' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'hGuDvPgy3EsKPCAK' \
    --namespace $AB_NAMESPACE \
    --userId 'V7lWyS8NNy9eCVsC' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'WRVgXz6LWPuPDzzk' \
    --namespace $AB_NAMESPACE \
    --userId 'HgcGfPUcdosUvXQf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'dKILTlh27dDvCSpG' \
    --namespace $AB_NAMESPACE \
    --userId 'eTziEDKfDud6G5kC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'VRGHDTxnDpigTTXl' \
    --namespace $AB_NAMESPACE \
    --userId 'NFBOLyLtIpgOT442' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '6FNNQmWop3jGfPx7' \
    --namespace $AB_NAMESPACE \
    --userId 'X4kNzozOQhMp5h0a' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'YI6hxuIxRmlgw31c' \
    --namespace $AB_NAMESPACE \
    --userId '2ZnBQS6CRVa0V7gN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'hIZsAU3RUzL1M8Gp' \
    --namespace $AB_NAMESPACE \
    --userId 'R1639b2CXNj4n7cX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'VCUDxUnquy7CRNOU' \
    --namespace $AB_NAMESPACE \
    --userId 'NmMUXrJLAz2vfrzb' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'uyUdPwymG7mQTz3B' \
    --namespace $AB_NAMESPACE \
    --userId 'mX9QZgm2fnniPfR2' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'Nh6pWxJHsT0GvLTg' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "Ja8feHXeT472XKbp", "value": {"RGfYiyAhpCjhAQ44": {}, "7bxz7CbnznNHlfxz": {}, "XQ35C5nps3aBBhfK": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Jqve5iMY9j6R7Aha", "JQdkxuf9GLt2gkVq", "rUOnYIQDVexQXZUT"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'ERaAE7uPPiwTo9uR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'AyfU1xCvFrFoodEl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'S0NBDwCRCW6bM18p' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'ndpAtiWpl0JlO8nq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'yNLnncMi0JmkhvQJ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nReo48TgJrRFIeo7", "POxwyCuUcMz9X5P3", "Zdl7Fw1btE1XDwhJ"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["9igexWCNDqRQDlDx", "rK5vZBJYbRgCIoyy", "jUlRVfTI1f3yf4p2"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'EJcECBr8AejkfSfs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '14NZ99VqR9q4DWX3' \
    --namespace $AB_NAMESPACE \
    --userId 'i53dZGHdCfb3ROti' \
    --body '{"updatedAt": "vHKm6AsD7OHqzsLB", "value": {"Cag0o4DyuhjK7PvS": {}, "dtq91CzQJLZnGOyR": {}, "wNHOodMUOcTg4pcZ": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'JNho2kxisC7rbseY' \
    --namespace $AB_NAMESPACE \
    --userId '4veYRKo6o6kD8SJg' \
    --body '{"updatedAt": "ZHAeVb85jUM2O6fR", "value": {"gqmIhA9CZtggbDYX": {}, "rEf3YPjaSbuu5P1M": {}, "7HCt7yYjEqM0Kpgc": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'bZyFgS6HT0tzoRkA' \
    --limit '40' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vNbUfVEGMTegfdqd' \
    --body '{"keys": ["ezg7UAqQSaSs5mPo", "3RpRH4vCaAmTOqqM", "82SvRAEjUbPzpjA1"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'S5zOXZc2Y3nqnKXV' \
    --namespace $AB_NAMESPACE \
    --userId '40orqiAmX1oEiyMf' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'ZeuvYeCyb5O4jf3J' \
    --namespace $AB_NAMESPACE \
    --userId 'p5pX7ZTsWBkR0Xvz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'B6HkYbordvTHIkYN' \
    --namespace $AB_NAMESPACE \
    --userId 'Bez2BKqasDCqtzlR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'U9bGnWkDPqMsQd5v' \
    --namespace $AB_NAMESPACE \
    --userId 'RysC2MI18UzkcU9g' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'VWtIGkUpnWLNCUeE' \
    --namespace $AB_NAMESPACE \
    --userId 'UhhxEE3LyRjBtY4p' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'Rynszl0x7j5CDqlg' \
    --namespace $AB_NAMESPACE \
    --userId 'xpT5xImOAFZxnQrZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'lflZuwa6hnCv5nhk' \
    --namespace $AB_NAMESPACE \
    --userId 'bcRDTlwxZ1CwmqQZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE