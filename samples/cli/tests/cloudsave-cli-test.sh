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
echo "1..104"

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

#- 2 AdminListAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminListAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '87' \
    --query 'XeWYRoEKTPSj4a6f' \
    --tags '["Og4N37qvLAFOxEq7", "hAjrWhYZ2jun8k8s", "A26IqROPEuw58dqk"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["85O8FfbwbAlWRllr", "Yqa8sd2d5hZGnx0p", "yWEqeYJenfy9WSXL"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'lhStBvVZ9lJqeP0A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'sOd8CsPAu9ogBWSY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '0uZlIvMau2Ii5Z3I' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'F0Wo9LUC0TYgZ0aG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '68' \
    --query '7IREAFpTDlzytyBB' \
    --tags '["b5c2SBEo2LK9kf4x", "zaQAT55p3bFiuAwO", "qvDgrDb4MraU4IUU"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "DDueoyeU2vjJOspG", "key": "xcrevAtuQybMr4W1", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1986-12-16T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'sip9gyEyrmw3qkRt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'bmPYPRz3P0x1Cjj8' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "nvZoA9mWuryJ9NUz", "file_location": "rO8MNmz8UDye7Ydl"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'HEnUrFELUjtFvHxQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'YSV8Jm52owS0MF94' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["4bewh7iQpTiu2ctW", "WAuWQab061GbIeHT", "cyuzqWhqwQPJdZAq"], "ttl_config": {"action": "DELETE", "expires_at": "1998-04-12T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'FwD3f0ZJECRD1o8i' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "NQLIFQDptOqNhVpy"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'NU5w80xDwxL5y4Yo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '2gbazQdKOaN0aDID' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["YxpKueB55Mu8XiiC", "n9PJas9msomQocrE", "mVpuG5virLT0ebFq"], "updatedAt": "1976-01-11T00:00:00Z", "value": {"ttNMfqjTyR3YWzlO": {}, "eTUbq6wwYpPwq28z": {}, "Po9M9xvQAW8uknEu": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'YI728jm4CRgpNKA8' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["R6G77WaRpKqikaHC", "qSP9zyBDYY2KdPzh", "XI2QfWVZ8QBemJKf"], "ttl_config": {"action": "DELETE", "expires_at": "1982-08-08T00:00:00Z"}, "updatedAt": "1991-08-03T00:00:00Z", "value": {"MO09otxoB7P5l5Od": {}, "eKQTKujRm2mBbTmq": {}, "O0Dbueu9ax313qat": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 18 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetPluginConfig' test.out

#- 19 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "dYNy5hReIr7YkchB"}, "customConfig": {"GRPCAddress": "4Npef62S2CY4vabR"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 19 'CreatePluginConfig' test.out

#- 20 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeletePluginConfig' test.out

#- 21 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "7hKPG3xE2izow05d"}, "customConfig": {"GRPCAddress": "m3bJkv4gXhTw6vLS"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'fs7FDCEqtOmYWk5h' \
    --tags '["5HTCpnwfZEQGFmBj", "eunLRGWfjnee4mXr", "k2XWVjBTZlUaXILz"]' \
    --limit '94' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'f7pVutIG7kPO0owh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'jYeRHnImjOvKSMVS' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'ubOS4cvuDBStDcYT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'Glz0i5dbZgTzqh2v' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'CvyElMnvDFPSPMPQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "TAbeuZPkjs82LOLc"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'ypJ1FhzdxxncVOMc' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'hoZ7qgokE0TdSiVM' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OpRjdePr5A0QzpZu", "FVTfdB3EtGLUJ0R9", "lP4uHz5X35fVBKmw"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["1wtYO8KZhWAulPEb", "9KaCHcr6W4Yhk7wH", "1gDkJsnnzN1dezyp"], "user_id": "THTI2FQUppppHNNT"}, {"keys": ["VcKtBk132AhKaHTW", "sLn12GObZV6tyL12", "wYZT5sUA4gQjFajb"], "user_id": "T4g3tsr9ZiIcFXcU"}, {"keys": ["6uUShRrF4dQfcUO9", "DCZHytdAGjzSXh9k", "EAtTAHWAl4cnsfqn"], "user_id": "Kifn3jtss68HIOC3"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '0JXU3jmNHLTmvzGI' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "UFhc5caNnnupV0l7", "value": {"o9E4mgqHIsmLkH4M": {}, "tzcgPx7wFBXGs658": {}, "I9SE6JpD8R0yjI6K": {}}}, {"user_id": "BW9XsexIH8s06vRV", "value": {"XUuL5vha4YPT72Dg": {}, "Nb73lX6FAwMMYcYN": {}, "WnPKksqccd0ZTeKo": {}}}, {"user_id": "wtadmshExAP4EOlb", "value": {"0B9d1YYiA6t13hkD": {}, "MYE0KzYzIP2wUcgL": {}, "K8IqGLcBfvZCHm9N": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'oQTZik5DFBwdSZbs' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IzaH2aJb80LexHj4", "MS5Md3lQINBAc4os", "lJmQJSxsKmepAR0I"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fRaGAZrAC1S5hXhO' \
    --limit '95' \
    --offset '46' \
    --query 're7xSNzT4FkNE18w' \
    --tags '["pQkGBEtxUHyQtmed", "79fa0yw6sC18whgJ", "PmEWWAD5FSVDwDdV"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZxQZgp2osbaEGvaM' \
    --body '{"keys": ["2dbC3SrEoUc8a4ER", "xiN1ehx8xgb8NTHb", "KjuqZcwuMCbpUdyj"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '0iSuXinvMaLuTd0W' \
    --namespace $AB_NAMESPACE \
    --userId 'cGUvAvoUVMoM01O5' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'Vo9qJassukPwf7sh' \
    --namespace $AB_NAMESPACE \
    --userId 'I0SpOK9egPrVXIjT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'qFstEQ4iZW0e94lG' \
    --namespace $AB_NAMESPACE \
    --userId 'pxyAy8mvtLgLbkxb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'ycieMLJuegNl980R' \
    --namespace $AB_NAMESPACE \
    --userId '25ign8bP6M5xBYtG' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AUZSxUU5g5tnJXuF' \
    --limit '8' \
    --offset '85' \
    --query 'Y61sikxi9GDO3kLJ' \
    --tags '["c2eFTkaEQxZ6JR5x", "6Y9cfTZEP23f0ANZ", "w9ZjY6mnQtFCMhqm"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eEEYZW6wJar9X3kA' \
    --body '{"file_type": "6O2qHZX7W9RiSfCd", "is_public": false, "key": "YKYWXDAoC9iBiK2w", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'BjLqemeVTkKb1eN1' \
    --namespace $AB_NAMESPACE \
    --userId 'QT9aPGJclW61szZw' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'aN9sJl0bCDkGrQSK' \
    --namespace $AB_NAMESPACE \
    --userId '0zus1bZqraQAr2L7' \
    --body '{"content_type": "TeRVwFdpSl8JzQxl", "file_location": "Ak6VziBGVdpJlVwA"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'cJ5oPOxchSm5LPbQ' \
    --namespace $AB_NAMESPACE \
    --userId 'mP2fxb4FYylgE1g0' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'XMMrXhM7byDAwWjf' \
    --namespace $AB_NAMESPACE \
    --userId 'MBve6kdTT9UsCBcG' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["pytjBbswVNlW0cDm", "isA5VZxKZiYdZTmP", "tVnoHvMwbQAyCMaE"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'dqTS2ORr0h3AV6zl' \
    --namespace $AB_NAMESPACE \
    --userId 'RzmJqtHIr9fqVCfi' \
    --body '{"file_type": "Aq2Pd7C9EDjsrqgE"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'CTioAbCmzIBTvIWK' \
    --namespace $AB_NAMESPACE \
    --userId 'PpwdVLK54M7eWRKr' \
    --responseBody 'true' \
    --body '{"tags": ["kkTpFFpFWzRoh8zF", "cl3MZGKiDOT7VMso", "JGqyUI1gjVUubDL4"], "updatedAt": "1992-05-28T00:00:00Z", "value": {"dXHjWZkvflGctWA3": {}, "6TQPQurXxZGF1bnY": {}, "nBtYeI0GnfMVfZCi": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'hb3XyYp1qJtMTUP5' \
    --namespace $AB_NAMESPACE \
    --userId '8qcB7SU1IKfXNQVp' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["cyVb2nuNd7f3Yhle", "dJo2C7TIsdJtX9lO", "vfjXOqLLVwFxHCoA"], "ttl_config": {"action": "DELETE", "expires_at": "1981-03-01T00:00:00Z"}, "updatedAt": "1998-08-17T00:00:00Z", "value": {"pk7yGmWAzrRJ1tQj": {}, "nR9SyVkwee62pJ0d": {}, "wJJdKe8JPrd7yArE": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'FaEyTyfnOXl37KU8' \
    --namespace $AB_NAMESPACE \
    --userId 'zhzhuHlLEqzE8cdq' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["0lczqakZ0DyX7ZRh", "AmPF2wylRJGFGN3U", "KuFlNY545PMyPZx2"], "ttl_config": {"action": "DELETE", "expires_at": "1994-11-15T00:00:00Z"}, "updatedAt": "1994-09-06T00:00:00Z", "value": {"A1HrKPryVRCyyfa8": {}, "uaZLchznoWm99I4o": {}, "k1Guf1GQRpFMknPG": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId '5NSCE2uNNtncrT0u' \
    --limit '72' \
    --offset '59' \
    --query 'vxf9boo1tYAkaA2U' \
    --tags '["GY0r0i476ihjFQIl", "AQ33f1n3ODyPVmIf", "318L2kvATPC1V680"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '29ClOXdrjK1lipLc' \
    --body '{"data": [{"key": "F5yRJaLtNAIOIlQk", "value": {"EBlf6OVSGjgC1E7O": {}, "r1RgIp87uFYWgJ5x": {}, "KjMigEJwT4ngPRDi": {}}}, {"key": "GxWurzavyvoy9zeJ", "value": {"yZquvtMGBdlAtyym": {}, "il24O8GpETDoqA3f": {}, "RmO1CA5Yanruokoh": {}}}, {"key": "fL421lCKj0BXkGHI", "value": {"pmUQZprmJFtHJ2EQ": {}, "JxoGp0WEXKoyye24": {}, "aRPBOeH7IddBKcrd": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UCjQyQJlMMVYj9Tg' \
    --body '{"keys": ["oEZXT1V7N1ZXlopz", "4IWpOt6xiFiGc3cq", "jxJPTwA8iSGKpEzh"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'RaZHYdqSzK4CshCe' \
    --namespace $AB_NAMESPACE \
    --userId 'VG0O8EYuOM8fyy6V' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '5unJuuvOsbNin9mR' \
    --namespace $AB_NAMESPACE \
    --userId 'N75WJ5PVNjoceEJT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '6kopGTNhINkmH7ok' \
    --namespace $AB_NAMESPACE \
    --userId 'mWQox2kl4ymGbZey' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'bt7n41kz3QABWdy5' \
    --namespace $AB_NAMESPACE \
    --userId 'aAsVWItpuMpzlfqR' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '7SzyMpxSQigVEVcm' \
    --namespace $AB_NAMESPACE \
    --userId '6G3mM4gFL8nP1OM4' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '13FXpz1sAbyhKKg8' \
    --namespace $AB_NAMESPACE \
    --userId 'BACiv1WEijVtyN2e' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'tMsuWih220TfVTLP' \
    --namespace $AB_NAMESPACE \
    --userId 'VlfY7m8x9b5IbRZK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key '0bmUzxFyMDZ9gJhG' \
    --namespace $AB_NAMESPACE \
    --userId '9WJto5oo42Eb3GgE' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'QQ6Fw6xjFO709IYg' \
    --namespace $AB_NAMESPACE \
    --userId '8rLO8Ep2OFToJd8F' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '61' \
    --offset '95' \
    --query 'U1GQ52ZmvJSMfe0J' \
    --tags '["EJlNEry09y4RuJPx", "t3ptrYHbpwHV3vOT", "3gzqLNGS6XfRBfF7"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "KuTDrA9loi3DzXyv", "key": "EfdDblzK1eL6tDFm"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["T2ieDViORQQwEO8Y", "e3hcMNn0eUxbrfAw", "g5ocEygEPjmhbhjo"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'CUltEQvyjcpQQuE6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'tCjsByftlbUKjWSB' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "6YBhihAWgo5JFRGg", "file_location": "q7cD1rOAFFbrB1LO"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'CNSpsaZKccSEuxDY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'ajAASgor9OkSVs0p' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "eFAz7Yu14E7vdloO"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'Z6DvdiwG1DlSUDYT' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1984-06-08T00:00:00Z", "value": {"xY51HqamkM1xqkzq": {}, "TVm1rEzEpQGTcY60": {}, "HCCTx2d3GsUKPZHL": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["eO8bvt4nZJmShpCW", "E0WNSQzFJaoWSQ7a", "PFoZX3V7yIT2pTun"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'bUk9OaHIiFfXw4md' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'qk60Hn93kozlVvvh' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'j5gXTVG855o3iXbe' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'qsBp9DAgyUDTxDba' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '4dZCQpx7T9LTm2YQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["EvmRN0d8fklr8Uy5", "z2jR6fL2vdHgSAmK", "GoSx7uklKJgH7wbj"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '9jbZAir1DNH7pA1M' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e8u7ZShzzTx2gkBw", "isBPWaaSv5j336nY", "cOJAGA1Y0YMaGARm"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '36' \
    --query 'FnMAEXdClXQvGbrP' \
    --tags '["RtHqgPZS7ToPKCHr", "ZkgJuGDYfUARrkkV", "gza8jBjIbnwgw7Qa"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["mgYsGwZhNZEi2G6L", "B3mlBV97roYj5P6H", "S3DR4cWej35duCwZ"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '84' \
    --tags '["KNRuCZfLXdIXTxJx", "UNSgilLSCrVBA3eP", "7AGQbAVLQEETLEy9"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["nzASWl0Da1PHrrMN", "VVSrkgPmG7tvmkZo", "wm6ZS8TQJisca5xe"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'pgf78aU8JO2W0P6G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'px15gY7uXMqIuWQc' \
    --body '{"file_type": "A2qdir7kThhjAIdB", "is_public": true, "key": "WMtzRWMcmonvTAfX"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'buaQPUe2ZlTFr064' \
    --limit '98' \
    --offset '41' \
    --tags '["CedRPiHaGkBFVYNw", "cjM35EhUJ4ncqc6R", "ileoNXlJr9RgQuRp"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '8IWXpXphCaRHLas9' \
    --body '{"keys": ["7hkpaLPs3wrG6YPC", "g9XXqGqf2fleN8lQ", "lpyECjkUxvE2kMp1"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '3vW2IMIOUlaphc6X' \
    --namespace $AB_NAMESPACE \
    --userId 'B7OraxHE3Ykmq7kH' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'H62kYIb4tz9hwQvU' \
    --namespace $AB_NAMESPACE \
    --userId 'OIoDpcIvE9VHhwsm' \
    --body '{"content_type": "6lxeqH786GFp3DJx", "file_location": "EpBxYLnjcu6TI8sV"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '922DAEw1Yi6AKK71' \
    --namespace $AB_NAMESPACE \
    --userId 'afqGdwus6inuPNSp' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Vkf3k8SAHolSgJCl' \
    --namespace $AB_NAMESPACE \
    --userId 'SYPUXK8bBcA2Hm5n' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'gzWlaoWtPcnPGOip' \
    --namespace $AB_NAMESPACE \
    --userId '82EaDvN9wmm6XcwM' \
    --body '{"file_type": "Qd77ZdqDV28cQIPc"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'cXibvx9IUH8TSUSU' \
    --namespace $AB_NAMESPACE \
    --userId 'TC4CQQeIS1Bcwuky' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'NZv9gem9zB3XqgsL' \
    --namespace $AB_NAMESPACE \
    --userId 'WfijwJhI5mx9zddT' \
    --responseBody 'false' \
    --body '{"updatedAt": "1975-08-27T00:00:00Z", "value": {"t2nLLzSL72mYEPxB": {}, "U2tnFxkeQVFJ06d6": {}, "FGIacIo0e0IzHNfP": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'a3Td01JhubQdQ53R' \
    --namespace $AB_NAMESPACE \
    --userId '3sslWelKSHPTITLi' \
    --responseBody 'false' \
    --body '{"updatedAt": "1984-09-17T00:00:00Z", "value": {"BHAahYKyRpXCGRNW": {}, "DhowVv7A3erzNG9U": {}, "KTagn05N1MloJMXn": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zxZusbJNLuhA4bHn' \
    --limit '35' \
    --offset '60' \
    --tags '["13zePszBMQUW49h8", "fPTxx45VjVizQsCp", "HjIG3m6K8vKwPoI7"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X8UHKu2mHtEFan92' \
    --body '{"keys": ["7SSWfK46xgFt4Kd6", "ON5peJ7gycxmzlRa", "T4ziZj5sc5eLXXJu"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'NLBLyZSBSFCzDnHh' \
    --namespace $AB_NAMESPACE \
    --userId 'lNEhaNd6aOCHWWr5' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'hBD7qcmNdymvUTbw' \
    --namespace $AB_NAMESPACE \
    --userId 'PWMQQSUXneJK2cuE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'k36iZvarMv7Kj36m' \
    --namespace $AB_NAMESPACE \
    --userId 'Osn013XGOryIltB6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'FMZtGn35BDmUmrjH' \
    --namespace $AB_NAMESPACE \
    --userId 'LDvGd4t6sHXoFfxL' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'dFlAgYYZBEYFSdhb' \
    --namespace $AB_NAMESPACE \
    --userId 'tkFh2X1iilK50lUD' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'eH5XWLTO9NPpftis' \
    --namespace $AB_NAMESPACE \
    --userId 'cV3knnVNp62r1sgS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'lLbHFxNnKwISxp04' \
    --namespace $AB_NAMESPACE \
    --userId 'g0mSsGOdOWElshb0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE