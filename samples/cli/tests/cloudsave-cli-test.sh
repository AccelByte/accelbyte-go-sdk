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
    --limit '93' \
    --offset '27' \
    --query '5BsPzSRLmQvGfEme' \
    --tags '["1K1QjDFlTlTb1Pzn", "YXkCQSVOfuCWNpfJ", "8lSEfmS38NbUBVcB"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ksGCamV01632DbVs", "rlEi0n7VYqJ5nWHj", "fMYxrCDESJgtQ8Vu"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'nNpNt6tYnF85Dqnu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'YGmrfu4xKZyK6cDn' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'kQQulKyvQl0HS90M' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'wSK4fZJuuWYLPn66' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'QClA0LqA138aXN0M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '83' \
    --query '58YCwJjF8H2A3QDz' \
    --tags '["PjY7iLa3Tc8UFGSy", "WuxzNj3Wxp87Y2Oi", "7UVpNQR3uGQtLS59"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ssu4vXbczLeWwzsO", "key": "olLTbWTzGqNsKScZ", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1972-08-22T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'Vk7e15PpeoOCD3WI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'ysaSaBW1XbNBt95g' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Fg3WbK4m6LjkTSi0", "file_location": "qBsARS0DR65V5BE8"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'BOxqoPAB7ZnT8tmp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'PI7um3te1o58OcJM' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["AFJLicluOb4iQjzW", "v4eUGBoTHn7SkNoa", "3tlrjKtioD3LiMc0"], "ttl_config": {"action": "DELETE", "expires_at": "1983-11-28T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'tuSTBMhkyWpbUPoe' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "g230iQvouDsdR2Q7"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '1OjHx3CeKKmAvYM6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '84li0a8PlsPLXX3i' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["TjUo0gvzJkpyHcbH", "6q7rY3qxfhgT6YdW", "R3JDCUkD0jiyvOCx"], "ttl_config": {"action": "DELETE", "expires_at": "1982-11-09T00:00:00Z"}, "updatedAt": "1978-12-05T00:00:00Z", "value": {"nnFzJafn21UAOJ2y": {}, "s4txrd7BZSEhBIZo": {}, "q2V8GfN18p3H71QQ": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'CCJObyP3N3ZM0xcF' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["1wh1PptKapjos6BV", "dLQIUgYhjtVEhapK", "KTfQ0pa9rP6Qvjz1"], "ttl_config": {"action": "DELETE", "expires_at": "1977-06-23T00:00:00Z"}, "updatedAt": "1973-04-03T00:00:00Z", "value": {"Yx0jBDn0pGjVKaPa": {}, "L7RLCafUeOYz3lvA": {}, "oyM6pf2y2TihtyHj": {}}}' \
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
    --body '{"appConfig": {"appName": "FyBmHG0m1Gc9kCGd"}, "customConfig": {"GRPCAddress": "OBl5503RVDZwA5Vc"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "rqKg7nKplbZx8AG7"}, "customConfig": {"GRPCAddress": "05QDSgyaWRRnrRzp"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'IynDScj0N5bSBYv9' \
    --tags '["4fYcsJBv6U1CjsrM", "r5qGOGJRNvlPwlOe", "HxB9UM1XAjCjt1Ta"]' \
    --limit '52' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '7EY4dUKzE2WbCo5k' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'hS1eVG0BI80gKatb' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'ff8MaNLerHzS5Qxn' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'Gd4gAu4e9CCb1pnn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'kwQmIDbXl0NxbNjp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '60' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "xZvXnSO1GoeKFvqd"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'M6cweTNwnMgezak1' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'ZLwkEvhyvVZO4wxo' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nJ95MEdG17KSTc5l", "IYKSUjJbrFAmBb9G", "mFhKPYxKSvlDByvB"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["F06KSZUR6uea6qyX", "0NCmm23dW1SBmefk", "qOrghINkPPIOBLTj"], "user_id": "lAe6oDN4fYhF4w9T"}, {"keys": ["1yc5EUICVPNEdK3o", "FAIAyw3M20zBBMAU", "kfnDPQp5sqzI9HB1"], "user_id": "wfSM0NwXEPH1i5WM"}, {"keys": ["TovOETQbYAcLy40m", "aGo51OyLnbbMg39S", "pm2Gm5nVoc1kaD5K"], "user_id": "efWuh1bC9xufBr16"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'MvMbo4E8fpc0i20l' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "Q8GSNBqGwgVwcSMc", "value": {"blt4fnAUBXznKQuq": {}, "vn5wAbwikVQF4pGO": {}, "MoY8GxiIsm5Fh06R": {}}}, {"user_id": "HR2TdVeS7Q0czHj6", "value": {"WsBLZyziVB8e9CUW": {}, "voJgN03vOZeJ8Xmd": {}, "GW5cxIRSe7hLAKJE": {}}}, {"user_id": "9uzoXHZjdi0WTIXo", "value": {"H249hIGayYno67hu": {}, "9vPUz6MbGHDGAxNT": {}, "ZYH32MJHhvLn6QJg": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'kEGSo7yS6gt2FnSz' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["QauNn9xKhFvjHJzr", "HoIdaqFS8054j2AC", "RJNeGETo0BfoAeeC"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dy9jT4ux7vqDSNOv' \
    --limit '10' \
    --offset '67' \
    --query 'H9yUIz7UNS18qGHB' \
    --tags '["1OvO1P0MWLLLXbcO", "VmPM3rvQh8zBF5yx", "DDQxuyx3T7FFwbEJ"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LM5OolwXafi6Gs76' \
    --body '{"keys": ["3S7yGJ3iCQBx7HLA", "W3RT0y8rcsdmklwX", "yiU9yKhResNFSjq1"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'OC33oO2efQZdFAef' \
    --namespace $AB_NAMESPACE \
    --userId 'Rv1htzQDOSP8H88Y' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'FacYUnUeMrwKxe4n' \
    --namespace $AB_NAMESPACE \
    --userId 'tQszaGcWul7tohLm' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'sDUWQ37Zp0DZ4MXS' \
    --namespace $AB_NAMESPACE \
    --userId 'A6zUJPDhgFoTKI5q' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'yQ5hrMI4UDgmvnpt' \
    --namespace $AB_NAMESPACE \
    --userId 'AKJAQATM8EWbBRGO' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vVweRtb2vCBSIVTw' \
    --limit '5' \
    --offset '20' \
    --query 'BYwJqAL8YXN0J27v' \
    --tags '["4QjNZAtKhWyK84ZE", "JVXqGvcBWvZOiHJL", "UjEf5duTbr48CmX4"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZjueS11M8ylm3u66' \
    --body '{"file_type": "jivi1VFIduYQBb2i", "is_public": false, "key": "aMVA7KXau4fjM1FF", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'gDzRA97UQZRvqkvU' \
    --namespace $AB_NAMESPACE \
    --userId 'I6H3O2C6SURXScnh' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'Y9mF2b5mrAvrNKEh' \
    --namespace $AB_NAMESPACE \
    --userId 'FqzbhxoDPzPgwcVX' \
    --body '{"content_type": "Ct8LI4rBcE3oy17o", "file_location": "JdYuakXKP7oGS7c8"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'a2EZj8xm3fUzk3bS' \
    --namespace $AB_NAMESPACE \
    --userId 'bNJpX2gdw9gkfCVO' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'Cs7dvQsZtFlgosPf' \
    --namespace $AB_NAMESPACE \
    --userId 'd31iG4uZCpt8I9cn' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["q0bv5IbVXcfpt3Cv", "49jYBJx3o2tLjGWl", "XnUnyk5bBm7Cg0LV"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'kq8Jk6Du3ZycIPN8' \
    --namespace $AB_NAMESPACE \
    --userId 'WUW5XhcewvcuHSB8' \
    --body '{"file_type": "Uyg7jZLq2NPrOk7f"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'oLBQetu1K52WPup6' \
    --namespace $AB_NAMESPACE \
    --userId 'ej6NKU7SgwVG9uQo' \
    --responseBody 'true' \
    --body '{"tags": ["kjHVZiBuBuZ1dhDo", "o6ZxFbJJxX8OnQ7I", "olLPuwAc4vUpPlyw"], "updatedAt": "1980-11-27T00:00:00Z", "value": {"CvDNIEy8gO2B7A0c": {}, "iIL2JgungJVrFHUd": {}, "4Uz29r6LXU0z9nNB": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'hSJLViTwDOooUMqp' \
    --namespace $AB_NAMESPACE \
    --userId 'lEAVII7CGPXCFwRr' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["S5qpyO56OWg0mTg3", "nMnUgdntQ6AUkDln", "LOeAloFRxI3xQNOS"], "ttl_config": {"action": "DELETE", "expires_at": "1998-11-19T00:00:00Z"}, "updatedAt": "1976-04-25T00:00:00Z", "value": {"gWoDNHMNIyphWmYL": {}, "y9MAIFiTuDuXm0sF": {}, "rKNmV0Wat9dhfkCs": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'ORXkm8Q3RGK0ld6a' \
    --namespace $AB_NAMESPACE \
    --userId 'EnYQbBhJobmziEM3' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["2r5xisudIEJsY7NY", "DgTnfptKn3IWSBmD", "PIhdOexmeP4MjYht"], "ttl_config": {"action": "DELETE", "expires_at": "1982-06-26T00:00:00Z"}, "updatedAt": "1984-04-15T00:00:00Z", "value": {"0pQKhqpA1PzpnRZV": {}, "7qT9OPqBVhZbMOpT": {}, "F5Jp7GxeezqlUlRk": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'Jo1qjIdWP5RWbQBw' \
    --limit '76' \
    --offset '92' \
    --query '5JKDvTIsPMmwIXD2' \
    --tags '["sIPga68WIaYYvf8z", "99TtWLm2zCICDU3i", "U43cnELe89Q5D880"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XuUmM9c8b6gT5Mv9' \
    --body '{"data": [{"key": "U5w78u1UhPPjfN4c", "value": {"sOoAMlJDPIw8uewj": {}, "uAvgsGUJB7RFpEEX": {}, "1Z0SyAyEwcZH69d5": {}}}, {"key": "LVSNE5i5MvQwwTCt", "value": {"mBmCyBX4o3WDN5O8": {}, "ph0vVY0QMgT4kKwt": {}, "mOdAPB9j3E9IGdnH": {}}}, {"key": "O9k4f24kJPRZkK8F", "value": {"DUmYnEwtZwhGhoxY": {}, "TyeyQI8IpKNwjbvl": {}, "7l0QXaCtY6IDYEgY": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YPCV7bdnnierSfuc' \
    --body '{"keys": ["EBlDSB7bBnO8t2O6", "DgarquYmY96Q9Dv5", "lqL0zZv7mOelRNKG"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'nVKFdNbS0DvOmh1x' \
    --namespace $AB_NAMESPACE \
    --userId 'yvuBJrnDj08OOkUz' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'I8zD51VHSQy3tcAj' \
    --namespace $AB_NAMESPACE \
    --userId '0txv7xLzdHTwaxlU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'o1gFlotwt4OCVED8' \
    --namespace $AB_NAMESPACE \
    --userId 'PijBuSP9AzqCVGT9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'V2ulRE0GkZJxsUkm' \
    --namespace $AB_NAMESPACE \
    --userId '0WOTacHbOnh3g5U7' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'q8HBhn8JaLwtT0dJ' \
    --namespace $AB_NAMESPACE \
    --userId 'npULmsDT9HuwgFbG' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'BPSkl703SFjB12WH' \
    --namespace $AB_NAMESPACE \
    --userId 'Ks4Z8IAP2IRxGKHc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'kwm3fGD7Ukbq6IWL' \
    --namespace $AB_NAMESPACE \
    --userId 'Oujt4oKEexrTJbNt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'z2uIOpvDkU7gOuLx' \
    --namespace $AB_NAMESPACE \
    --userId 'bFZFj1iMRM0xpa3A' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'BPIcKCTMI0MpMWWp' \
    --namespace $AB_NAMESPACE \
    --userId 'DPuT1cHY7wp8P1BG' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '5' \
    --query 'NFZEiEaumibVg60I' \
    --tags '["VCjrsUFvyqxajPPP", "SqqqWXow3BBAOOmX", "BGevg8n67sLqlKJq"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "dq4FoUxKW8g09lLK", "key": "5rFZjl7IrxHHc3uq"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["kkv03Dyen0CFVo4O", "mTX24WsYca3N4tIt", "DG1LHSdQxn2W4t8E"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key '8Pr8TrgXU97b1AlV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'fkxTM6jKdOVVcDx7' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "wZJgHOcm64Beq5ZE", "file_location": "JqjNVha5vVjz9Q7z"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'HYru5QdWPHyWCmj5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'wTbisfvta5mtEupH' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "GDjfAY5PpiCVvL17"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'S5HggbXC5CdOW8MS' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1998-06-29T00:00:00Z", "value": {"398UpoVWdQMTHP8d": {}, "a5tHfEs9R9TMpv4Z": {}, "wbIEzs88XGw3wOk0": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["QmpqHEIObj2eceDi", "pVFhk36irzxMm8Tx", "65ZciDXal0yLJNyq"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'XOsSjQ3zz7uygaMY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'ylWXcqZJy1LSfe4A' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'mOmnwz2n5eg5hEs5' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'wCLiAKqCwnk9aZHC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '1MbVA2t17EkZBiK7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["eecx1gWBdpbjr6yC", "hOZuCllvWZjgvaJ9", "EMgZ66dfgvUBTXH6"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'og4fnb6ckJpR0w7v' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["XObiBeIw9bCxqGRW", "eKA4jU7WnvB1zxQJ", "mzTTKnQt5OpYp5Nn"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '11' \
    --query 'tX4ltRwKFxCxiaHI' \
    --tags '["dMIMLKOZYaWmOvSF", "UEVb2bYoNZ35obSP", "Hq0T1HwHByBJi7pa"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["fc8dtqsVu4JcFIvJ", "tSpQOukBlEDrNayc", "yghWG096X9lppYlM"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '21' \
    --tags '["coWbS4Vjs03mhEUV", "ldm0WAwJoziwM9t0", "tdGSIY5liSxNLXhX"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["mFC0mcq6viWBnW7i", "8ZiY4Ntu1RawuWeR", "dWH0ZRXWF0pr5P3C"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '0uHyTQdtCcAKtHGI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '4gkRX6sH3a2lzmr5' \
    --body '{"file_type": "V4MuxG1UCrBDsusW", "is_public": true, "key": "GjTf7k6mBdzuQBKH"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'G7lWikaUuAWM1G3c' \
    --limit '85' \
    --offset '56' \
    --tags '["rGAwMSpjIzzDW3pE", "TnkYqHgSiljfCAhB", "65wnIpLE9C8WKcb6"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ddkUvnBgMAhVCfDx' \
    --body '{"keys": ["M5YfwRAGeWAByldn", "jQysm3MLEZ6Rzkqi", "NNOzCIvzlGfjvtpj"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'GgbqE3wZyZxPJ0N2' \
    --namespace $AB_NAMESPACE \
    --userId 'TCxfkNUujtEUJULl' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'datcnvRUM5xUEBQU' \
    --namespace $AB_NAMESPACE \
    --userId 'Cq5TrmohXFKCagJI' \
    --body '{"content_type": "vunEFgX5IRRlJUXR", "file_location": "BxzY1fu9ep1HtGpn"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'ztFfCisiWXVronLN' \
    --namespace $AB_NAMESPACE \
    --userId 'cPkJWcZH9ZOyymQM' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'vBBxW43pSfb71OWL' \
    --namespace $AB_NAMESPACE \
    --userId 'AEt3MTIZyVquGZt8' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'EKvDmmJpt8mIAiL3' \
    --namespace $AB_NAMESPACE \
    --userId 'ftYVXdc9Z9OEivuV' \
    --body '{"file_type": "l8CiJ52aMqxsBjoP"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'sFxKTk38KvDhDZpq' \
    --namespace $AB_NAMESPACE \
    --userId 'duchcJxWkMCN5353' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lmQRK16APk1m77If' \
    --namespace $AB_NAMESPACE \
    --userId 'gkGDXmdhsd3tLAyn' \
    --responseBody 'false' \
    --body '{"updatedAt": "1976-05-05T00:00:00Z", "value": {"qzO3YYYFmVTgsQM8": {}, "VToQPdmD3dAkJ9h0": {}, "dFJHhP7Fvhsi12kn": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'UIesQmd6vmq45mw8' \
    --namespace $AB_NAMESPACE \
    --userId 'JrfVcdSJZzywStqJ' \
    --responseBody 'true' \
    --body '{"updatedAt": "1972-09-03T00:00:00Z", "value": {"BAzxFrK4UJRFkeN1": {}, "ycKpqUa2Q48phGzD": {}, "oWxOTMGO9RzfeTjC": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NZoBiehi8SuGEIVF' \
    --limit '9' \
    --offset '49' \
    --tags '["n2HyY03mZdzmHjTM", "z3V5ad4V5ppcXdNb", "jU2FgxDYBwvEjzy4"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wErEWI2z4a7xikrZ' \
    --body '{"keys": ["OxDArMQXY7hdGYSR", "66SFTrwRuyKG9mDY", "dsQoYbEm63gKh9iF"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'IqxqCI8gQSCxqVbC' \
    --namespace $AB_NAMESPACE \
    --userId 'qWdnxWPuVRqlM35P' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'm82nv1jjbP0phtJ2' \
    --namespace $AB_NAMESPACE \
    --userId '2n6CU7bCZ5qJf035' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'TfV59rlJzBoRcw82' \
    --namespace $AB_NAMESPACE \
    --userId 'NORNRDXCLvbmAicK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'rhCh2xruwNUzzrWp' \
    --namespace $AB_NAMESPACE \
    --userId 'NmQgBlvl6TBBK5i1' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'jbDgH6C4W1gXCs82' \
    --namespace $AB_NAMESPACE \
    --userId '6dfjumsyd7RObKOr' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'XpdAlq4VKxxGT2oZ' \
    --namespace $AB_NAMESPACE \
    --userId 'dLRT24pqiPXBVRYH' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'SKpDVDtTEDg4aTgC' \
    --namespace $AB_NAMESPACE \
    --userId 'p4osicnAoGt79qmz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE