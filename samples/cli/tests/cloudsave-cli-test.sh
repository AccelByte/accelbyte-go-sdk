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
    --key 'acQtmGI1kPaQkaSV' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "bzfVxFIYYQSwbJ2e", "updatedAt": "5RP4pzKOl7DD0fHz", "value": {"f0hbAqckQ0XCkoTm": {}, "1kgTvy9ASZjy3AJ6": {}, "PjXcL6SUmiKIUbl7": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'jZi8mlxalXIpdxS0' \
    --limit '19' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '62L03G4OjFlyAjcC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'hSshAhTTExjopjFJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'SzZD8ApckX8gllYn' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'NQDyljFJKySFRzfK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["3lNQWDeNEOn4Gbos", "LteAYSl6VFR9h9o9", "q1C8o8ebTvFUdrSz"], "user_id": "0A5Yhh21oPP6o82q"}, {"keys": ["NGVhzLXNl2ewZXTv", "7nMyj4AgW0e4sThI", "spHtQDnhn3Pn2ESI"], "user_id": "JzyRrEnU4uF88flN"}, {"keys": ["swhNAJfG6oXAtxg6", "B82sLQcxxo4AiOvt", "9Cd9qFV611IqhqIC"], "user_id": "94BZ5pf4eFxAMQNr"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'COcVhBMU9sdSCmDS' \
    --namespace $AB_NAMESPACE \
    --userId 'h8c5Aec9WHc5QgDu' \
    --body '{"set_by": "7yYuYpdDRTF38Epk", "updatedAt": "ti5n11zaCkJEiyx4", "value": {"eFp8kqSUwvDktGM6": {}, "S4xgefLvkSYQ0GTp": {}, "cFYFKVQHJuVTWRiL": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'T0i3TmXdelv7fdPg' \
    --namespace $AB_NAMESPACE \
    --userId 'yAt2rIanyFGmiaLy' \
    --body '{"set_by": "G0BjsRxM4AOybTxc", "updatedAt": "H7hIxDHetUJL4mM9", "value": {"rYhRNpjtCHpCIws1": {}, "ghefBeonK5Is0pYu": {}, "c3XAgR9Ub8Sfbr2B": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'NeJudGzwHM3kfzo0' \
    --limit '24' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'db6Is0eKhOGJMDEy' \
    --namespace $AB_NAMESPACE \
    --userId 'Y269C4fvWJAbgl2t' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'FyyskamWwviwt8v6' \
    --namespace $AB_NAMESPACE \
    --userId '7YsGTkCfF6Kp2WHb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'qYSnZ2oD3o3g2vpq' \
    --namespace $AB_NAMESPACE \
    --userId 'FADQD4F6Gi0Ztx0p' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'rAgFCuoKtaxM1BNN' \
    --namespace $AB_NAMESPACE \
    --userId '9pbI8yMQ7KTr5Lfi' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'YWbyfL7dy3UfT91v' \
    --namespace $AB_NAMESPACE \
    --userId 'pdfL0iYncwYn57Vx' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'IhQS03wSUJfZ6hLH' \
    --namespace $AB_NAMESPACE \
    --userId 'w1XByLm6XLiA4FPz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '1BwprkuiyXjUdU5q' \
    --namespace $AB_NAMESPACE \
    --userId 'eh1dhBu2PSqzZIOI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'h06xUNrkuBgiujYS' \
    --namespace $AB_NAMESPACE \
    --userId 'Hk53LDD5vcyoFBmh' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'CyEe55vFkgFMCjFa' \
    --namespace $AB_NAMESPACE \
    --userId 'zAEJoVOH0Q5fGycg' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'xf5UCHbaV6nO3nTG' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "hAO75kvz4yi9QVM7", "value": {"ePlUNFIvfN1tJBU1": {}, "8Bu3g0o9fBiP6SrF": {}, "pBjlGlJNaUYKNxoe": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["FrcIy5KN89OAYDMM", "qrogFBg6derBCgpy", "lRAV0jiRPOP6eK39"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'rHns0a3JwaQiVO47' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'YMyuF8mP6skgK1E2' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'OtG0GCtTCgMCNH2Y' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'EkrYsNU7g5P4FX9i' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'aAEEOiuSQcEc5Q4q' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6kNTGYlWpOqP7KZJ", "k89NwobwLGmFG14b", "weME4FjplAvkd0Zd"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["lR7kQIdFBtfq3frf", "P9eFShpw2IJi4F0J", "y3ITONI36wNkmaaY"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'yixFvXSfisya0NsJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'c4MjrQiWbkcmEDgL' \
    --namespace $AB_NAMESPACE \
    --userId 'bAapPpH6TjJEhBCE' \
    --body '{"updatedAt": "0kTnwTtutGkZvxqw", "value": {"aP0w88OzGFjVSd81": {}, "SdZ6CfybTMwZuKyK": {}, "JKikQ6vL1Ulnq9jw": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'lWFiZjmX9BKBl37v' \
    --namespace $AB_NAMESPACE \
    --userId 'YRI0zrjiCvZU0hyt' \
    --body '{"updatedAt": "DcHxZgUAayr7EUTT", "value": {"WvhxBjvGSFRU9R0w": {}, "MrVRIZF5C0o9uj0I": {}, "mi8hpEoAKEbvV6yh": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '4d0Hn6PXdzIjF7Zs' \
    --limit '50' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oTUTaEMfaqabdSux' \
    --body '{"keys": ["1mAoN8ypCj2b6umE", "nNLeDa4Ym4IA1kS3", "xJRlxaquEFyIAbOH"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'bycvoq4akUQNHYOV' \
    --namespace $AB_NAMESPACE \
    --userId 'bqmH30RQGUdqhf2g' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'RYAsP35ZnVpQUJ9z' \
    --namespace $AB_NAMESPACE \
    --userId 'LMHemJWhdQ83Sqmm' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'TTv1rxfQXNnc8W8B' \
    --namespace $AB_NAMESPACE \
    --userId '4zfgh48DOmY0MHRu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'c4oJS5AKohDIjmxt' \
    --namespace $AB_NAMESPACE \
    --userId 'LouA7WbK1JN6ICIG' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'Wrv3150DAMPZ8YDK' \
    --namespace $AB_NAMESPACE \
    --userId 'xIS0OaBi5zZIBhH0' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'GgkwGtuIVqOVMmJr' \
    --namespace $AB_NAMESPACE \
    --userId '10DTfEkqff3fNxeN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '0IaXd9dD0o5FkoGk' \
    --namespace $AB_NAMESPACE \
    --userId 'ctaM7PBAGvJAyclu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE