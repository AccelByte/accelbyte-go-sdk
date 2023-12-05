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
echo "1..95"

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
    --limit '21' \
    --offset '73' \
    --query 'R90WNPPG8D1soY9L' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["bzuoTbjqXWJJdUW2", "4xncr7lZRCTRHMHU", "so3W7WtQwfHpAZ5m"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'tTg2xkcbcgX8rWRj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key '1Mh7REgkmELvaTuW' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'nqqiAB7yzaJsTnst' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '3HqczWhGH2TTq69B' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '98' \
    --query 'pRtZUAGmclwQvuOu' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "h1ORIs1rxKvtmakg", "key": "c7bIdUKm64cPDU0e", "set_by": "s3fc1Gyf2o6LYRLU"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'FNmOwmITl9qsYjmN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'LoEbDPHPXYKLvTDk' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "vi2pNn3qslF43J7h", "file_location": "M7Yg2To3yGQCIc56"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'e1aKYDdpRQEZiGv0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '2XAqG80zoPjwQLYS' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "YBjDW6rXtYJzwcfc"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key '5FWuai8reNyfksBZ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "4KfhZKr8f7snWgX6"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '3Y7LJpRUozHicoqN' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "SqqTOIEN5V53qK0F", "value": {"6Po4OAbIeAtnWjZJ": {}, "y4SsAfHMNxPkEV3S": {}, "HsfbuA2FOcyN04nh": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'fhMz51aTP8Jdk9Sq' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "rojUdmjJtSFhA9GF", "updatedAt": "XJnxXobNUuqpDEfD", "value": {"AMQiBKxRFOj8mqQW": {}, "jQxzERunTyj9YtBF": {}, "zoeN6AeLYHDTqBNN": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 17 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetPluginConfig' test.out

#- 18 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "fpqdrAfZY0HoX3w9"}, "customConfig": {"GRPCAddress": "dho53xZluZENsaIR"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 18 'CreatePluginConfig' test.out

#- 19 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeletePluginConfig' test.out

#- 20 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "mgwZbnAnfGWCvXKk"}, "customConfig": {"GRPCAddress": "2h0xFY0phHwUGvGT"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'EzlhxsMgnDdZSmxG' \
    --limit '14' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'f8m8M1HhpJSgM2Va' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'qJS6EdUoJCYd7e1z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'EdQIpqHFPM4QR5DA' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'XbtKNtsxbrSgK5rH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '8lhIIDVyZHHQua4q' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BaO8pOClTuNuVEap", "dRUrJTx86ifPPCWo", "LdsU5p3aCF1okx57"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["Wt3exiknGTn4yYnP", "Tcdtm7edfKvUglXe", "QQrBo13tdGSixjPu"], "user_id": "HQFK3PE1mw4mzBSI"}, {"keys": ["qlNaepevKg9YEQsw", "rhbAgOuHyA9PMrQc", "I1pZdXbP43Ud0bBY"], "user_id": "YFaXx4FdTFyXUIui"}, {"keys": ["Ny0fQ80qHLkKhmV3", "7rF3JRN1r8nvyNPy", "E19HMPY7FFdtPB2f"], "user_id": "TU1ZC5gNDWoiApGM"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YjxCUk3U0tEYtc7G' \
    --limit '2' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '6PHtQRjGTRuOs0qM' \
    --body '{"keys": ["NcBLBBKZw8Q4mMeZ", "dIBc3OQcJcxqUKgQ", "ZTD5Gw8DjkXH1V4B"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'fCH6Oc1YXR3TX5gE' \
    --namespace $AB_NAMESPACE \
    --userId 'AShhFiab6CDz8DuZ' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'btCuRQZJSRl2p8t4' \
    --namespace $AB_NAMESPACE \
    --userId 'tUgBroMLX8VLmoMJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'dL5S0HnfCUe4BHSJ' \
    --namespace $AB_NAMESPACE \
    --userId 'XOKSVz5pGlFrKraY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'lgMkiZNNlZm6aIMB' \
    --namespace $AB_NAMESPACE \
    --userId 'tcRTIPIM7hyfZpKx' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uxG4J2ILh6v6Ufdc' \
    --limit '0' \
    --offset '100' \
    --query 'Mg9LroOiCwMPrCyo' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KqaxM9FGZDYUaV5y' \
    --body '{"file_type": "di7NbNxLEODPyqeQ", "is_public": true, "key": "9WZOAGLPbUo4r3Wp", "set_by": "iGhSzFo44aIlHEvN"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'GGNsYQIfwq6u8b9L' \
    --namespace $AB_NAMESPACE \
    --userId 'PL6KIrwuoxvDx8tL' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'tdk3wdqlMIW6QWKO' \
    --namespace $AB_NAMESPACE \
    --userId 'GUIw1x9KVj7kXIzj' \
    --body '{"content_type": "nW3E5OyY79O8wlPa", "file_location": "YbisrAsToS9yr5uG"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'T6fNtG99xV3p3tCC' \
    --namespace $AB_NAMESPACE \
    --userId 'b54qjkol5MKO0m5j' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '2w0sz2Udj2RgcGs3' \
    --namespace $AB_NAMESPACE \
    --userId 'vZqN7K8Z1Q1WAp8P' \
    --body '{"is_public": false, "set_by": "ZoWhPLCzO7eRPoNO"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'Aksg6MISYuTeTYW3' \
    --namespace $AB_NAMESPACE \
    --userId 'RDAeU5ljJZl7vO6Q' \
    --body '{"file_type": "phxVWxozu2ApAeli"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '5RzhUnNdWtFZnQYL' \
    --namespace $AB_NAMESPACE \
    --userId 'SVwmUaFHScyzTDXh' \
    --responseBody 'false' \
    --body '{"updatedAt": "LNEY4OR87GqeFlXB", "value": {"osMXdsrSG9TJJ853": {}, "BKChsSvWQ67MmBZ5": {}, "ctGzsrYgIa1LzTyI": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'V0V8WlyORZa9nN9F' \
    --namespace $AB_NAMESPACE \
    --userId 'kXrOhjHjp4IId9nd' \
    --responseBody 'false' \
    --body '{"set_by": "sV7nlWRMnKlYHZsO", "updatedAt": "F8uyls5JrSc9vMA0", "value": {"StSe9lKqgd4DOcBb": {}, "zK29w3p1h9GWj0p6": {}, "TPoH3TSHJJLhBxpa": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'LII1sI3ijs8yB0eC' \
    --namespace $AB_NAMESPACE \
    --userId 'kG3qHIMkXBI6d8iB' \
    --responseBody 'true' \
    --body '{"set_by": "5ZdN2QloXEDExqBu", "updatedAt": "bv293Ljhr0XKUJXF", "value": {"E7Z4UEnrlWyz0pUl": {}, "oEo5sNQccEjBaWCx": {}, "Z7P5Mz2NPbIw5hH2": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'ca0TnK5ifB4U7WmT' \
    --limit '60' \
    --offset '85' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z6VsfPBRTZFXQ0m1' \
    --body '{"keys": ["DNSncO1Igt0s5xhf", "UB7jAp1R2EOQdsmC", "8sI3ZbUpBnA2bC7S"]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'r8QHAtOpystY2pW9' \
    --namespace $AB_NAMESPACE \
    --userId 'qOVYbvCRKuQtDp8j' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordHandlerV1' test.out

#- 48 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'sLsjGHwtmc9PyKyV' \
    --namespace $AB_NAMESPACE \
    --userId '9EiICcpKmbGPKBG7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordHandlerV1' test.out

#- 49 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'NqORlqfpHwpL5V9w' \
    --namespace $AB_NAMESPACE \
    --userId 'yQuTtLuC7PaOpQPQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerRecordHandlerV1' test.out

#- 50 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'nziNQMyrguvbUTQn' \
    --namespace $AB_NAMESPACE \
    --userId 'BGE9mOap3BmITRNm' \
    > test.out 2>&1
eval_tap $? 50 'AdminDeletePlayerRecordHandlerV1' test.out

#- 51 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'CAB9UibQ3vFHbOA8' \
    --namespace $AB_NAMESPACE \
    --userId 'QaW5YyTNOSsQaHxX' \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'xljMcln3QG7f1cRY' \
    --namespace $AB_NAMESPACE \
    --userId 'G7eyVSdY0ARmaUQe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'LGC820uEfIYcO6k6' \
    --namespace $AB_NAMESPACE \
    --userId 'nUcgJplzn4u6SMfz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 54 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'FJ4L7VIAXeC5GVzi' \
    --namespace $AB_NAMESPACE \
    --userId 'Xv6p84D3DJl27Hsd' \
    > test.out 2>&1
eval_tap $? 54 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 55 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'wh9KdnDjam3QTl9j' \
    --namespace $AB_NAMESPACE \
    --userId 'sJw7j8Nilk0ky4mw' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 56 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '12' \
    --query 'iz48G1sZOp0Z7CIV' \
    > test.out 2>&1
eval_tap $? 56 'ListGameBinaryRecordsV1' test.out

#- 57 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "wDUXCFKHXjCUtDwv", "key": "R0w09jyVvDAFyCkB"}' \
    > test.out 2>&1
eval_tap $? 57 'PostGameBinaryRecordV1' test.out

#- 58 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8rdHNr3EUdx63KDL", "14XaoMRbVpOa58fZ", "nZlxQpzoJ132qtSD"]}' \
    > test.out 2>&1
eval_tap $? 58 'BulkGetGameBinaryRecordV1' test.out

#- 59 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'tlpj9dtMdaFSbT40' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 59 'GetGameBinaryRecordV1' test.out

#- 60 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'QyEXDk2f4wfDTNPt' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "OiF55cJBwqUu4b6s", "file_location": "8AKAjyz3sKrzIash"}' \
    > test.out 2>&1
eval_tap $? 60 'PutGameBinaryRecordV1' test.out

#- 61 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'KFVLlwfEk7cJ9uGC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 61 'DeleteGameBinaryRecordV1' test.out

#- 62 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'Qi3auuB9efpwDRtX' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "EoLHq75u0YnFgX50"}' \
    > test.out 2>&1
eval_tap $? 62 'PostGameBinaryPresignedURLV1' test.out

#- 63 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'SsYYdcTih44eA6gz' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "cdrCvBtnBlTNlksl", "value": {"XCtYSmRBj2m41oCA": {}, "kUjYnU8aRJpMO9vn": {}, "zu5u35CHopIGYMZJ": {}}}' \
    > test.out 2>&1
eval_tap $? 63 'PutGameRecordConcurrentHandlerV1' test.out

#- 64 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8uAIqnJ6serYXqEg", "YhGns9pqWenGa39y", "i5c5xJma2QzwsgTf"]}' \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordsBulk' test.out

#- 65 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'SA5wmsjfhk9oy9rI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordHandlerV1' test.out

#- 66 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'UjcZ4g75FOZqZu5B' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PutGameRecordHandlerV1' test.out

#- 67 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'NhDyJzYoG48R76LM' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PostGameRecordHandlerV1' test.out

#- 68 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'u07Wh58tjBVLNQWo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'DeleteGameRecordHandlerV1' test.out

#- 69 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'ICldgLKtSlma7f1I' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["t2rGJe6UpA50wsIH", "phSzLfxLCznnGRhJ", "aQHmgXQ2bdmcVEkp"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 70 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '1ETeIAyWx2smUdlZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["aQcK42kUAFwY4NoR", "3qzvLgl4CtwNNWNn", "kSgygY1ztoO0ZXLM"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 71 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '89' \
    --query '3O4SAsqFTM3lfeKy' \
    > test.out 2>&1
eval_tap $? 71 'ListMyBinaryRecordsV1' test.out

#- 72 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["mu2xsENJ3N7H8CB8", "EQjvBZgJVB31ZITW", "vLabNGn0NTFNmIPl"]}' \
    > test.out 2>&1
eval_tap $? 72 'BulkGetMyBinaryRecordV1' test.out

#- 73 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '89' \
    > test.out 2>&1
eval_tap $? 73 'RetrievePlayerRecords' test.out

#- 74 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["s474YoPU3kuJlg2o", "XgBIsXVV1jiEhYzq", "Qd6jYZ0GZG5Fti74"]}' \
    > test.out 2>&1
eval_tap $? 74 'GetPlayerRecordsBulkHandlerV1' test.out

#- 75 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'usP1r0DRB4TS5jPH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 76 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vWjxW3yO9v0fOVxk' \
    --body '{"file_type": "DOukbmOoDy2LNSKy", "is_public": true, "key": "3mocBH0qHWVzH1k5"}' \
    > test.out 2>&1
eval_tap $? 76 'PostPlayerBinaryRecordV1' test.out

#- 77 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z6lcvxkmo5g0oEJv' \
    --limit '43' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 77 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qARiHgt2i8gNNugo' \
    --body '{"keys": ["ptu9nAV2qT5FlG1y", "iApmo3nJI56EFcyE", "H3XkPpxfCkQmqVA8"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'Gy9WYzvDPDSfaios' \
    --namespace $AB_NAMESPACE \
    --userId '4LgkUIaSsfzBE5Ny' \
    > test.out 2>&1
eval_tap $? 79 'GetPlayerBinaryRecordV1' test.out

#- 80 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'J1o4WHgFXrtCULYM' \
    --namespace $AB_NAMESPACE \
    --userId 'jvBE2Dw0U81qLfI8' \
    --body '{"content_type": "jQijLZzDR8XYCp9i", "file_location": "pdz5z9KANB9BuJNg"}' \
    > test.out 2>&1
eval_tap $? 80 'PutPlayerBinaryRecordV1' test.out

#- 81 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'mO7U16CrDWwYPFvC' \
    --namespace $AB_NAMESPACE \
    --userId '0JPwGX3nW2e73CZY' \
    > test.out 2>&1
eval_tap $? 81 'DeletePlayerBinaryRecordV1' test.out

#- 82 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key '10weXdHyQSlaNEd2' \
    --namespace $AB_NAMESPACE \
    --userId 'cKlUGQacjxmMakIV' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 82 'PutPlayerBinaryRecorMetadataV1' test.out

#- 83 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'NhUdn4YfgK9Qo4tv' \
    --namespace $AB_NAMESPACE \
    --userId 'GTXRwUqmlPadSkhV' \
    --body '{"file_type": "Nq4mdX8l23ze1TwD"}' \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryPresignedURLV1' test.out

#- 84 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'iZM5pWpTz7ZcQGUA' \
    --namespace $AB_NAMESPACE \
    --userId '75gg78u7H4sTBOJd' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerPublicBinaryRecordsV1' test.out

#- 85 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'GWl20JV4H7r9dtMk' \
    --namespace $AB_NAMESPACE \
    --userId 'CWW8njYSZwbLGmGe' \
    --responseBody 'false' \
    --body '{"updatedAt": "1wbi95JrhpHAIxwY", "value": {"NWg1aGUcz3Lb9Caj": {}, "fo7xYAHn0ridNME2": {}, "a3lmDNkKtnzhQqkz": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 86 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'FXkgdVoJivGogGLh' \
    --namespace $AB_NAMESPACE \
    --userId '0fix9WR7YzSF664U' \
    --responseBody 'false' \
    --body '{"updatedAt": "pAMC1Dn2I66CQe3a", "value": {"t0AK8aJ43ZLVpfJE": {}, "9FDQY32vo9PeqOXr": {}, "atYLLFdhsM6hBotN": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LdkLlyG5cCE2N2Ye' \
    --limit '95' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EsmyMuE4SU4rCaLA' \
    --body '{"keys": ["reooLFfdOlC4Q4lw", "KcDJYoyy3TraRLfm", "lF6o0zabRxl0kafa"]}' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 89 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'WJVTprWO90K9Ym50' \
    --namespace $AB_NAMESPACE \
    --userId 'dwPxshgAVpjgzaMQ' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerRecordHandlerV1' test.out

#- 90 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'nBe0GlXbHYbl44Jm' \
    --namespace $AB_NAMESPACE \
    --userId 'JQjxozn9Rf4CQA8e' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerRecordHandlerV1' test.out

#- 91 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'sPcBzNDr4u0Woux6' \
    --namespace $AB_NAMESPACE \
    --userId 'XpGuoBpD6V1vs14A' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PostPlayerRecordHandlerV1' test.out

#- 92 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'nPPtAaqdKDgEJzY3' \
    --namespace $AB_NAMESPACE \
    --userId 'wr2tvl36rg3KcVSD' \
    > test.out 2>&1
eval_tap $? 92 'DeletePlayerRecordHandlerV1' test.out

#- 93 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '1KFQMLZD3QGG1N4i' \
    --namespace $AB_NAMESPACE \
    --userId 'cR0yW3laDZg2tvEN' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicRecordHandlerV1' test.out

#- 94 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'DsIYUUq5s25W1lLI' \
    --namespace $AB_NAMESPACE \
    --userId 'a4RZPIRVj1tt3WTv' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerPublicRecordHandlerV1' test.out

#- 95 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'iKWcN8R710MjiiJA' \
    --namespace $AB_NAMESPACE \
    --userId 'V4TDg1qAi2yG0ql4' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE