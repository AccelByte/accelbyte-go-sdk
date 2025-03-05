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
echo "1..105"

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
    --limit '45' \
    --offset '61' \
    --query 'rHtlIPmCPzuHx8CM' \
    --tags '["jz3jRFajKa1RGW7D", "aRVcMNLzgfigU6ph", "3yNpgRZdlyaGigRj"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["vPbzlRz3fTRH6Q2D", "QSbQuQv8btJt4RTr", "nsXKXR4hdYkjz79V"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'VwovrDEniKxnXLgF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'MAiLscnqHoIzZiJ4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'NBHumSNh7OUxc3z1' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '69NyPOTyJVEWg9be' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'tM1GRqwBslzxGx2S' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '96' \
    --offset '80' \
    --query 'oUV7MpVwh80Aom0y' \
    --tags '["5U5OiiQnYfNPYxpK", "cDI0xI7j6QUuhkCM", "MhGf9buGvOslwsHz"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "PlLPJBSTSNw2nd6B", "key": "mdGKh4F6PlTgMl29", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1987-02-13T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'XUCyw9dORz0kKptP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'G0Aurkvpuuk4j8mq' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "lnAEzph0Gg3mjDkb", "file_location": "1qHwSbOhNKYEETh3"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'qJxh0VNa8CE3w5n0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '4f0gy3qkUwgf6wNF' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["sGXApT0b8KmuZDy2", "dkh948XwABAIYxX2", "L9rd9rcWnBf7weLe"], "ttl_config": {"action": "DELETE", "expires_at": "1993-03-28T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'jliZiItz735aNbQd' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "eo1he1qo1AKUMEF9"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '0h6SCPCSyxTxYC8k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'gk22p8le8M7OonOC' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["0AL0GCUOXK5OTWb5", "dK9vg6e2KiqJM42E", "RyglSwM2GFfZrCuX"], "ttl_config": {"action": "DELETE", "expires_at": "1972-06-19T00:00:00Z"}, "updatedAt": "1999-12-02T00:00:00Z", "value": {"1qDmoHeFvQwfD4YY": {}, "OsKxb7MhrHp5qRHu": {}, "LguE4QwCxpsiCnyE": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'pEZEl3daqVkr4LOh' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["wZHgoeVaC4kVXW4V", "eYim8g5A7g9wma1O", "BgRMmfxrQHYZHiaE"], "ttl_config": {"action": "DELETE", "expires_at": "1971-09-15T00:00:00Z"}, "updatedAt": "1996-01-23T00:00:00Z", "value": {"i7DRvye8inHeiWBH": {}, "b8aeu3NDzuBmXcQq": {}, "68cI1c63ovePal97": {}}}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 19 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetPluginConfig' test.out

#- 20 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "9SemZ1QKTm3PkMxx"}, "customConfig": {"GRPCAddress": "MT9PTR06SkEplvui"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePluginConfig' test.out

#- 21 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeletePluginConfig' test.out

#- 22 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "TSZXPYv9DJN9uRv8"}, "customConfig": {"GRPCAddress": "HEc0v71YIabj6lra"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'YMcMKE0cGaMVGzAb' \
    --tags '["Gt7JKKmE4BCJtZR9", "4gJ4E7KSPubx4DWY", "b6XzPvQkprF3D7yh"]' \
    --limit '8' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'jsiNikgPKGiRdSZ6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'ZlXc0qxFiPLCipLf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'mgG0Oypd4fDSs1EJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'cVn1L3Gfsd8S1ATn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'RkZIgnWNY52CylCo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "OO5x9wVjp4siHfXY"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'lArsEa7pe69zAq3c' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'xqDNIOUpXKnnBfVr' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ZAxCJoHU7yYY599G", "H6tHdmDwEKBkYSmA", "l0VPeXMynX7ye0iH"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["upGETTfj6p5qTBga", "c3Ka5RNA49Sp936M", "MrAgArKamXdOWm9w"], "user_id": "tAiNNOXI6bELtMLp"}, {"keys": ["3XpkmST3RGbMfOUD", "KDTUwPGu1Y60TMxE", "Ik01snYuNjR2q5qn"], "user_id": "S7Dzd02szyKB1L2N"}, {"keys": ["LGPzGS5rZ2uXR1Ke", "2S5CMuRCfr61f72C", "ycTLGBVA2TJq2KGe"], "user_id": "FHJsucPFTh0dcRSg"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '5JkZcybwVKjnMXkW' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "tBYMdiaJfLmdVuq0", "value": {"ua2JVdr6P2oUx9aG": {}, "F3gF3UWp1BPJ1w38": {}, "Di3xKk0buTaApgl7": {}}}, {"user_id": "786bsSdqTsaBJ0K7", "value": {"faTo8Qod60xnup7I": {}, "K4xgGeDmK7POoHwO": {}, "2li0QRFYm3iZOcJd": {}}}, {"user_id": "gZnzjp9pIwVmbm3y", "value": {"kMZwjNiykRvWSHRW": {}, "Vl3BYlRA18aMuX2s": {}, "KffL37D5VFJkbvuZ": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'D3hgklE4QFRk65mO' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vCguh5K6gd2KfxoP", "pZUu1F2D2djYByIr", "eAzuEDJUeRPWG8to"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'asMMG7G5AM3wD5bz' \
    --limit '47' \
    --offset '16' \
    --query 'kIwIigT1CzItbYNR' \
    --tags '["PvsOWZbZi93dsC6P", "bK1OH0ydJEiaDQ3r", "nZtSDbU25UTAzRi1"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'U7k8dErsEwilsg1H' \
    --body '{"keys": ["TZl6GuTtOIhS9Q62", "g7HVRv39YlNvkSkm", "pFB7q7taxPp7tV1k"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '4kvqmGPqcVmSkXET' \
    --namespace $AB_NAMESPACE \
    --userId 'IkvH2Xozlv2OFRbU' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'HHtEllebB1ZnWrkz' \
    --namespace $AB_NAMESPACE \
    --userId 'mfj1M23dbtqFG6SN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'YfgL7puyrxuMlxQG' \
    --namespace $AB_NAMESPACE \
    --userId 'qDKsniYjwwScPXAJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '5ct5i6AnBgzlGE1o' \
    --namespace $AB_NAMESPACE \
    --userId 'kuax3rWaIJ1PRsQK' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '1UA2lwPHH3EqBS9u' \
    --limit '39' \
    --offset '60' \
    --query '2isIKW7reij9w2O6' \
    --tags '["qTKW791TOl0CQ9Mp", "Jt01zAQ5TPboLdzc", "LE1cUKHQBCf3yIm6"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r3wv2XwH3CPKnz82' \
    --body '{"file_type": "FnlWIWdsjp6nghbh", "is_public": true, "key": "nVXIOnkcCDtzdC8L", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'UmrnfPh85MP6I6Yd' \
    --namespace $AB_NAMESPACE \
    --userId 'y1JrXM1OaZCivyBJ' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'n20TNoUmSjiuejL6' \
    --namespace $AB_NAMESPACE \
    --userId '78D61cb0Xlu92SO6' \
    --body '{"content_type": "ibcluzH49wNDPe5o", "file_location": "0Ypyi53M6OsEFvv9"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'cHHZAiKvPFuRlVAd' \
    --namespace $AB_NAMESPACE \
    --userId '7xIOR7VuMvC2z5fE' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'A8mVd7T7E0clZ2th' \
    --namespace $AB_NAMESPACE \
    --userId 'gstUns28tam2tNvC' \
    --body '{"is_public": true, "set_by": "CLIENT", "tags": ["IRF7hsyMXGkv1XIV", "X9AWvHF727QIr21m", "YcjovXXWeTImyDWW"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'BvoGVA6Z6Jpdgc0x' \
    --namespace $AB_NAMESPACE \
    --userId 'NHFQCrnbzV6gffNN' \
    --body '{"file_type": "M6cDtQJa3lhumjKp"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'q6GQvdJBJPjlSf7w' \
    --namespace $AB_NAMESPACE \
    --userId 'VSBxjs61HIvAuewR' \
    --responseBody 'true' \
    --body '{"tags": ["F1tzmMSZdPRAQf2I", "GLHfwUsxQ5kiKn10", "pyDPiTHTkBbJDlHn"], "updatedAt": "1979-06-29T00:00:00Z", "value": {"1Ovw2Rc6J2GbaqEO": {}, "dSFtSQ44wPAxy1Ui": {}, "RRpJzJPypcZvw3js": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 's4OBLMRhoBbke1AQ' \
    --namespace $AB_NAMESPACE \
    --userId 'E6hBQpTO9GJKKmHc' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["iWfoEoOxwQmCu8gO", "Gg4EyXyY3ttYcu0Y", "zsGHxaGfoAf2XQ7i"], "ttl_config": {"action": "DELETE", "expires_at": "1996-12-21T00:00:00Z"}, "updatedAt": "1995-03-30T00:00:00Z", "value": {"Ij4QzH3UjmBngSRr": {}, "OrB38GR7qpNm9jRC": {}, "f5z2952BoYdszB9H": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '55NEEVwZtAsO8UIz' \
    --namespace $AB_NAMESPACE \
    --userId 'J9ZKCqb9dKuqiKu8' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["wZS4QDh2VsxLmFvb", "B9y43DqwraWX58dL", "1PbvgkZEKyz5Vnpx"], "ttl_config": {"action": "DELETE", "expires_at": "1978-03-12T00:00:00Z"}, "updatedAt": "1983-06-28T00:00:00Z", "value": {"2gKUx7wWG8qIXjL6": {}, "6QS9GJA7RjkXGHon": {}, "lgCKO8pKj2cSo78e": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'mOYnJPMYp4hBDenP' \
    --limit '55' \
    --offset '42' \
    --query 'keqY3Knv1B0L1d9F' \
    --tags '["dYtiW8i6HhG4Sb27", "eeZOnAV2NgcppXVa", "3Hlw8SFhDfJ7DWWv"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rK8i44EZWdaRzAdw' \
    --body '{"data": [{"key": "DP09MipQnKy4IxA7", "value": {"aq0rWqqmzxapAN9c": {}, "1qEMop2pb99K6tyX": {}, "URGfPac7nvfIL3JC": {}}}, {"key": "ozMtVqDRMMjdpUP4", "value": {"LGyVReXk4kCNg1NM": {}, "u2RS5DjwuKCiN3no": {}, "0s2BO1kPS7JqqTEQ": {}}}, {"key": "XutStsb5kBJ5wtvC", "value": {"g1SWFz5eURYercsg": {}, "eJqj5JbntwvINrjx": {}, "RjEsXvA04l5iMHjt": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QoMw55QaiqMxnCie' \
    --body '{"keys": ["QhkeHfVJdN3FwNKx", "9pHCcfIA78LV56RO", "JgehS9qJWTvmQ1GH"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'y8KEzfJJY4WSL9Bq' \
    --namespace $AB_NAMESPACE \
    --userId '0xFa5ZxAtiDMmFjm' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'y3k8CvkJzAR4RqHr' \
    --namespace $AB_NAMESPACE \
    --userId 'Kg4EYC2HqKABL4tv' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '6VK0d1m7c3vwtZC7' \
    --namespace $AB_NAMESPACE \
    --userId 'AMrcGDUOxkUwfEqB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'q2S2V1HAtSkG8BjG' \
    --namespace $AB_NAMESPACE \
    --userId '5vPqQvBLmpVnPOaL' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '5oQ0fJ0SLH16bi3R' \
    --namespace $AB_NAMESPACE \
    --userId '2ahL1o3BQJJ5xpvC' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'Byw0VKjy6HZsVQ1A' \
    --namespace $AB_NAMESPACE \
    --userId 'DYjFsyuRFAcEXkk3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'UAjAI4Kq3u8CGfIp' \
    --namespace $AB_NAMESPACE \
    --userId 'XCel6AtJknAyAGBH' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'ZC72zOE6JsiPVb5W' \
    --namespace $AB_NAMESPACE \
    --userId '1IJzHgfYMMUbRJuk' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'oy93jl6xUA9TyWNX' \
    --namespace $AB_NAMESPACE \
    --userId 'K7CrHaHOSXb5ppWS' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '80' \
    --offset '13' \
    --query 'fQCnSmkJQ2DwirIl' \
    --tags '["5c0V7yHA8XEeA0eB", "rVbdhmNJW0be9Z4n", "bsmBLtFqyJ9kc0Ah"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "SXPiWqbMNnzzH24m", "key": "cgO7Q8S3rN8pFtAo"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["QVJY8lqZPvQFCve5", "BRj2bjPaO1VjzVen", "1rlGD3dTFD66kZ8m"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'ewfrahMRRAy5iSYu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'xvopeb9NmsVasI1B' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Duj6819P8cgqx6nT", "file_location": "VWuv5T0bxXjHnfFZ"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '2ZbFxuDupMHoNC6n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'Kj2jO6JnCADjeBuT' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "AVl1RmcBH2Bginnb"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'wG4PHmhKXdjeL6Sp' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1984-12-11T00:00:00Z", "value": {"AvISnFU2LU1pykwc": {}, "1wCQ4fy1jpviM8VM": {}, "efNHBVHHfhZxpXcw": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8hHGoeboYU8KDSdv", "dew446gFA4x5tgtr", "fpYggbiYG2kieQIU"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'UHq0bZlb3XsfUSw9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'xaBQS9Qn0WB7suNR' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'rckjBIBAgWoMcncD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'DRkteVY34BPEdObD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'Kd4WAGo6tJMLNnLj' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hh8F6aKg6WuApJDc", "nYr91jNfDepuwfmS", "sC1eCl9v8IGZfNPv"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'pl1GMTnir3iG9nhv' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GMMVPJdF0GuvZnWw", "rpeS5P2pkPyxhOWS", "PqM0zTwJ4H8Pal8d"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '27' \
    --query '5Yhxccpb6wXQgv8k' \
    --tags '["Tewji5qOGBaVylGW", "9pqnkAaBCjpZME28", "CYO7LRhHU59BVikE"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["b7NwUlhYhKtkmKEu", "8AFdYUCJ1UyAT8WZ", "gEvFzGv2S41BJCIN"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '6' \
    --tags '["PsrRm28T31svIIn0", "O3nhQ7P9oC84cu2w", "af1s9oFWpYekeNfA"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["pzcCk5VXK7V8emiZ", "qQFkZwy0iAnvEB1Q", "WeK7qClOQ8awOymX"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'wK6KEgvrVXdmuTuS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JxE1KguSUsYcBPpH' \
    --body '{"file_type": "2zsGG0VKQmVeWuD1", "is_public": true, "key": "lhjqc2sSXcgPRG1T"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FRWvuO7nDaSjEtzG' \
    --limit '79' \
    --offset '45' \
    --tags '["4NoELzlqgJqmuod5", "a6iNWSHLHg4gG1S4", "5TyPumL5cqHukIGh"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z85lQaIJy42YzMzk' \
    --body '{"keys": ["OlvgXqIJ8dMTU4Ur", "uWHJzIgQUtBlm0N0", "k9q0JltoWMuomVQM"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '4j17qQq75iwT75KB' \
    --namespace $AB_NAMESPACE \
    --userId 'duKss7r9WmmxLrvu' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'HN3vA2GYHHxEJxU1' \
    --namespace $AB_NAMESPACE \
    --userId 'J5wGnxtX7RoYIcEl' \
    --body '{"content_type": "ppDotCEmratVdXVZ", "file_location": "pPS4z5AtQAKYFUJ5"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'Q8MyKEuIbvtvuYng' \
    --namespace $AB_NAMESPACE \
    --userId 'gV5n81OkC2HIvuo3' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key '8riQAP7fEdjTA5z2' \
    --namespace $AB_NAMESPACE \
    --userId 'TfhlJbXP3RGyfeXU' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'm2Wpk5Q7WRGkYBVZ' \
    --namespace $AB_NAMESPACE \
    --userId '08k6e57kHTx5gTae' \
    --body '{"file_type": "pKSt5wAH60HLQ954"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '0WLpcRPqIKCojOvZ' \
    --namespace $AB_NAMESPACE \
    --userId '0RLSL4zc38lnfOqc' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'mpcr0fwGn1aVRuEv' \
    --namespace $AB_NAMESPACE \
    --userId 'J9V0Ug8NUwlrPaop' \
    --responseBody 'false' \
    --body '{"updatedAt": "1999-01-05T00:00:00Z", "value": {"pUKZQzc1E9Ki4dB7": {}, "l6Ua3zPbec5mSQj2": {}, "z3tlUOW1dd9F8FjW": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'NrrifjAbRggNPLg9' \
    --namespace $AB_NAMESPACE \
    --userId 'rKKhrjbefQTvpCpF' \
    --responseBody 'false' \
    --body '{"updatedAt": "1994-10-13T00:00:00Z", "value": {"rvHznIQXKEYOGwmO": {}, "PCPDvDJK3kkwirNr": {}, "dA6edJ0yhP2hN381": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8W5WiVhDFTvASDn' \
    --limit '14' \
    --offset '12' \
    --tags '["AvJRlR44jliMUQk2", "jyS9QOh1n75gkhdL", "l5L7F5kVVT8v1IZK"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '6TxqYy2P5Dxag5VP' \
    --body '{"keys": ["Pcf1Z7WhmlE1ZT5m", "2x8V7xP2bz1InU92", "JBIUHVtnn6GmcR6P"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Uy1P6yeDyVJDSotq' \
    --namespace $AB_NAMESPACE \
    --userId 'WqACsr2LJgcnM309' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'jtdI9umbzlqxXxGn' \
    --namespace $AB_NAMESPACE \
    --userId 'NHZQv6WoB8uGWdjw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'YZPBV8QqvmAfIwUz' \
    --namespace $AB_NAMESPACE \
    --userId 'hsojoaWwTKM7QM9C' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key '7KhQrkAENDsuRh1Y' \
    --namespace $AB_NAMESPACE \
    --userId '5vr8aSBdvwGIlRkv' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '1lJo8nop9tvoozXn' \
    --namespace $AB_NAMESPACE \
    --userId 'qE4B9E6DPjX5Iyv1' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'MEsXeT5eiGj8HNBV' \
    --namespace $AB_NAMESPACE \
    --userId 'P8z6JC0zzGy9m45a' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'l70HwtrVzZ9FkaZN' \
    --namespace $AB_NAMESPACE \
    --userId 'oYleB1lFF2dOqxhx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE