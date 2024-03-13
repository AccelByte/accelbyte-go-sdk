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
    --limit '45' \
    --offset '2' \
    --query 's9hI25R2UNaMy5Uc' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["UOV32nvzfjCA907y", "Ep27I3l4nQ3TIRXA", "0wPxUFiijfcoCsfv"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'nuEy6xGSUMr9g0cq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'lbICBDQKamXDqUuZ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '84rVz0WShqDqwmhn' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'oLrtvKdIOeMJxunK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '28' \
    --query 'V702kIIQfvDdXdqc' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "l9Ub3039ms92Cngf", "key": "q5ZxTsrhuQyMgnKW", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1990-12-28T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '8NmemINOgLfG8HlH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '9KOLX7sneRsfU3sJ' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "MHrpH8sAsk1CSFJc", "file_location": "0vO3iFFd9Q3Hsnl5"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'PmSvWCNAfr6cUryW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'LZD0FwgZWXKdAg7l' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["MeyCRVRSM3UuXyDY", "T4UEDtRMlbmCuSKy", "69jJdkzNXSkTxUHh"], "ttl_config": {"action": "DELETE", "expires_at": "1998-07-04T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'IpaxGWQMiWzFQg2x' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "AKVsJ61eWom1Uo80"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '3UBqQhfy62xEKPRm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '5KcG7wnpcBgH0eht' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["YtlvCFEdT817aEz4", "qb0FvwwwKKnLFE12", "j14cDEUSC8yvXps0"], "updatedAt": "4f3Ljv96YX02Va9A", "value": {"q82xkaHfMKNg1pi3": {}, "GXqYJliW2NOqYCpy": {}, "VcHmqDDmhbmquAr5": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'mNXbX00IQKYWF219' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["g9LE161gjER84UWk", "TevsBi5gaoMpYsJN", "Gyt89HhOBFw5I8p2"], "ttl_config": {"action": "DELETE", "expires_at": "1995-12-03T00:00:00Z"}, "updatedAt": "eWBPzr8bQGieAPS8", "value": {"sfXEaOqLZNdXbdUI": {}, "VAP3RowtvJLPoP3M": {}, "aUb5AcdwARY4V960": {}}}' \
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
    --body '{"appConfig": {"appName": "jybdm298PhkqOX5P"}, "customConfig": {"GRPCAddress": "CkFMsS8dnHDZ8BIl"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "fIm7p1ei5v5rzKVx"}, "customConfig": {"GRPCAddress": "1Ie6uQ0KBOPg2SHO"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'W2WbGCJKGAROHaBJ' \
    --limit '34' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'I8WpdCtkdhhPcDVp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key '6SL3UJVnegxcsoVS' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '9JYLtxjvtnl7PE7t' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'vQgg32eG52cee9Gx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'gGvxkqzZh0H5575Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "fS39vxfp2bQQgSR5"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'bTUEsF0tu2VoftX3' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'SXL8QPbN2guqxq7D' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mxzjXDrj3fqP783Q", "hZFMD8oZwvxNf1kt", "oSqVK54G864hVg3z"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["PuserkOePJ6zD5Ce", "RzSGTeTYV7fYFZQu", "FILKNyaCoUPcLOhv"], "user_id": "EIUkLONXNmbkyuoE"}, {"keys": ["gd9pxCUYlb7fnVfR", "Yy77fLew5mLpb3Nd", "bbL9W07IxhEsgGeZ"], "user_id": "zEo3MNRgbwvaCov1"}, {"keys": ["nCMIa6A1N3cQNejS", "j6sTZ7vcIv3tg7hj", "eAxFHu5Nv550biic"], "user_id": "cO540sKWEhZFIIuh"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'QyiVnqfBHfHNPZiy' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "fQsu2Gnyl98IV9L1", "value": {"GdG2aNti7WTLxYB8": {}, "g2lkBKiFb9YKk5Nz": {}, "Lq9Ju7xZF2fESx7G": {}}}, {"user_id": "mAs9iEs8fxcUBpia", "value": {"gahqVscA9yPu5jm6": {}, "l408uwgo4SA8NreE": {}, "FlLZRGULkn13Llqj": {}}}, {"user_id": "xEZTxDQzQNdM6cvY", "value": {"JN5LYReBb1kO2KX1": {}, "TumOGnzDG432e2u8": {}, "8N9gA8z6uEmjQlDG": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'uL7OHwQrpu0e1Y7Y' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["11Vj12Lo2QFY9eqT", "y0UHwbjyfU4AJtKl", "79nAajkPtgcBC3eJ"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nnAWKxuBG0aWaKwN' \
    --limit '12' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pdAQcJbjc1FEav2u' \
    --body '{"keys": ["qnhmqc9bAMsg1D4D", "1NApxa2K9YdMkUal", "C3JLAY6R4Una0bXT"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'gkAa1yaRKYX24L0a' \
    --namespace $AB_NAMESPACE \
    --userId 'hvWbqQVIpqoRw0NV' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'OU4G75r0oAkZau7v' \
    --namespace $AB_NAMESPACE \
    --userId 'IoiC2x3xYYopR4iP' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'gvXm0ay9PGAsZK4j' \
    --namespace $AB_NAMESPACE \
    --userId 'tZkd7Hk9nj7OhrRB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'lFp1PjU6DzNWq6ys' \
    --namespace $AB_NAMESPACE \
    --userId '5VGcXi3z4K8zmGsm' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nJhyIhGzfFEi0yTz' \
    --limit '23' \
    --offset '80' \
    --query 'z8sQtv51Yie9DwUD' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'x1HoT6QeBk4g5zX7' \
    --body '{"file_type": "rL0sGwbHPewwIsHy", "is_public": false, "key": "wQTC1atjmEBANmrw", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'jW3YIUFNaJ0xcsSk' \
    --namespace $AB_NAMESPACE \
    --userId 'jxWpykow9V79Likm' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'ypmtUX95fiINC4xH' \
    --namespace $AB_NAMESPACE \
    --userId 'ETPpnElf9hsHdPQX' \
    --body '{"content_type": "nlQ5zS5YcqIw4bBH", "file_location": "h7B1W7YPBLg58hma"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '4069dNLRsB89kClv' \
    --namespace $AB_NAMESPACE \
    --userId 'MLTfTgBrtnGAH0Ur' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'L9ielzmJ2Y78u6Bk' \
    --namespace $AB_NAMESPACE \
    --userId 'RdrkJX10tXdJbjZQ' \
    --body '{"is_public": true, "set_by": "CLIENT", "tags": ["N9ozcmJQFpIDgoYW", "RIaPjXD3b6DedqE7", "eLNqLmVNZM4oNyTV"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '7JP5PmgfVLs0eVAZ' \
    --namespace $AB_NAMESPACE \
    --userId 'gmFy1mZzvYHK5q0r' \
    --body '{"file_type": "u3ukVM2NWanR3BgS"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'oMkujbu3hcR9atsg' \
    --namespace $AB_NAMESPACE \
    --userId 'nphjTHOgBMZyj3bW' \
    --responseBody 'false' \
    --body '{"tags": ["y8eramG8JMQsZlLo", "RrJ3w39YE5kgS0DD", "kKH7sPFqzrqDLaOf"], "updatedAt": "z2PCWVNGrOgqlThJ", "value": {"ZGSJaEYBNxSsU890": {}, "Gj6MN0qllP3CPaE8": {}, "2YKGCVosUoO5FQvM": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'Gz7CqUif9M93cFlZ' \
    --namespace $AB_NAMESPACE \
    --userId 'vVxEK57kKoHqV6a8' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["U3ZG6MqsHejmWs1s", "RfVWHarKui3Y8Kf8", "8ueVTvXnsYCiTlK5"], "ttl_config": {"action": "DELETE", "expires_at": "1980-12-22T00:00:00Z"}, "updatedAt": "JHxoIHmUoD07dKAv", "value": {"ji7k6yOawJi3bIkF": {}, "n41zjHxwfb4IQuCu": {}, "z0GRcZElh3sX96Q6": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'RkSzKX4wHBke6CBT' \
    --namespace $AB_NAMESPACE \
    --userId '1BDBDPtLW02Ghzzg' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["eEtyQaszCKOXo5IX", "vCmuc7PI9wn9DBT2", "2FETJatKHyHP1yEV"], "ttl_config": {"action": "DELETE", "expires_at": "1997-06-01T00:00:00Z"}, "updatedAt": "bWe2N863ewol6LjR", "value": {"brrAt2umGagKNk2U": {}, "YtM1QUmlfK2na8LM": {}, "9Q12086o5EtvLpa9": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'MWwZ38QeLzlAznuY' \
    --limit '48' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MM49zBHFMJQ4eBjT' \
    --body '{"data": [{"key": "PLIpItFb124yOfxY", "value": {"4edNcxgDdr9bRblz": {}, "hGxLqbbhk2yOcNlx": {}, "pLp461n46luYp1hk": {}}}, {"key": "VHxm5k4at8AKMcQ1", "value": {"t4x2sJJTYtwn3025": {}, "GJNx842R4zzEqeU8": {}, "VMGODoVsFYk8QuXy": {}}}, {"key": "OjOWGA3qCL5wxCk1", "value": {"O8mln1iK7xKppucy": {}, "ip1Zu6i7Pdi3OE28": {}, "bccbpLQXBH6MPdlu": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gYb2egIimvQyxaWK' \
    --body '{"keys": ["5iAgk75Tcy7lSX68", "EfSB7kfMzkbpNpfi", "821hV899f65c03wm"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '3zqBfCUsxJ3Xzfrk' \
    --namespace $AB_NAMESPACE \
    --userId 'JHEV6ETFXawhmRn0' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'fP9ehNiWUT35vPqY' \
    --namespace $AB_NAMESPACE \
    --userId 'dogEFCg6PCj5M9CJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '3PVL2C2BfcvOOpmc' \
    --namespace $AB_NAMESPACE \
    --userId 'BpnJQuxaqKA5o7NY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'tcXwNm4Gi1GfJZMf' \
    --namespace $AB_NAMESPACE \
    --userId 'XyGt92yOQtwUlCAY' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'MhXaxIkAESPlrX2q' \
    --namespace $AB_NAMESPACE \
    --userId '0upLh9nRC9e3tEYp' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'CTojMeFwpdR4scLO' \
    --namespace $AB_NAMESPACE \
    --userId 'HCF61E3fvxKgXtGa' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'JHKl5VAK2tPkQTi7' \
    --namespace $AB_NAMESPACE \
    --userId 'uz8vXyaVVLclsaZN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'eUq9kMjUqWuQWf8B' \
    --namespace $AB_NAMESPACE \
    --userId '8D6ubp06fM7TtQrp' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '7YnTELZLo9U4vKOU' \
    --namespace $AB_NAMESPACE \
    --userId 'yaiQaAgs4q7F1GKL' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '31' \
    --query 'Zyv1m72KDsbLVxNt' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "Gs4zcoLmTTBWrNwk", "key": "PEgZn3JuW2wYOXFE"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["NN5Kxqa79AigKciF", "jjVFHa4jI3WkykZD", "PKY3PIXAU9BQCmr0"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'FVnfduPAI0Ma5HH9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'bEkeF1bErSRjtnpe' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "3GT6APy095Bug6Ut", "file_location": "6RqH83Yo4ozcTGTn"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '8M2CWEZDWiP55jkz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'oQHMWJUdYsX5Hlu5' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "H6ebr64GQrufivcJ"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '1s134qjkarvOwcuR' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "Z6A4BoIzkQtLOaCJ", "value": {"yLvLPEf9e7c1Ep12": {}, "5vnv0FEfY4tdxtrg": {}, "iu7puC3cURfQptYJ": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["iMl7To9JO4VEPvaA", "cuatUXiZZPUACWTT", "5cYafJ8TzzGdghI6"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '1kiGx3rp6G5YpYKZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'zUK3m4pCe3M1H9od' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '74ycJ0Ui7PIqFjRO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'fSBbauu1y5pUKwHW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'brcDxW54OMxx9kln' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Zk0NSWyVkzKWflxI", "ZynOQW6J1kjcHlxq", "TVzsGvqvX0Odx1ML"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'UeKbCSodIk8uJQM0' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yDPgPqSDSOc4Q41e", "jx7NIHWcj75j886w", "y5di7EF5DdjgNo7s"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '85' \
    --query '97h7GLv4zz2XfT52' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["rWYN3ARcjObmlp5y", "5FLKz84dSyHFaHMw", "0YSYqSW7r6Wmu1Bv"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["XFf5bxv5WTt1SfZQ", "lc6VkLW8OpttSoJt", "16OhGQagY6P5SrYJ"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'Hd6LYpTJfXpzXvYx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BBzEry0kKRbQb6aX' \
    --body '{"file_type": "P65H284X0lk7zgxP", "is_public": false, "key": "Ta2yLuyjCQ43TOe9"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '3DrRiAtLa7fRfvk0' \
    --limit '7' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KWgQYl0kxckbgoEU' \
    --body '{"keys": ["PNvvxpSu164Grd7S", "ZROwuWAZ7qFD3I2B", "rm0MdCEcpIyjdo8U"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'tcGksJAuw7UArEHY' \
    --namespace $AB_NAMESPACE \
    --userId 'DdP74ZXr1khMW9hI' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'UGcvFaNURyGcUOCr' \
    --namespace $AB_NAMESPACE \
    --userId 'Hq1HEM95gU1Sybgk' \
    --body '{"content_type": "DjDtRNoyoeNCrcVM", "file_location": "OcyB0kh8F9vIJbqa"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'AkGHFf7BDREs8nm5' \
    --namespace $AB_NAMESPACE \
    --userId 'tXU8jBU5jBkc49ua' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'pYuoRT3uwkyPUMkO' \
    --namespace $AB_NAMESPACE \
    --userId 'F5hIyDEMeTaPTM8u' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'UJ0SC3aXzlR9Eklf' \
    --namespace $AB_NAMESPACE \
    --userId 'm405A89Ye8YQo63X' \
    --body '{"file_type": "Pv0Oup74hYlUixrG"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'fT9YYof3fytW1oy6' \
    --namespace $AB_NAMESPACE \
    --userId 'AoNAjpiLRl0CgwPc' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'kuSR0aMve99yEciP' \
    --namespace $AB_NAMESPACE \
    --userId 'J4zWb2LqNY9o6tmH' \
    --responseBody 'false' \
    --body '{"updatedAt": "8MsUVmvrMcllEhGT", "value": {"t1ugTlCWpZBAlyH6": {}, "k62mB1ZXmUyrH3d5": {}, "FD9qyadRiXt6dxur": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'JG6gPqK7iZfcHUFk' \
    --namespace $AB_NAMESPACE \
    --userId 'Drgxy37S651i5vey' \
    --responseBody 'false' \
    --body '{"updatedAt": "mSBLF932IUym3gRH", "value": {"5POJyTFBLG1lLySQ": {}, "OnzHV0oHHcndTyTt": {}, "a4H52HORP2TYvmYT": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XeObl2kjevoscRWv' \
    --limit '44' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gh4VDDJSJWRR1O5e' \
    --body '{"keys": ["BEdGB2xVfNVGib84", "2p6SEsaUuq7cGXvx", "YO4RUTNKKdZgf8CA"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'XhSURtIqTgukpAk7' \
    --namespace $AB_NAMESPACE \
    --userId '2bZEUiouGijgP4wt' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'AzLndGVEbC2uxeMd' \
    --namespace $AB_NAMESPACE \
    --userId 'U1oSwcgvoF1N3lHV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'HP9Kpzu8Hn3CamXx' \
    --namespace $AB_NAMESPACE \
    --userId 'kObhRFQoGrATdxnU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'mDQ2Hc4QCvoo5TNY' \
    --namespace $AB_NAMESPACE \
    --userId 't3nK8G6MFIYVOI6r' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'NZeCSCHpXux7zwYf' \
    --namespace $AB_NAMESPACE \
    --userId '766pIAwZJDlbUe4H' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'mhPWQpYkUGYT7QWG' \
    --namespace $AB_NAMESPACE \
    --userId 'R9hc4m5jQ6oIKO98' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'KOxBagffUpwmdcMw' \
    --namespace $AB_NAMESPACE \
    --userId 'URW9YDrxwYi58cWM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE