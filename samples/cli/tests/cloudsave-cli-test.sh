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
    --limit '86' \
    --offset '1' \
    --query 'npZ0BFwi91DpH0Kv' \
    --tags '["TPicFLkJGfzqSkdp", "clvdmP0wlXl58jYJ", "3c0EqpkJxtsPUjTK"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["5o7riWCFKeRP61cC", "irhBGDku3SnuvSmA", "zEERcp4kHYLyzDjv"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'YKIjfu4C2rw6WwUf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'Qrsw7Ap1Whkvqc59' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'nJG2cjmz9UfC5527' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'g72Gjf0yZ3esH51e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '17' \
    --query 'u6k6AzeAzjbNYFPd' \
    --tags '["ylCo0m6SMxcSSoTF", "Ejiwkt9bVCriRCP6", "bfk89qJexHhiJoMT"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "QeFiYQTaQOUAPLOp", "key": "Y8KOE7DIIl0J7W47", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1975-02-10T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'hUH7oMOUoPfcb2Nd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'MrrT6MXAUIaF8O97' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "RUUIzrLr2Txh3fHz", "file_location": "6JcKUVVDoa0s2vMW"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'XrNYIbuuGcI7VDWB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'y7YKZGo7I7h6DoCn' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["ihF9N77uMxZCJvKS", "MMoeRxup7gkdtOzm", "dLbmYIOCL5qoADDd"], "ttl_config": {"action": "DELETE", "expires_at": "1995-04-29T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'HSZjNEdFUyn74bvT' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "fIiwuhTNeEMBerQq"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'OBZpsBpJijWvirtz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'qrZtdhTFPTWPdS3H' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["nsJnzAzh84cWe6IO", "51BFkq43FJw0Xgvv", "7c69EC9UZSE7GLHk"], "updatedAt": "t8ntVSpqJGcj5Jrn", "value": {"JySunuCwUGJ0DEFB": {}, "2ui3DCdEXwsX1I54": {}, "bDvcaSWgChu8EPIi": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'C073PcwIA5jbS1Fh' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["XanOWP1dODopDkuz", "OCnxO3PrMsmbTzNR", "3yLme7GBKxPpiZpn"], "ttl_config": {"action": "DELETE", "expires_at": "1974-09-30T00:00:00Z"}, "updatedAt": "40d3dqznqeJyqCAZ", "value": {"G9O32xXzueRPdBiw": {}, "ZtpGsGnXUreK5Wzr": {}, "0ckOrgnOhtQL950Z": {}}}' \
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
    --body '{"appConfig": {"appName": "1YGy05Mq9W38F37X"}, "customConfig": {"GRPCAddress": "lGsYDEbI5Ub78dWR"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "CrCGDcONMBOLedtc"}, "customConfig": {"GRPCAddress": "kAF0JBhbTzRxPSQC"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'iQzLCXXyz0vD954D' \
    --tags '["S7Lj73CtF4MOVypL", "VL2oKRM5GCLKvIk3", "R4YW3eWXnkAjIedI"]' \
    --limit '87' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '81ML1FYxWDs72XUf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'mCNuhJivhJZGeJtJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'zYnrf7FRhuOvaMti' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'wBQj0w3w45QMDZ7P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'pUPUmraqaepE4th0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '34' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "dUSpLf5V3IOozB71"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'G2dLC40MhG9RE66C' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '0GIvYyWx2Kkao6Z1' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MbekoAM9hy9VGIuO", "8NjOunBDcMGAftdW", "cmJHXLT5FsYxmu7D"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["zVeKrCNUuB5yDgMe", "uTgAkty0vZEzX4Rm", "uc44y7uicLIVmg59"], "user_id": "f90Xdqen8BPrUZp5"}, {"keys": ["VAMgfknyxoCvKpVm", "FWLMjxAQZyHCGeH9", "ENZ9UIisUcCyXOFj"], "user_id": "jjfSVz54PZcqvWVD"}, {"keys": ["OduhiNA575vPSuao", "TvQDCUJmWgPGHw2r", "IKvGL9RXSbbkUl0T"], "user_id": "ucoAieL4QaXT8YhZ"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '0yXw9xEcwbqbJmXW' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "rISwERc9cX9svzwO", "value": {"xX9MdvWa54JaOItz": {}, "iusGZYBnOuw5vGl2": {}, "zMeBLCejP0LJW1mS": {}}}, {"user_id": "ksiEIjVZlqUeG7vS", "value": {"DkiOyViISO1n8xQI": {}, "zqwq1mtROo0p37HM": {}, "ZEINTNcCZysZO0m4": {}}}, {"user_id": "i0wd94H9ZYFL8IyM", "value": {"VHn4FijoElpEDke3": {}, "zaR76iNFImmaeQ0G": {}, "PFfgIkhgZod5XCwj": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'shIjo0iHbSZEgtJN' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hNGQvADbZo0dMzp5", "UGKZLBh8i1q0GANc", "eawdy5YvtmRMf1YI"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QltEXcKCfRdqBvOW' \
    --limit '38' \
    --offset '81' \
    --query '1I8qZhQouGWDGObY' \
    --tags '["WO9w9GJpkjCzamSS", "TFdRgiSii2OfiPwW", "bChI6BNKENsOKfRE"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'W0AgRLvXIGufWpl5' \
    --body '{"keys": ["aiMtKWdeNiulgGvL", "xL97mPu1lJsFKQ28", "A9XPHqL6U3I1jByA"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'sgNaVYjGIBfmR2cN' \
    --namespace $AB_NAMESPACE \
    --userId 'zt0yScudhkRZ4HAf' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'mUu6fPQvK3l0HziB' \
    --namespace $AB_NAMESPACE \
    --userId 'izSvP6iNKt1TppLM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'v3LaIT1hPSxMG51O' \
    --namespace $AB_NAMESPACE \
    --userId 'nLbHfJSNrJLJXwPs' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'Lu8ct7p4LSHwoSF3' \
    --namespace $AB_NAMESPACE \
    --userId 'P0jD02oJ9WNiJ5EJ' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '0CKOB8FrOxqNBllz' \
    --limit '36' \
    --offset '54' \
    --query 'c8Z2hg9oJ2JnuJUy' \
    --tags '["OYn9UIPOwT8ms5gX", "3og2X3lyGwK0cOuK", "88RzGNziZ6M1YIpB"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '6gEhGtKbqrjM2Yc1' \
    --body '{"file_type": "DK3xsAeovqac2cgh", "is_public": true, "key": "Wm2FQembqiqUccAQ", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'j82HICYQfBfsbxzq' \
    --namespace $AB_NAMESPACE \
    --userId 'VrJNumUCJAAFfXC7' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'zesCBQqaR2sW9tAl' \
    --namespace $AB_NAMESPACE \
    --userId '2uiiZLwnTTgwur2d' \
    --body '{"content_type": "PTY5EDfwk1c3S6cN", "file_location": "AXw7ka4oxwqFhEE4"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'YcTbcsdw6pah8I2Q' \
    --namespace $AB_NAMESPACE \
    --userId '0xfFV1lsVWEVTsmt' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'dsYEPqYxEsTFE3CG' \
    --namespace $AB_NAMESPACE \
    --userId '2GR5kDtXwXVNESgz' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["Z65NdlMVvF5MZwZc", "hU9H32MPfSowYhBb", "1T7JokN47jZLxY1V"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'Pi8nGRAT17EQy9Fy' \
    --namespace $AB_NAMESPACE \
    --userId 'bJNDc8LHUEep8kq7' \
    --body '{"file_type": "VrNJ92Ju7ZlsU2ih"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'tDNWz8zUCFw06C8G' \
    --namespace $AB_NAMESPACE \
    --userId 'GuGEDJuKRDJro8hf' \
    --responseBody 'false' \
    --body '{"tags": ["NiadtpmiFxgpKDIi", "9ii4VRbhoGeUYcSh", "VX3MHQuPVz9TDn5d"], "updatedAt": "KNLSAeQS3ZeLMJp7", "value": {"ohGplqyqgV6YQ2FZ": {}, "oIN2af4ulwrheoeG": {}, "rODmwBeI1YnnP9WC": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'iZ3XEOQ1VeB4vETc' \
    --namespace $AB_NAMESPACE \
    --userId '8V1uGRcBiE8VD1l8' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["XKUp7D6IMtLrrv4l", "htQujGgyO4XaWVnm", "YeA2vcZ93P3a0anT"], "ttl_config": {"action": "DELETE", "expires_at": "1999-01-22T00:00:00Z"}, "updatedAt": "WNecdg7bUjLiOY8s", "value": {"k1exvzQJQAmsXTGq": {}, "Hm3y3gfVHANIkIDk": {}, "Z6uaA2HUdv6sISmg": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'lFzXLjPVQ8gPJ8U3' \
    --namespace $AB_NAMESPACE \
    --userId 'UFqKeCdtM30KJmrf' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["C6sgkhivzUQx0nK1", "WtaXPFw6S1IxWgee", "P6PUwjFREtImMS1B"], "ttl_config": {"action": "DELETE", "expires_at": "1975-12-29T00:00:00Z"}, "updatedAt": "xkshHJYRjTSxKMuz", "value": {"sHNGLDQs5Y22lQvY": {}, "pAJO2ypHd3TqZElX": {}, "d72cv7kmjGRJer3l": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'KgCxXS4wfrlMuMFS' \
    --limit '37' \
    --offset '60' \
    --query 'HGOpD9RES4wpPoC3' \
    --tags '["cVJg1Ax1COFQLPCG", "kkb2kriJr643PAr3", "k7t6mO0ZADNddw4m"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'onQijBy2dBvZipMA' \
    --body '{"data": [{"key": "NEtjO7nCy9IRRcx9", "value": {"Jfv9Krc1iPaU2z8d": {}, "wU6EP4O6KbuTOW29": {}, "EZQpY6rDCqvMsUaw": {}}}, {"key": "gFcX1oSJSxOoiH6t", "value": {"3gbDd2uAtVgLaJY5": {}, "x6ZRCybwBCnHtL0Q": {}, "xnVGrDy03utBK2sv": {}}}, {"key": "DSYCbhbXD4Ibouq7", "value": {"TIQdzszzJ0cHqJC6": {}, "bL6tMvZNM5bgo935": {}, "ex11YnK5lHd0UMLI": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SQvxFxOBDxa8TNUd' \
    --body '{"keys": ["n2Phx1ypUOEZ4RcN", "PweAzL6CxfR9sBPm", "KNjRqnsYnZbtxXFB"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '30plGth8tzuViaA2' \
    --namespace $AB_NAMESPACE \
    --userId 'GjXZu40qfB0i2Onl' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'JqcFxH2QNqTTOxw4' \
    --namespace $AB_NAMESPACE \
    --userId 'LPVL7Rho8W4V76KV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '9ZppWDiS6MJ8JLFJ' \
    --namespace $AB_NAMESPACE \
    --userId 'KJdeqI4r3jeanR6t' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'RDwYj27jltKsFYhI' \
    --namespace $AB_NAMESPACE \
    --userId 'lBl7jlWXHOczdI4z' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '215mbFwLHtzCxNhU' \
    --namespace $AB_NAMESPACE \
    --userId 'uTAZN7EeAnoIh1VS' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'yJO35fyldprWmJt1' \
    --namespace $AB_NAMESPACE \
    --userId 'alOKnydGYdtb1zAR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'uUp2eQuulHYYe7um' \
    --namespace $AB_NAMESPACE \
    --userId 'CZlzVNbIgADDaOus' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'QqnGNenYvAikqtiC' \
    --namespace $AB_NAMESPACE \
    --userId 'vG2bnIGnftrnSjq3' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'f65r9xVQu6VVNsGf' \
    --namespace $AB_NAMESPACE \
    --userId 'YqS6AUZG72xI06AB' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '4' \
    --query 'urjL2w9FYCpXPMNj' \
    --tags '["B5ADwGnsOM28UJud", "EiIAm9jKIXDRrjJD", "ihO0aVVKPXo00JC8"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "V6G9FUOnVVuNJIuh", "key": "xA9dzuAd9aCPYnED"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["hmk0FgUYrjH8foHp", "7g6ra6QQDVDw9UnZ", "cpWlMa3jyvt3Dhib"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'X2f5BIlCu2NUse20' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '0HuAg8XfHil6oXcz' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "U688OKulzx4yDqH8", "file_location": "syylDtlGIHAKUqiL"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'Ck8GotIbTYOfJWmb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'muokSEQS4kxKRiMw' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "F3cxyVQA1GRJQXaH"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'yDKGTdsLDKdd4im8' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "C2if0EquTSHt6lFU", "value": {"GcBTVgBXLS6Vr86W": {}, "5h5FPuq0Agw8cm7T": {}, "12hbFYZeTo0Pzvls": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["pabFl5yHA8IJNlpN", "AQkyAGqkACJm9ivt", "5url08ZSE4vc0GKv"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'IjlihvNTpMQ3BPaM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'OhjAzWW9RyA917Ei' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'tN8dd9IjTUBtRfCO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '6RWPp1j4UvQp3djx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '8gtnMbU61mwj4d1j' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IyB0ZTPPqtYb3jAb", "Y5M0oSz4KwlaEfNa", "IVyu13pxeMzjWEN5"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'y8dWbPprznqWcFmi' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RrPt3xQjOT9HeqLb", "tECeJ0Ex8q8DOan4", "bOyfsBH5EjbBAgem"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '11' \
    --query 'vqO6JVGh5ceTNNAj' \
    --tags '["BZ5BkW3UCFiAdhur", "IxGykJX41pqFnhpJ", "LUFkPsBcnDLK8utv"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["632BN8yXjCGi493q", "nCCtA5jFCnrtDbYU", "KVb2moGISCLzCWJn"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '84' \
    --tags '["jAjO4F5jz80repAo", "ZvyOugRPhi91Dcf2", "BrkzxJ3lVcLCQr9s"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["r8QCCQMWOVvvl6IS", "daE14IfXBOzwb4TO", "NAxYYf8xEvLOU3PL"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'nj4yrP6jzv0afA5r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OUUJGFmi2YeYdbHK' \
    --body '{"file_type": "j43MiEb0XnKFHowy", "is_public": false, "key": "Ai1Ugk3pzo4kurPf"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TRtAXdbb2yCXMbh4' \
    --limit '64' \
    --offset '80' \
    --tags '["GQwhpFQQrnnHKhHM", "VIvgKPm9Ksle74Pv", "vbBtmBySe2NHj7y9"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BeKDDAIxkr5eY51j' \
    --body '{"keys": ["sZSp7M4cNEHZ5Iqa", "4UsPlB5FQvyaQUeY", "jX3TbQqcbjcADeRT"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'MqOBKT3PX6CGCnQq' \
    --namespace $AB_NAMESPACE \
    --userId 'hQTlgBvJiE8SnIux' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key '0w9GuB0o1e2XelPT' \
    --namespace $AB_NAMESPACE \
    --userId 'DmMRDOso9mA5ghBK' \
    --body '{"content_type": "PQYUbF0l6xaoQXj0", "file_location": "emXeaRpteUim8DiZ"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'KP1OlpyAD0lyo9Tm' \
    --namespace $AB_NAMESPACE \
    --userId 'LCRXTCk8R7LvubhV' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Viyq4ajkZ0QcZHsn' \
    --namespace $AB_NAMESPACE \
    --userId 'HTuG7xiRMvz6obk7' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'D51r8yFPnuM0n2ax' \
    --namespace $AB_NAMESPACE \
    --userId 'Zqf2fp1Qar7Zx3ht' \
    --body '{"file_type": "V2IEpskiK8jFpCAs"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'dN0uKvTjHHTY9ayz' \
    --namespace $AB_NAMESPACE \
    --userId 'rXyWCCZpNIyoaI9e' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'CLoZNe1cgoZ55EMR' \
    --namespace $AB_NAMESPACE \
    --userId 'nBy34WBO4JggyCqW' \
    --responseBody 'true' \
    --body '{"updatedAt": "1iu2AACfLumrcE3G", "value": {"mCyE63YTGOGMaptR": {}, "izPfVsS49OMS57kv": {}, "LoaMTnLogT24O7t5": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'WXbCwIgzO5zr81o5' \
    --namespace $AB_NAMESPACE \
    --userId '57lAf9FcsLN2LsxI' \
    --responseBody 'false' \
    --body '{"updatedAt": "qTbLHcganiXzB2Bl", "value": {"RsorfCerbW7ha3EO": {}, "rLpK37do8evGhfeY": {}, "JdeGW1TEK3viNlJ2": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SJAA7s5UP3vY0dJE' \
    --limit '42' \
    --offset '11' \
    --tags '["5GEuMax6Opfd2cSq", "jo9OMLYLXCo6GzMh", "TrjjFyDFxiJ5g945"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SzHBBAIwrbFD6tB6' \
    --body '{"keys": ["PzzygPyIWS28IxCx", "ZxmneibYr6OCQFld", "jI5XmQX0xyIBWXH3"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'hUfZtA8so4Wagohv' \
    --namespace $AB_NAMESPACE \
    --userId 'dzswajXiHCI0t4uN' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'at8Gtb0Cx3XqVn4r' \
    --namespace $AB_NAMESPACE \
    --userId 's92OPYpvHvHGSxUJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'e9CYl14qmrGwmLuE' \
    --namespace $AB_NAMESPACE \
    --userId 'iGGMxdBUgYPHj71w' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'yTo9KFfkIU73ieIU' \
    --namespace $AB_NAMESPACE \
    --userId 'dlmSfmZAbo4hVzHz' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'nTUOgi19Iyj1RUhC' \
    --namespace $AB_NAMESPACE \
    --userId 'w6AxdSkxTr7Jjw6d' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'bW6JOxFTkvkgAYd2' \
    --namespace $AB_NAMESPACE \
    --userId 'YTFAexPjD1GGMU1v' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '425U4brtD1kU4CT5' \
    --namespace $AB_NAMESPACE \
    --userId '47NVmM7SPaQ4CxTe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE