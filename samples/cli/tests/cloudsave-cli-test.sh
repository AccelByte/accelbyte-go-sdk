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
echo "1..96"

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
    --limit '39' \
    --offset '26' \
    --query 'PwFqRV3fg8KfMeRz' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["nZPnJaiyg2lD2LS4", "NmUrA8NnOOiNWP5h", "djodriV5XUi3oYmU"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'g1M20M70EXS2MMQZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'Tj7eqKL7lN0QP2yC' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'WFwKuI4obXgmMIzN' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'ruGJZHHmAu7Gl0CA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '27' \
    --query 'n02beDaRVwFd8Yb3' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "romzjTmSchW1Fn4h", "key": "YNjgG6PkfPjgW339", "set_by": "HC6Ts9Q9YSaH7080"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'GhCN2q64R9cqDYAG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'hjW6LLNoPZbWFkXW' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "dFq3Wx7hyGBA3AON", "file_location": "5GZQA8139kWSCsll"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'elQcpeksjbw6LTrN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '9XZO0mA47SKM49nI' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "JsMaHZUc4cj4LEci"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'X516xy8tdl3VZUlT' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "rX45yGMJEK9Prz7U"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'aYQmKbn5gV6nETae' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "AOubEmLMRQBtuOPQ", "value": {"wGvM6FcBbGg44OOz": {}, "0p0bNMkbymenskc8": {}, "VEfJx0muWP6N1O64": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'rGosRAVUfw67LEDH' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "OopKzQQtaYo4Yud3", "updatedAt": "lJTptxlr7mXoo0oy", "value": {"G7LnZd2pfJYEaqWt": {}, "QI0TPOvT0gYRc9RY": {}, "I63tHmIQiXRtXmSd": {}}}' \
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
    --body '{"appConfig": {"appName": "iphPw8rw4AUbDEqV"}, "customConfig": {"GRPCAddress": "lBmAI6GRTt41bLLf"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "B6OKofvOw5IW6vtH"}, "customConfig": {"GRPCAddress": "VMCPOsATrzJMOmOF"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'bBJf5sIQ4zFZS2vN' \
    --limit '19' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '9medM1xVtctSSHGi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'sBoYuwD2qsY7uHOv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'uTQT2YHkGdMpM0q8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'jXjqyudiTIABiCKX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'LqT3iRfwJw3dZB01' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GKrziXNN7swskhkO", "uJPiN1vZdltwJOhV", "MtAdgVS950m5ChZx"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["68Hr0dPyWqnDOdl7", "WEPZB6kYGVLDjrFS", "vXfzmXmJystLuw0B"], "user_id": "5GeSNQo6flMnyTl3"}, {"keys": ["Gd0OARXt3HW0yJgj", "ruv1y97tT4bJ7nif", "dIa5lXetC9LJY4X9"], "user_id": "79cQyfqa3N5axBBw"}, {"keys": ["MHG4fC0qUCewORaA", "HkC18QPPF345rb1z", "GkizW3qkGEjyIeMP"], "user_id": "ZMz0eU5VHmI8lSyU"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yLQKBK4evA0W8Fta' \
    --limit '81' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZcmTgPxoGaTjpAfH' \
    --body '{"keys": ["MsNlO4DkmgUk6nS3", "2Au0Jn56IUsucyEj", "ltbsPirJnc2rYwbf"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'A3NoLqEKhwTq7oAN' \
    --namespace $AB_NAMESPACE \
    --userId '1v8Pd9hZNAZr1POA' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key '4bj0La38IK93Mr8u' \
    --namespace $AB_NAMESPACE \
    --userId 'Y2VfnzB5O4VX6Sg7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'Y24bYdq2Y3OxOhGn' \
    --namespace $AB_NAMESPACE \
    --userId 'vK3WOOXnzBmbeScy' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'SMlKKiT5fjtbBRPs' \
    --namespace $AB_NAMESPACE \
    --userId '865b65fSdnAiBCGw' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '29QgcDc3LnPDdwtU' \
    --limit '39' \
    --offset '56' \
    --query 'kMC1AIlL0fkMvzem' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XjR5AQEtPVx9IkRi' \
    --body '{"file_type": "arGdrGXFuouhHV7g", "is_public": false, "key": "Ef1MkxwsnWXznhtV", "set_by": "e9vMTnhoyjC9vcke"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'QE9X1FCDspaD5Nc1' \
    --namespace $AB_NAMESPACE \
    --userId 'EslFeh0CVLRos3M2' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '0RUo52WBQvsVujBC' \
    --namespace $AB_NAMESPACE \
    --userId 'dsIHjdrTPpqhAOIf' \
    --body '{"content_type": "A0D2TTXRPMNDcifM", "file_location": "rOdy1VANJt1o8aR0"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'eB5wOV3F2lpjxIfq' \
    --namespace $AB_NAMESPACE \
    --userId '48l63g1O3Li0iBup' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'XBfJVePHVCRy3i8Q' \
    --namespace $AB_NAMESPACE \
    --userId 'V8nf096hLcecZlzy' \
    --body '{"is_public": false, "set_by": "DI6VAROezZ1RGMZ3"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'nWksIYUlhD1n37oE' \
    --namespace $AB_NAMESPACE \
    --userId '1YOQA2yqv5tJ4cXW' \
    --body '{"file_type": "J7ytIFeSOCVknIrO"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'ipiPmjv3enSS6FRq' \
    --namespace $AB_NAMESPACE \
    --userId 'A1HkJiFKJRUW6YRA' \
    --responseBody 'true' \
    --body '{"updatedAt": "boRuWRrTkC9ycP6L", "value": {"gnUbUiSNeBfllPim": {}, "ONN3BPQw007o6Rb3": {}, "FDQ5s3VBUFpGDsq4": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'ANn47ldtn97Szvuc' \
    --namespace $AB_NAMESPACE \
    --userId 'yPJZrC6Sn8j1XmJ6' \
    --responseBody 'false' \
    --body '{"set_by": "viYDopWmuJL8SiiY", "updatedAt": "U93SQrSGOMmfHuUY", "value": {"20jibvYvv63BJCgz": {}, "2skiKdSaVGXy6Ayj": {}, "0gnj9Z4RUZnDGWod": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'sIpcVhBry0YcCbkn' \
    --namespace $AB_NAMESPACE \
    --userId 'bWwELaNrf7DJUEIP' \
    --responseBody 'false' \
    --body '{"set_by": "51CEubxMSwQTQdYQ", "updatedAt": "fc7pGgX9Sl75QzBt", "value": {"VaYxGp5O4ZVhtaw7": {}, "WE9B8xwjIHdwA06d": {}, "m1HpvxkohX21KcFX": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'pDyU5Pass28Gk8kX' \
    --limit '65' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'S385cc8ZHZ4CqHvB' \
    --body '{"data": [{"key": "YYfggjq4yaytmjhv", "value": {"NAW1uLD2kbfOPV56": {}, "Em9mIHNguOAu4XQE": {}, "XKdjXZWTZ1R2kTUQ": {}}}, {"key": "zItwKKZm3YjM6Qm8", "value": {"WoD9slSmb15FEUqH": {}, "iUtXFMqBz91gjxoM": {}, "eOsQed8MS2voF6JC": {}}}, {"key": "snDIbTimjSLaQdVG", "value": {"QjycyNDlMZoLIX8E": {}, "lWhfGBsJ6if1xnoX": {}, "6xfrStzcS9YyKidH": {}}}]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rFPESWgDVUmXP2lI' \
    --body '{"keys": ["BRVBcNxiD5pEPI2i", "pJS3zJSuEkoEjcuR", "x9kGdPUXTPdaU855"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'ZXqD7GnuFn8CxoI8' \
    --namespace $AB_NAMESPACE \
    --userId 'DJpsh9GNanfIFXRC' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'K3j5LR1BW9RUrDNl' \
    --namespace $AB_NAMESPACE \
    --userId 'TZqBWTTjbEel0s8b' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '2pgWUPOPzxLUgSeF' \
    --namespace $AB_NAMESPACE \
    --userId 'XAd7YuD2u0gEtkU3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'guxlPjeUapJKzDuW' \
    --namespace $AB_NAMESPACE \
    --userId 'goHvdOOpNw9q8pKX' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'yQczMtKjkCwbS2pF' \
    --namespace $AB_NAMESPACE \
    --userId 'tT6kxyitofM28Zpn' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'zewXzBxKWQOkUd0h' \
    --namespace $AB_NAMESPACE \
    --userId 'QdbdoHgNiesAO1TL' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '6ytr7M1U4h2L7ftw' \
    --namespace $AB_NAMESPACE \
    --userId 'W16sfR78AwJlchYA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key '0okBxER8gbNUGDHi' \
    --namespace $AB_NAMESPACE \
    --userId 'uKKErdVsUUBVxBmg' \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'Skrp1C68nrNKfeDC' \
    --namespace $AB_NAMESPACE \
    --userId 'GLdbrA26Qn3aDAVe' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 57 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '6' \
    --query 'H7pElCGr84aaTRez' \
    > test.out 2>&1
eval_tap $? 57 'ListGameBinaryRecordsV1' test.out

#- 58 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "VDrtwEzAKLRnNACM", "key": "HMa6O4f7OfbsjHWQ"}' \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["X0JxMu6I2AONFGCH", "DU2LkYqtKZzAic0I", "R6w1tPZlGS07mdBS"]}' \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'NAcjJH1s8u1yTjco' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '1q03cfHr8c1N2BE7' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "F6CxZJ4Om5oUmtbE", "file_location": "qXzNNR3r28QeGJWV"}' \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'LTZFpGxXKziJ5bA2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'uUGIcv3KuSh9Mpdc' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "7GpmpiDIr9OtxPxK"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'cTwkjwHFVjlgBxqT' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "4QzzXL5N7q19sZJv", "value": {"5nr5UY1NppBzePQg": {}, "W9ZeqqNeJRJDzKfG": {}, "sGOHt0akDQlbtLWl": {}}}' \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["vHNg5egmPUVd0P1u", "xYDiNnAvDJhZd29c", "oXjSh16Vm1A4emaO"]}' \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '0GMLHNJpMOGwELA8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'ZqYOnskblVL0UwpQ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'FZ6GW71qdaxLHlPG' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'I8t59ENX3gzXwwZv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'gi0O59uy6hvFt8nB' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IR9VsWISpFkPxW0E", "mn6vKVzhea3JQTJr", "kHF9EhA8JHn2x0k9"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'CapK08HAj4ZryhaK' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["gZx1ctbr41gTfJh6", "pn9Psr0KSXyCIv80", "XEsjIZVo0lNDfUgR"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 72 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '15' \
    --query 'RRCVrSpqXuVpxugC' \
    > test.out 2>&1
eval_tap $? 72 'ListMyBinaryRecordsV1' test.out

#- 73 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["nc2AHvaXgkd50Huy", "OGkwiyWVU0E2r5yu", "JBuFs9jrL183D68S"]}' \
    > test.out 2>&1
eval_tap $? 73 'BulkGetMyBinaryRecordV1' test.out

#- 74 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '28' \
    > test.out 2>&1
eval_tap $? 74 'RetrievePlayerRecords' test.out

#- 75 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7YlPxZVQSAD7miG2", "Jbx8Zbmzt7jGBqh2", "W3ZVlInw18pi5U1G"]}' \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'iruve6jDSl6vbGQb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'k5iOLfUQxar9BcXv' \
    --body '{"file_type": "hZQOs6rFbsiBDeMD", "is_public": true, "key": "dzeinuXFLT3QQJIJ"}' \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ggNfgc4Vxvsb5L6C' \
    --limit '78' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'h8nibVHSUra3XaM1' \
    --body '{"keys": ["IwEnpaW6B1EkM0NX", "HcMQ9G5fheZJUAdq", "kgyC4COtvoTuJBMN"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'CjYmLCZmx7VjQ7Qw' \
    --namespace $AB_NAMESPACE \
    --userId 'lYiP3i5hWG4oYH28' \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'lyMeFPNLynQW9Z4e' \
    --namespace $AB_NAMESPACE \
    --userId 'JcjuiDOptAYnkT3R' \
    --body '{"content_type": "W6rCZfy1UD6YpoVt", "file_location": "v2sQMVUSCu1POned"}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'qiShqsv035enim6X' \
    --namespace $AB_NAMESPACE \
    --userId 'I22plRsDV0wPNeGn' \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'TeIO4AuJ1PQXYtFz' \
    --namespace $AB_NAMESPACE \
    --userId 'y8tuaKY4pU7lEPC8' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '9xk91K8T6tA6R39E' \
    --namespace $AB_NAMESPACE \
    --userId 'AZDqq1TsHhFAlwNG' \
    --body '{"file_type": "Na8Bo1plx2wR7brp"}' \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'eE0prdADllVeKwVM' \
    --namespace $AB_NAMESPACE \
    --userId 'm1efTEtrsbWSZh7D' \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '2qqfgBe6CP1cF6lK' \
    --namespace $AB_NAMESPACE \
    --userId 'tMzLcsHzQ8tekSyc' \
    --responseBody 'false' \
    --body '{"updatedAt": "b3tgvJwV0F6EpqGJ", "value": {"BaXygTcTmWiPKcxi": {}, "KFsGtIkdRbfV7bXv": {}, "o8cuQaid3fYQzXbJ": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'xzGPEoyff6O64qxO' \
    --namespace $AB_NAMESPACE \
    --userId 'yRculzZTco9WFGPv' \
    --responseBody 'false' \
    --body '{"updatedAt": "kXHxbFj6wAUWM2Kp", "value": {"9Js2liZaIgk2xuu2": {}, "u23e8kACZo8GkVY3": {}, "hsp5dT4NH3SGta3v": {}}}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '684p0RcRCiq8g2j2' \
    --limit '57' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '5ImEKIyrRJ5UIM45' \
    --body '{"keys": ["8k4kGmfOZb20Bj0v", "96OJJBOfumm4FfeS", "EpvLzqFIibV8UZbg"]}' \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Gp6pwTRhghue59p2' \
    --namespace $AB_NAMESPACE \
    --userId 'wocEci3YQEk5fUMT' \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '3xTjk91kMigtv32c' \
    --namespace $AB_NAMESPACE \
    --userId 'DnQ4R3qhpDjJnSvj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 't4LW3JMo3iQB1SBA' \
    --namespace $AB_NAMESPACE \
    --userId '4yCmOoafp5tCTtWI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'KdJ386v4mq8xwyt3' \
    --namespace $AB_NAMESPACE \
    --userId 'awO2AaYSeqIZmedH' \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '62oZQGVVlwscc2GS' \
    --namespace $AB_NAMESPACE \
    --userId 'eywJTOAsS6CThlHr' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'aTTTZOhvZvqFiqwP' \
    --namespace $AB_NAMESPACE \
    --userId 'sGP93hNCQolyElqi' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'rELjrA4AsAg0iMZ6' \
    --namespace $AB_NAMESPACE \
    --userId '09l11tp5tLJX5EH2' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE