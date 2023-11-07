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
echo "1..94"

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
    --limit '30' \
    --offset '98' \
    --query '5mYKKAek8RtLTJ5b' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["I89fasnKGZnLxGpL", "7dSr8Eujjron91oi", "W6DQ9PUgHzvqrV0e"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'PCnY5SR5rXBaUJ4C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'v1hlng3davvedzNi' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '2vnLnysyMsWr7TFc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'BGNfolizkKKU3uiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '50' \
    --query 'QiGi7cviq6TIDS4x' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "abgWhXdhvSh2jcKY", "key": "JhWkIzfTvGsVgbEa", "set_by": "h1G43C5OAOmxNqYt"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'v8X3T6cQEOEPWYqj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'q7DEfmTGDcqSHqlp' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "GHol2c2iPYdGIoYq", "file_location": "8Jjl37cIviI2fIMk"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'JQZch1H9m7utM392' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'Mtr4vpmvf4NkRFYN' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "Goj58mUf4qlAPesb"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'uISWg0FvSNp4Epdt' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "Bd0IT3eieyK5v5Fb"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'uh99SX6SMGxRu2fs' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "LO6VN5MCG0X4fM6O", "value": {"GO7od7CsQu9HaSPu": {}, "Hixi34SikIB8xLNl": {}, "o0NmXbO9pzYXTFPj": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'Irl0SA1AbQWcXH9H' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "ukX4hr54NOuIrLll", "updatedAt": "cNKMsqNEAsKKOnEl", "value": {"0B0YxHvvDhHaj4vj": {}, "aaIPcKZA9YXxS98u": {}, "5yxstUk4hnU9qknE": {}}}' \
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
    --body '{"appConfig": {"appName": "QsQlG5W4B2x4FHl8"}, "customConfig": {"GRPCAddress": "4YeVchgQ9iPpZFst"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "vc1dmwoPjwQkF5Qn"}, "customConfig": {"GRPCAddress": "cO3ziVkytocX26jk"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'DcWM433IYO3FBGMh' \
    --limit '77' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'Y7hoO5NHZmVKcvUU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'y6mWF33arRI7gJa4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'f5n7wmbmGJ1mDp9x' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'rSY6ROBHp5UnyZCP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'FVQ1tkx4tPzFxWFR' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["16uSNCRaP8Mcxwcf", "ClYiSg0QAGqtnSPQ", "z6BC6a2zkcSdbibr"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["TpJ2bvzw7jOTFAV4", "vZ28jbHWM19oYAPE", "1pT8VSE1ItV0mVpF"], "user_id": "8zN03zM8YngeUe5x"}, {"keys": ["YmFabgqF6GqKiSn6", "ioXvEYWNRH8gb1q3", "RJtiQgHXRBhczuWn"], "user_id": "QehpeZcVbKdV53eA"}, {"keys": ["Uvuh5jZC9QSZajn4", "C0J82FTxZKaPtwZe", "tpIxxgyXfNvZfiqg"], "user_id": "GTIAv2cCtmNfd8Ya"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nt9KstabJesgqxWV' \
    --limit '9' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'w1p8UoZuwBe6UCOJ' \
    --body '{"keys": ["ibn318CqEwwB2ibt", "nXsZePo0PHl88Nth", "xOVbKX7iKf84Mrxd"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '2e2pWlACimj9UjnR' \
    --namespace $AB_NAMESPACE \
    --userId 'SEXi7Q9IJZTIDjLY' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'viqB459O5MvRgG2S' \
    --namespace $AB_NAMESPACE \
    --userId 'JY0FayySQHXpbyxw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'Dv86a8qXl9wMKStc' \
    --namespace $AB_NAMESPACE \
    --userId 'wXxsqmr1E0bXjmBS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'JrUlYJZysc6mK7Ic' \
    --namespace $AB_NAMESPACE \
    --userId 'MCn7ykrpQ5oS9VBW' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Q08VIMAqrizntKtT' \
    --limit '89' \
    --offset '95' \
    --query 'kl9JCdJx08ox4TgO' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '2LvFdkAKbS3JP7t1' \
    --body '{"file_type": "zb0ka4GRH4P9FtV5", "is_public": false, "key": "EI7TP1AKmta7uBFj", "set_by": "v3f3RSXNQXtIdw3Y"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'Q1I8zlWrJ7yhh5uo' \
    --namespace $AB_NAMESPACE \
    --userId 'jtVnfQ0vDGCLYB6C' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'Nny3UVwyuIhGcryJ' \
    --namespace $AB_NAMESPACE \
    --userId 'XPWDAF9Jn74kFBzT' \
    --body '{"content_type": "JmHjf8CjwkScVREn", "file_location": "u2ewZQeb4bQNMCmG"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'NNtqT1gjeQFjtgdo' \
    --namespace $AB_NAMESPACE \
    --userId 'nJCQpvFXQFJUYq55' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'KIhWqcpxtAITjbt9' \
    --namespace $AB_NAMESPACE \
    --userId 'VcnydfeRhSB0pDrM' \
    --body '{"is_public": false, "set_by": "mRfcmgyJwdhrhCAl"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'dPqJBnER3OL5JTyx' \
    --namespace $AB_NAMESPACE \
    --userId 'jB2NrwqoOWS79lEi' \
    --body '{"file_type": "ty459Dae0xEsvFae"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '5yJAH8DpOWg9ZHaF' \
    --namespace $AB_NAMESPACE \
    --userId 'fnl6vXNvVvtXIg5k' \
    --body '{"updatedAt": "txZIdyF3sMN8SEer", "value": {"FM61fzfTaCOZF7u2": {}, "ctvbz5HA0lEi6XyH": {}, "R1WoF2vdrOdHbEaa": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'CzqeSPUqHZqrA48b' \
    --namespace $AB_NAMESPACE \
    --userId 'W8KnfKTuSIRAL8XR' \
    --body '{"set_by": "BR0Z0wO1uZXkjx7A", "updatedAt": "KdGHTIiF1XQivsRF", "value": {"FphxYV17loM0hrO3": {}, "puHxInhAtcfJydgX": {}, "tHRRSE2odf6OiEl9": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'zO3wU9GSKIIj5A8N' \
    --namespace $AB_NAMESPACE \
    --userId 'RMjiAAoXk446SnCu' \
    --body '{"set_by": "5oypEpOlgF8s3gmy", "updatedAt": "2tVq89rGooCJ4Svj", "value": {"PiAAjqorihqujAO0": {}, "aoGLGoIn81OwgoIX": {}, "A4i7adr1P7G2hU1S": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'dXnjCb75hMrh1jKn' \
    --limit '51' \
    --offset '81' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'CT0jUcuJno2PKEnG' \
    --namespace $AB_NAMESPACE \
    --userId 'wQNnkoHZwMSRFBSZ' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'XMku7AYo9fSz60Rz' \
    --namespace $AB_NAMESPACE \
    --userId '8enw8zTK0hXHUIa6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '0NsX9vQka1NQH3FI' \
    --namespace $AB_NAMESPACE \
    --userId 'pduMBzSo2ceunjkU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'gDo91ajDYOuw4H8g' \
    --namespace $AB_NAMESPACE \
    --userId 'dvY5wpM2DYKkYbkl' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'qQM3mnQIp8H0msrR' \
    --namespace $AB_NAMESPACE \
    --userId 'pYlmeqMbnRynRisk' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '1EAdj5FUkVowfiD6' \
    --namespace $AB_NAMESPACE \
    --userId 'xl55cn4DdG0wqA5w' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'ZXgW7LHwfl1wUZWu' \
    --namespace $AB_NAMESPACE \
    --userId 'kc8P1PNxymNGgHJ7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'gsHs6IqJ3y8rBhDu' \
    --namespace $AB_NAMESPACE \
    --userId 'GjTAiSUBSkOiKAV5' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'vYRWNrVlhoXNrwRH' \
    --namespace $AB_NAMESPACE \
    --userId 'ZX6f7hsS994Le5aV' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '38' \
    --query 'v4vLMjUaryjhucdq' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "3zNy7c315SoGDgdL", "key": "sXexdEDpVOeM3KDw"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["xUxx7l3ZGiGdRtpH", "VtDOWNhVrGZXTJay", "EmIP6AxjmPVxebMt"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'ceM26h4tCzhpoN7h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'BTLYCFoXN3SHkTCr' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "QN4KobzNtXcYdu1V", "file_location": "9HbEATiXmE9tinNW"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'xGCgs2YORKZItDiq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'DW0dUdvbhBISZuSX' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "AU1bWMHY5UajB0Kl"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'LTfP0x8sA8eB8tVP' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "RKoNC9U30dkkr9MY", "value": {"futobXpdKitynlVp": {}, "Rt6Ldndws9ovEeAB": {}, "m9UYoXaIKRRTcqyB": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Wf8qsVgJk9Jc52Rq", "SRdnNr73BBUaWPTg", "mURsm34ttSRsHNib"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'krAcgIEAsX8CgmCe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'aS996R9PBrBPYgmc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'gHCXjGQyhgZsag4f' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'MoUgUDBfo6a4tKcj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'MkqUBnX7iYOJJcpM' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["JWW6bXTbSP2nxZ93", "Yu1zTFKlw7w7mRKT", "JOodgqfb2s3aMvPN"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'TSM2mtmxMeSoU2u3' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["9nYUbAsI3JzT31Wd", "RUhJYeXrqFp6v1vT", "pG3YdsYDs9IXUqMd"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '55' \
    --query 'md5lv3vwCqmeIuwX' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ScxdpIh9VyNDOduL", "R5jcbKDj8QA7Rj9C", "jiUSWN8LkQPB9Kl8"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["h8CXjvlZZe2ihDmI", "5YnE1BN3E8FiwTLQ", "132b9GPnJAG0AGKe"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'K0h7J7QMEEBSzgrO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MkRpj4dhmVYUu8bG' \
    --body '{"file_type": "Uo3Y25QGvJhEymGD", "is_public": true, "key": "INJCn2Q0G7J84epx"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dBgQSXIUI7CJIoyV' \
    --limit '43' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GY2QGfCvyTPfRF6k' \
    --body '{"keys": ["4gH3fbb1uiCxrpa6", "yc7ATHBGPDVUTdfP", "NEotwKxyxpcjIAla"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'cuoePtM0hgUwcxUX' \
    --namespace $AB_NAMESPACE \
    --userId 'CwPYqVUhIKH2mk6B' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'Oa8OAZjF0kh59CXc' \
    --namespace $AB_NAMESPACE \
    --userId 'ZQgB66QjbS1TbX8Z' \
    --body '{"content_type": "dUsfqpLpwwVHeKOn", "file_location": "4yvmvDu4D1wmGzz7"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'tNwJCnWkfSZDqKVc' \
    --namespace $AB_NAMESPACE \
    --userId 'tXe8sN4yocTPKuGI' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'vi2gxkPg4lD66BCU' \
    --namespace $AB_NAMESPACE \
    --userId '5VHr3xum43NJYUUx' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'lRbhAP5GoBYxvVVR' \
    --namespace $AB_NAMESPACE \
    --userId 'tQbOf0VaA14tO7h9' \
    --body '{"file_type": "dd3q96uPPio6PDw4"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'CbAMQfbVynKD2ojI' \
    --namespace $AB_NAMESPACE \
    --userId 'Lg7nRFbDBEugJEOU' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'FuDC3bxfe3oHA3Qt' \
    --namespace $AB_NAMESPACE \
    --userId 'TBHEIUExzQHpqeoA' \
    --body '{"updatedAt": "OaxOjIqzM7N3SzRy", "value": {"WJHPos0oPWBk1xde": {}, "limm1NPwjnY9kgyK": {}, "g1kBk6u5FrxH9H1l": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'dAm0bJtIGqJuwPot' \
    --namespace $AB_NAMESPACE \
    --userId 'vDigMeWJDEs2PyV1' \
    --body '{"updatedAt": "wCkhSXMuZtIVDYXy", "value": {"CE6hpaS10PYArOT2": {}, "F8SY7LNvhyUf6xZG": {}, "dmSQ1RYegl2CmU5a": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zA91lDIQhkh2lUew' \
    --limit '32' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xzBOYKQIsTxp4j1z' \
    --body '{"keys": ["qJFVVauRBfW3Y9fn", "wJ58QpcRyTacQHGT", "TE57IhEccGv7LwWh"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'ZgQOJn8eZfjQpq9K' \
    --namespace $AB_NAMESPACE \
    --userId 'KsBWf0qd2LZGkJuX' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '0MGGDemHzSEFouq8' \
    --namespace $AB_NAMESPACE \
    --userId 'IMGhuqYl2SWeyCVz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'Tnz2N6twRm6pV5H6' \
    --namespace $AB_NAMESPACE \
    --userId 'q9bwGIlWVe3o6KN6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'u8fem1agJShQTgjB' \
    --namespace $AB_NAMESPACE \
    --userId 'uXZTWgo3QW9YIS7k' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'ji8Ujffc8rvZ3fbf' \
    --namespace $AB_NAMESPACE \
    --userId 'FrFsaWBYuh2qUoEg' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'd5rTWBlEZG4t1xc6' \
    --namespace $AB_NAMESPACE \
    --userId 'fOeWrrZrfPavAnnD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'mld9MPHiTZXWc4tr' \
    --namespace $AB_NAMESPACE \
    --userId 'cAG0FFHOznjSIxsR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE