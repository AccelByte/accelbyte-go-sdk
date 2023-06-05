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
    --key 'Tf4qbV1IStCiCbhq' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "dVuawXWioqJHkR3c", "updatedAt": "folumNwH1bxK5uqg", "value": {"wilEX9Z4iqR1in1T": {}, "PUlBMMqluGSSm62K": {}, "Lw80nptXimZwXNTQ": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'mIsEbKGVlPc7N0ET' \
    --limit '53' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '5Ghjs2oRBDt5EqGp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'ck2EhqLjn4ugzKmr' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'O8rOdGSuPrUnykt1' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'Kx2Sr1eky9jJQIay' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["MUFGuSvSAqm5ehkq", "LXNAwCkcprJeYW2k", "drI5NwzB7jVZLysx"], "user_id": "hDG1RS5evTWt6alm"}, {"keys": ["mRi6FNIjfhv5yGhv", "VVfTLXLDe0nskhev", "nM5aMYc3hsm0E3Ae"], "user_id": "hSE7gJpBOWeUXWCR"}, {"keys": ["sZ6jSi2ZJgA2wftK", "mhYiPqDglo8s7QAU", "mJ4R8UpE4KtDv0rY"], "user_id": "iazrfEZWIpEN0wDm"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'md3d5I8zgQdr59AU' \
    --namespace $AB_NAMESPACE \
    --userId 'PFIFvzOJjjOOnEZ6' \
    --body '{"set_by": "twbhnRw24r0vjnI8", "updatedAt": "uWnBNzata0DeU6OZ", "value": {"imesq4WQEfVxACvk": {}, "P1WmpNhyxkogQdmT": {}, "CaAALhSGXcmoykjY": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '1OItjSolvHsRDwVT' \
    --namespace $AB_NAMESPACE \
    --userId 'X6YGeJXfCZNrMjRd' \
    --body '{"set_by": "v4vA0yrTWqz8XIzt", "updatedAt": "dAbNYDATU9lx476J", "value": {"m4JbvXZHmEdlSHdw": {}, "pWSHURlNLMgKXZMl": {}, "EJc0Hr3PdKICOyNz": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId '5HadzUDZIYZnjl0Y' \
    --limit '34' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'hB3iifdh91eiT5Nr' \
    --namespace $AB_NAMESPACE \
    --userId 'lCV9LfsF97y0soxz' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'E8xNvUKIYkXzpiiM' \
    --namespace $AB_NAMESPACE \
    --userId 'cu8wKe4MLe3vjYy8' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'BmhfiTqIhR8XgLKf' \
    --namespace $AB_NAMESPACE \
    --userId '0RSyULnsv1tx318M' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'nkUIbyEXzXx9wNIF' \
    --namespace $AB_NAMESPACE \
    --userId 'w2JjA4XpNJAjtXd1' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'NafezCtvlm2gMD0T' \
    --namespace $AB_NAMESPACE \
    --userId 'bxM20HWV47bH3Bbd' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'sn7zxbFgi9TTKgv5' \
    --namespace $AB_NAMESPACE \
    --userId 'badKzFqXTTKS2lby' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'xMOMxWXDQ27WBb4g' \
    --namespace $AB_NAMESPACE \
    --userId 'ckZ0jp2OA9nycQ3j' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'RSTomkzfJfVMXecC' \
    --namespace $AB_NAMESPACE \
    --userId 'PtnSOZXw9ZIbgz8h' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'zLeiWUhBK6815wcD' \
    --namespace $AB_NAMESPACE \
    --userId 'pXPPGJgqbQzuhjjP' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'L8WZyYHNkQhrYglf' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1wDTpgRq0cGimN43", "value": {"Oi5VXpeFJmdugHLk": {}, "9VNqY4i1u8VeJlJ2": {}, "EeoQoXYdaePnm5co": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["AEsZh4xi833s4cxs", "MCkDWkP3Mf3BB40s", "2xddIrHQ3APDg1V1"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'bfMU70778yMHWpOr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'w28u4dJeKZ8hawcK' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '5bcYzRi4qPRT4al4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'VelD2MbtaoiqtXI0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'excHp7b4Dv6lwbLU' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UR8mdkiau5WtzMrp", "QrToE0sXxydjoTAZ", "gTJHyBZHT3zUtnpJ"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["1iZslm0BxGbx3YLw", "6GOtBetf0IJOVnSu", "ODNEPGyWkzkESzFc"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'NEoje289Ay0ZdZUR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lMx6TSejD2eMj1bO' \
    --namespace $AB_NAMESPACE \
    --userId 'IEt005faMKbCPx5M' \
    --body '{"updatedAt": "dz7ka7V7ICW4yVtK", "value": {"CqiRXxcy09cJInP4": {}, "idm4l6YbmAoDCmFd": {}, "7L84oUhetsXSLqV8": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'mzV1KPKF1FjCa0gt' \
    --namespace $AB_NAMESPACE \
    --userId 'gMSD6fSgMLe5btpv' \
    --body '{"updatedAt": "1ShEgXYnYPn30BaV", "value": {"sEZt7R4t4vnLYiAc": {}, "R59K5PyU4EzYZglA": {}, "IWSsGzGddYAU4X5w": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q49ywrHBIBZ9Ml7l' \
    --limit '98' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '1cCoBSeGtlxyt844' \
    --body '{"keys": ["415WhBUrDVGSMh45", "sja0vnliaWciIRfP", "GtTBBGkoGRu5YuiH"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '8nW9Ot6Nvqg7hbT9' \
    --namespace $AB_NAMESPACE \
    --userId 'x6EM1Rzfycx6o7P6' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '4XlGcygCcp44WdFf' \
    --namespace $AB_NAMESPACE \
    --userId 'AL0l9DepY0dODjmu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'PRSpXE89xKPh24Gd' \
    --namespace $AB_NAMESPACE \
    --userId '7w0xe3b34QIa9sfN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'hIofW6Ax5IRYYP5d' \
    --namespace $AB_NAMESPACE \
    --userId '8KUEARYS9o25MYoV' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'jzmi3RXxBTxBptTN' \
    --namespace $AB_NAMESPACE \
    --userId '5zoeYQDpK6y2HisA' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'cGEr0DoyiNYFBCpm' \
    --namespace $AB_NAMESPACE \
    --userId 'h31lMFgBk4jalaHJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '9kRO3yNNauc6vXP9' \
    --namespace $AB_NAMESPACE \
    --userId 'cD60xrHsO5k8vcms' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE