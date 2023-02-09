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
echo "1..40"

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
    --key 'ORgpjzp5' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "YBPgUNU3", "updatedAt": "L8XmEBLr", "value": {"2cNJ5kvR": {}, "gRi8oLlb": {}, "kb4xfmBq": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'NHAfvSE9' \
    --limit '23' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '5AJ6MIUW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'FaCj0Wg5' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'nyNmAtGj' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'b1JAX4tF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["KqXejDpp", "foQXyyO6", "n4czLfMs"], "user_id": "uT5BICpo"}, {"keys": ["DgcjAu4p", "hAaZYHRU", "hWa6R0no"], "user_id": "3ReCfYvL"}, {"keys": ["ECnneFwR", "T5u2Pwqk", "n5bSRNbO"], "user_id": "9QWHTgR5"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'CLPRF8Y0' \
    --namespace $AB_NAMESPACE \
    --userId 'ygg7EEqM' \
    --body '{"set_by": "OWWkYAl1", "updatedAt": "HB0Tre81", "value": {"gaKEKCAq": {}, "pzIX4oyu": {}, "Uorn2LqI": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'Y0igIdTm' \
    --namespace $AB_NAMESPACE \
    --userId 'cr2nicav' \
    --body '{"set_by": "27u0kXKb", "updatedAt": "hZZZIivJ", "value": {"eDCHUtsd": {}, "WN993wwS": {}, "CEPCJuUY": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId '1kLrOu45' \
    --limit '41' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'bUMAAv2K' \
    --namespace $AB_NAMESPACE \
    --userId 'vn6ldH0H' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'wg6kWJ3q' \
    --namespace $AB_NAMESPACE \
    --userId 'YHz95O68' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'aV4StRlV' \
    --namespace $AB_NAMESPACE \
    --userId 'Ed5J82Yt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'GxPasJAy' \
    --namespace $AB_NAMESPACE \
    --userId 'z71p05GT' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'UTaEmFZ5' \
    --namespace $AB_NAMESPACE \
    --userId 'LSdJdOVG' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'UQiwNSR0' \
    --namespace $AB_NAMESPACE \
    --userId 'lqqaiRqz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '6ZYURZjt' \
    --namespace $AB_NAMESPACE \
    --userId 'MBpl5KCM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'cuIM8Mc2' \
    --namespace $AB_NAMESPACE \
    --userId '0AhyQQmU' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'FSncZGeS' \
    --namespace $AB_NAMESPACE \
    --userId 'rPV7tm6g' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'Bclke9wf' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "3TPDzbq8", "value": {"M5K1ob6i": {}, "3qwAJnXl": {}, "Jgl1sVBo": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["oQV4O8ab", "zhDtgT8s", "k8FPX22B"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'Rk75eVqE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'd6HZQ1dW' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '2A8HCo7X' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'hlkK62dV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'h8Gdw0kD' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["n8UtR9W8", "dvZMGHds", "GBdmyHgT"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["IUfxb5vT", "bfVtwl4t", "YxIYEtys"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'OB23xhst' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lTD73VXO' \
    --namespace $AB_NAMESPACE \
    --userId 'vdaQ2xKk' \
    --body '{"updatedAt": "FBP62Ws2", "value": {"cQJHEuqz": {}, "VAXPIxHz": {}, "t8nRJObn": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'xpOtc1Zk' \
    --namespace $AB_NAMESPACE \
    --userId 'NauW6HCa' \
    --body '{"updatedAt": "r1ys7Oit", "value": {"8x1tuXrG": {}, "hJQAW3Ie": {}, "twMRnJcs": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'sY4j4Rx1' \
    --namespace $AB_NAMESPACE \
    --userId 'gDtXliKb' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '0KKxxNtv' \
    --namespace $AB_NAMESPACE \
    --userId 'P7rKHACJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'HY1HKuQp' \
    --namespace $AB_NAMESPACE \
    --userId 'xEpnsXeY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'kHLfy7BE' \
    --namespace $AB_NAMESPACE \
    --userId '2RomkSyT' \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'qa2Y7P3J' \
    --namespace $AB_NAMESPACE \
    --userId 'ZdEcC19F' \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'zGBczdHk' \
    --namespace $AB_NAMESPACE \
    --userId 'uLs1X8MC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'Z741Vdlj' \
    --namespace $AB_NAMESPACE \
    --userId 'IvSQmNYG' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE