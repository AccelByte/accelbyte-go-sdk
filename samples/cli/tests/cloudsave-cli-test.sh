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
    --key 'UaC0CkLb' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "F8yXreBM", "updatedAt": "uUlJKXOv", "value": {"vsX9Lx4W": {}, "bKSFE6jL": {}, "DeWQO5gD": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '0jyC24kJ' \
    --limit '46' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'B4V8MXLX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'i4ZAgWMo' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'lpejJMSB' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'Pjoc0bPu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["bBj0u5nU", "KW61ytkt", "Sg096Gby"], "user_id": "FQ83iBse"}, {"keys": ["2SgRv964", "ARU58Iue", "jj87tdwp"], "user_id": "dtGH2pBy"}, {"keys": ["IIjb3zBP", "tnWqhzy4", "wMvAVtUg"], "user_id": "S83eohID"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'mcItGCHk' \
    --namespace $AB_NAMESPACE \
    --userId 'Jc196tLE' \
    --body '{"set_by": "Zfv8Hbfd", "updatedAt": "5keZDcjx", "value": {"OWuZqg0u": {}, "YYOQl5qb": {}, "yxAQ0thS": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'gcEN86s5' \
    --namespace $AB_NAMESPACE \
    --userId 'QJmRrqY5' \
    --body '{"set_by": "n0yyWZ2M", "updatedAt": "Vnow2NTT", "value": {"MTYpeNZv": {}, "crdcReQt": {}, "NhwqxHi5": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'xZkZXHHN' \
    --limit '91' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'ryQQ1vIO' \
    --namespace $AB_NAMESPACE \
    --userId 'WGje4bQf' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '9ZyhbhMp' \
    --namespace $AB_NAMESPACE \
    --userId 'B2oIvTdD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'p4nIzrPc' \
    --namespace $AB_NAMESPACE \
    --userId '51ElXKM7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'TQxE054L' \
    --namespace $AB_NAMESPACE \
    --userId '6lwceYqP' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'Dxx6JBcw' \
    --namespace $AB_NAMESPACE \
    --userId '6kYOd8ED' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'uT05c507' \
    --namespace $AB_NAMESPACE \
    --userId 'NtXSbApO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '9YF8lm9c' \
    --namespace $AB_NAMESPACE \
    --userId 'fychJZHd' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'KgnX4BON' \
    --namespace $AB_NAMESPACE \
    --userId 'eLUh5EmW' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 't1AJDA3O' \
    --namespace $AB_NAMESPACE \
    --userId 'IZZMabI3' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'r6U2v1Bt' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "34ks4Bvu", "value": {"4pILU2z4": {}, "Koi7HvjI": {}, "ucUttPEI": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'emkXf5LE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'BBGb8mYm' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'ZQwTmgXw' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'M1CRQoC1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'nGUuYRUE' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0gxJV6Ao", "KaNmYYhm", "kOa3CDoE"]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'iOmt1xso' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'wLNo5Jtk' \
    --namespace $AB_NAMESPACE \
    --userId 'Yx83q8Sp' \
    --body '{"updatedAt": "SVZiKsKs", "value": {"HfrXveog": {}, "MjCQgOGX": {}, "ikcQOvZM": {}}}' \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'dk7jS9r0' \
    --namespace $AB_NAMESPACE \
    --userId 'wfs1d2df' \
    --body '{"updatedAt": "7FazIuaN", "value": {"6MY0xbSb": {}, "CctqtQhN": {}, "z1XIUe0f": {}}}' \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'YMH4h2eX' \
    --namespace $AB_NAMESPACE \
    --userId '7x9BlVPh' \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '2yKSarIA' \
    --namespace $AB_NAMESPACE \
    --userId 'TvtGnDBK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'N1teHTlw' \
    --namespace $AB_NAMESPACE \
    --userId 'Ehe4F6Eh' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'LqZgugge' \
    --namespace $AB_NAMESPACE \
    --userId 'O27zRmy7' \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'f38Ijr0L' \
    --namespace $AB_NAMESPACE \
    --userId 'usaIWEp3' \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'wBQMgb62' \
    --namespace $AB_NAMESPACE \
    --userId '9hibo7Nh' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'AJBlZG0j' \
    --namespace $AB_NAMESPACE \
    --userId 'HtrPfkMh' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE