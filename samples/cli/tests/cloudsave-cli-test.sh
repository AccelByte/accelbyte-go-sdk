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
    --limit '63' \
    --offset '28' \
    --query '4sHnmmuOVWKBGB7q' \
    --tags '["BTV9dhe2ESnALieR", "X5mA9liSfELreji9", "CYSOpbldacw7ozUY"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["KRucjBklK2ZlCRV0", "C6MfpxCEo8gsYtiv", "OhpTbN1kAiAXNwvu"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'NnEA4PyWKeenA9yF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'OmdPZT2rPMG78pYb' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '8YJ6ibGUYwezji8R' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'tb8uDthgyoHISXoV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'kZJxN0ulmhxv6YT8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '21' \
    --query 'fOw8tr37pd2zX7ez' \
    --tags '["O7F4JPoolFzo2Ocw", "Tx26pgeO6tgoGzLV", "q0g47VCgREfqsEjx"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "C5GTAmHZYJzGqDdD", "key": "NSm8yCcRzfPqL3Ns", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1973-07-28T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'A5aGqb2WMayAGTIC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'dnxtPUVik9yFnlGX' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "x8iYRULP9fMLQifb", "file_location": "gesyZmZ3fd0kNQ9C"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '3Lv6p0dgV5mAMzvC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'V67wnhiUa942wJzT' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["xW3TL2xFFd8dRnco", "sxZ7inHJjQ8C1Nwv", "bBRHb8FDb8BWcAo5"], "ttl_config": {"action": "DELETE", "expires_at": "1983-10-12T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'BhhxQOiUeEfCGQao' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "c9hDmpXIcqMdPhFw"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'P71hykO8qo9IaTSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'rDpg6GiJey5RXr4p' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["tXT7bXRYSv6dW5uC", "xBPeoQI5XZzShZvv", "940VPVF50nDtVcjl"], "ttl_config": {"action": "DELETE", "expires_at": "1985-10-22T00:00:00Z"}, "updatedAt": "1979-06-24T00:00:00Z", "value": {"eFx7CVBCh2WoxkNI": {}, "ZS0v358wsTIDJqdb": {}, "WOCUHUWEYswWq3xA": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'BOu7JetBDnPtPEx1' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["5KamiacXeR6dc5kU", "t22SjyblT0Lxdhuo", "Zpuoxy18pLcqY7LR"], "ttl_config": {"action": "DELETE", "expires_at": "1989-05-30T00:00:00Z"}, "updatedAt": "1996-09-04T00:00:00Z", "value": {"l1wDDVBTbZez6quP": {}, "hYcWh2cem0lZWg31": {}, "05KFqclOanBuD6Vh": {}}}' \
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
    --body '{"appConfig": {"appName": "gIcyvnRQNwI5DXXy"}, "customConfig": {"GRPCAddress": "51egX51YJDh6AHsH"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "k9ppVaSLKBsBBvEY"}, "customConfig": {"GRPCAddress": "Rq8am62vGEXa6PvY"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '3cNFyx3hJh09Kb0o' \
    --tags '["sm1AoW2MFKJdHagT", "2tepQ5xvVB3adVcw", "T5HPe2h5OFwA6urT"]' \
    --limit '42' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'EgV51iBQuPo3QMr4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'qLooNY00rBlrQOtw' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '8jujsQNvY04YWmUD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '5dVFoDNGKy7Ha61w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'Xz1hszqaCP8K1YPD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "MowJn5E96aED5R5o"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'mSWuyNF8Oamsreq3' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'ooLwWK8j0zoKnPQ6' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["oaWmQBR4i9THW3Gj", "Tm5IEQMUJnaOLrkJ", "U7kC3C9AYBjqyaAe"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["SEeIRsYocpLkeJRH", "lSRugQH5JZZTubvZ", "d6WHVHKhaMt5iYHI"], "user_id": "FwwPzb5CeeaLbaKv"}, {"keys": ["zUbbYAtT7Hr8zp8w", "RqkPti8dfTNLXR94", "GNvPCD0sjhhh8GQ8"], "user_id": "5bMd44ryVveO6zuL"}, {"keys": ["CFmIQjk04rBR2LGS", "vacnxt5g5hn5Rbax", "uuo74zGwCWF4JUym"], "user_id": "Vy8UOZE98Wwy1X0O"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'SDv4j2yAFerjNW1p' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "VP4TCNuFYEStb2KV", "value": {"fZt0nKipbLW1RNCv": {}, "7MM1a7sYwF9xPib2": {}, "9b1DZIvMuVGpUL43": {}}}, {"user_id": "7xHOqk5KsQa6S4xe", "value": {"B087qkmgPRQHxGvx": {}, "7Wbss6JbIFmCOTu3": {}, "vUbWvaCOEz7bA6VZ": {}}}, {"user_id": "KMDKp2H87IyNx4XN", "value": {"yXsqlXKmEe2pL0iI": {}, "HFydDOtfzezXi9zC": {}, "hHGf2UdW6TW0jGPZ": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'LSNbN4hRMoU9jbkQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["25RNt34TA9PD4YiU", "xJUaqrUyMFL6zNnU", "3ouOG7evOAF2akC0"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LCtNVZVTCxRTz7Rx' \
    --limit '77' \
    --offset '64' \
    --query 'i5a7gr87M3JlDrK1' \
    --tags '["iyBSNNjhtvDWNx1L", "oGZZXRwHZHlntHnE", "9l0GXWoqWvlsQskA"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mFvpQlj8S000GvVE' \
    --body '{"keys": ["eSqQ67ncodzybLQM", "Z0gqLXyGZGCOT9vR", "AnNmY8WSwtoF3d1n"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '5iHYVDyrvcW4AxSM' \
    --namespace $AB_NAMESPACE \
    --userId 'Wc91BDT4a7ChwdKu' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'gqs0SZp8YQQxpFp9' \
    --namespace $AB_NAMESPACE \
    --userId '7DQZsWLMvfpnGGI0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'JosuR6FY96nHgYKE' \
    --namespace $AB_NAMESPACE \
    --userId 'GRKqWYBLb08SqQZJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'eczJHB3qAyAjqADD' \
    --namespace $AB_NAMESPACE \
    --userId 'rs7fkRwQchKmo8Id' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PpJrSrhUCtgkGQUz' \
    --limit '3' \
    --offset '8' \
    --query 'VsfWx0KyBZ1UCV77' \
    --tags '["aTUXe3ZtjL9hIiJq", "bEUFVuhhPYaiVO8E", "BiFVnytUGaf0DEH1"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Jf27YOMxC6brQLps' \
    --body '{"file_type": "NNCPR3oxi8qaeHMG", "is_public": true, "key": "9PbOgeF2ZQNyQnBF", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'MkP8jve4OqyV0Kci' \
    --namespace $AB_NAMESPACE \
    --userId 'Gjrqe57EnRr4jjLq' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'BNUQygYsCH4JqOpe' \
    --namespace $AB_NAMESPACE \
    --userId 'oM48mxwqYqifxz0H' \
    --body '{"content_type": "EM5YRdL8HtZf6qWs", "file_location": "ZUBserate7mkK7PW"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'ztIWPUum7RrqGFgb' \
    --namespace $AB_NAMESPACE \
    --userId 'VSgE0rUGFwCOzlPW' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'dHMlzcuQqHNgisJx' \
    --namespace $AB_NAMESPACE \
    --userId 'i4WIafuuxQwVWvDy' \
    --body '{"is_public": true, "set_by": "CLIENT", "tags": ["OkahtYyV6MbgpJwK", "kWL74ubJLG3ii9WL", "aWeZkNS3Orf6mfPP"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'wogC6bPtBvh7CXYu' \
    --namespace $AB_NAMESPACE \
    --userId '5Ve5oyGtTSFGbzfI' \
    --body '{"file_type": "f88TtS6T0fFUrzB7"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'EPSI8GODEBvfSbAe' \
    --namespace $AB_NAMESPACE \
    --userId 'l4PMxDsjKFamgqzk' \
    --responseBody 'true' \
    --body '{"tags": ["9ANwY6IRLXI28X6B", "6SJeiTUPonX5BA6c", "FtSVTXELXqogz9vF"], "updatedAt": "1991-05-31T00:00:00Z", "value": {"0sKPHHh4lJ6Obs8B": {}, "KPRSRlraHpJEYK5K": {}, "sGtAHOzmGx3rxLiM": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'UPSfs0EYlpdn3N7F' \
    --namespace $AB_NAMESPACE \
    --userId 'Lf3S9njbsf7AgDAj' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["iGDEPvcPGN1J4YCH", "aIBpcz7WSCfQivki", "RBSEl39kZTnA5cn2"], "ttl_config": {"action": "DELETE", "expires_at": "1992-03-31T00:00:00Z"}, "updatedAt": "1994-05-05T00:00:00Z", "value": {"jYaanR3u1KTWmwTW": {}, "PlIo6lFvo4Z2U3mX": {}, "phWVxwgTZ4g7kCDS": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '0KySd1Jih3NLbthf' \
    --namespace $AB_NAMESPACE \
    --userId '5Ou8zgbpIK9u8Ies' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["nXBbn0EKBvQBVsh9", "UPrKt2gWmxLCy6N3", "BkqjcZJQevgyNKK0"], "ttl_config": {"action": "DELETE", "expires_at": "1981-08-16T00:00:00Z"}, "updatedAt": "1994-01-01T00:00:00Z", "value": {"E1ePWnGiHAjhKN8C": {}, "vmJYCdNMagfwNQTR": {}, "IG3OZC8icpVd0bxv": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'CXR3srHsE699MpKV' \
    --limit '42' \
    --offset '39' \
    --query '2WJ2GDfkpHnRJsxu' \
    --tags '["fLsHgVJiAsgcutqc", "JlWakULOkVQm68QW", "7gPxyAEoNQw23eaA"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'p9oBPYPbRw7ytnFs' \
    --body '{"data": [{"key": "NYwys4n77TsZ5eW8", "value": {"0K46jMhkZuV6o8Ed": {}, "1P8DqPztUMxgSDqf": {}, "LJmkaV4yMswEvl9t": {}}}, {"key": "bpWs3AHSTBEWrFIZ", "value": {"bN2C9f4jinxQN1K4": {}, "uwlnu0uXhretuapr": {}, "OLGSeyxGESvdBNMe": {}}}, {"key": "dMH65XE5VvgKVrQP", "value": {"MLFpMId2DW4g9HBs": {}, "fbPqX3QeId70f9Fy": {}, "52o2eSt0qYMiIPYv": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '5fGd39Q7lqma1IVe' \
    --body '{"keys": ["DEVcOLESyvF0yEjQ", "TsV1rZB4yHbaXwa3", "qmH5Gh0oRAUTrgGf"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'Vtc1QzgB8hMWKhhl' \
    --namespace $AB_NAMESPACE \
    --userId 'KPGQkgGk6Z1xpNWh' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'EgMGpXg0ZbFKKcdA' \
    --namespace $AB_NAMESPACE \
    --userId '3DviRRoYgbYS0qM6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'Zwp6ddFQR3Fx6Qvl' \
    --namespace $AB_NAMESPACE \
    --userId 'Ua15QduItTvxHaQi' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '4psleN9M5amPkAkD' \
    --namespace $AB_NAMESPACE \
    --userId 'RhGKdkQIXaCtkwip' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'dBNtDxf0eWVn9W0p' \
    --namespace $AB_NAMESPACE \
    --userId 'rcgarJqpzKV0yzUC' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'XUduOJams3HKHpe6' \
    --namespace $AB_NAMESPACE \
    --userId 'YOJOpSFd5Um2Ix2k' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'wJ32aDlzdB6MKQtD' \
    --namespace $AB_NAMESPACE \
    --userId 'Q8jHa7kNbLl05TPw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'XV58KwmhH3e2J4WN' \
    --namespace $AB_NAMESPACE \
    --userId 'K58OJg7QpDeUbs7i' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 't2NVId6rAgxFSACz' \
    --namespace $AB_NAMESPACE \
    --userId '4xaNydy5WBv8ieob' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '58' \
    --query 'ZnQ8AWwyCe0tzRAL' \
    --tags '["9duYdfx52NZroIjA", "atL1ttISZBJInFf6", "sV00pTgJb8IFdOVO"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "yOIr9ajn5M3r0KXF", "key": "kr3HSqPmTpWI9nuG"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["KWf8DmolbsCiceXH", "fSBNYe6Dy7ozywV3", "ByVXMyAEOgwHOT16"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key '9CEHn1k58FN8IIbn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'ZWQBYi2I9zUYz8L6' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "0uZIfVgfZNYcRpws", "file_location": "ZCMHfYk4tV7M8yDH"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'ToY23tK6mzjMkoYv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'kCFAMGSlk40hRd7K' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "1abvaMTwXXrdk93J"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'KAgyu7cTOBe6Pkju' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1999-04-24T00:00:00Z", "value": {"MKtT3uvHsnk7OPn5": {}, "9KuMjT6uBKAnHJCa": {}, "9FPuTugsaWNRCbvw": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Ux2TRvsyQ9gISr7a", "XRKLYarJs1U5yoDB", "uDuBqMfrjZp4jhlB"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'sJ8LFT6f6xgauCJ4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'IM4glhVvl72gtBoM' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'hA4UaEc422EegxBa' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '50TCu333dQUekggI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'kSvwrXYuaQBJKhRo' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yFap20xz7lThZvJN", "ShMTsZs2OXrT9Ejv", "sHXmp55CRR9GkpWe"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'saW846NpbOWLDq6M' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["H4GTnCWgnRLYXv7Z", "IZBjIHSc2eLuV2V7", "lj1OGdYZKuCmKhW2"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '2' \
    --query '0N0YWUTSMfyzV9wZ' \
    --tags '["KGASybJEZUyf8fdH", "k7DoMDbE8n2SteGE", "PbK8845UFoGNkGkl"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["meawLKhfUT575xrU", "XYmmHyFOPeOermxF", "R5Yn2kmg9xHQwY1x"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '11' \
    --tags '["5sdj4VtUooCTRMwh", "qoHQW98pUUboVYvI", "8zKXE2whwYbEzsa0"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["cPt0lIAdLi0Jblz6", "PCSA4LtQgZa6IvJF", "AKPHmTcvoZgadSyS"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'DtFRTj5K0LrfjMNC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EcZ9N1tS8Mr1Qf2I' \
    --body '{"file_type": "NZznlxkPvaOw1RT2", "is_public": false, "key": "eVCijzQcHXkgexFe"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xSaTfk6EvQ6XkJwc' \
    --limit '18' \
    --offset '64' \
    --tags '["IVqoFG47cMoMVW89", "CT6ejB6msvfrjobZ", "hu6B7AsDg3981B1F"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gi1K0ifTOMu3p4ps' \
    --body '{"keys": ["ew2L9Q9RYHcSWERX", "MQvqJZmId67IRdqN", "MZHsEsddRDU4Nggc"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'BRAFcyPiPGE9GMJ3' \
    --namespace $AB_NAMESPACE \
    --userId 'Kx3yyxkF4wDHo2Mk' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'bfimAxmiD6cXQW57' \
    --namespace $AB_NAMESPACE \
    --userId 'vhkW0Fcw75eNQVIW' \
    --body '{"content_type": "7bptHYZUjuPK79t9", "file_location": "kyTMKajXuhSoHvST"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'wzBKBH8LgffKyGww' \
    --namespace $AB_NAMESPACE \
    --userId 'IQ5Pf4lBaHD8HqBD' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'stwsbSSvvwdJoHJJ' \
    --namespace $AB_NAMESPACE \
    --userId 'WvxMM2lGyrobELGv' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '1ABjDq3PcbNxUKfP' \
    --namespace $AB_NAMESPACE \
    --userId 'FwgDJGj2LSg6C288' \
    --body '{"file_type": "7csbn3GtIqDutErJ"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'U6XjFBewoUcMLoKB' \
    --namespace $AB_NAMESPACE \
    --userId 'a43IOEyYdCLWLNLX' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lVluU6Sd4GmpA501' \
    --namespace $AB_NAMESPACE \
    --userId 'aUTWcfu5g9rpbi8q' \
    --responseBody 'true' \
    --body '{"updatedAt": "1985-06-26T00:00:00Z", "value": {"kP9WfzLurKeghAMP": {}, "hMLBB9G4nEKhGCxQ": {}, "duvcQmvTTfX5Dfjz": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '9VpCq3VTAusHzyG9' \
    --namespace $AB_NAMESPACE \
    --userId '2sagAwhjeBSBvcD2' \
    --responseBody 'true' \
    --body '{"updatedAt": "1973-11-05T00:00:00Z", "value": {"gWghO8FNLDXZpMW0": {}, "KimjTsG2m7eRZdCG": {}, "YixzHGQfnnNsW4EH": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IAzU37A7yLnFP5s5' \
    --limit '14' \
    --offset '61' \
    --tags '["qoRKElIedObvIPco", "9c8n68lQvLW6w3p2", "tGHxDH0mcGIMUBVP"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NUimfaPoHeHtepXr' \
    --body '{"keys": ["pbxZ9fpWe0B7xJDz", "4KIsd5hePpghjZao", "sGDJbCUpCqe9Av4V"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'fBOIE3DkEXRiRf8y' \
    --namespace $AB_NAMESPACE \
    --userId 'aVsETKWqwpWZK1TQ' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'aWFet0kC2GR8rjkj' \
    --namespace $AB_NAMESPACE \
    --userId 'CHFyqIvX07Cmx4Po' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'EyestaTG13VEf7tL' \
    --namespace $AB_NAMESPACE \
    --userId 'mCgDwBr7lAVJlR3u' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'sGupbQwf3fcbqf8P' \
    --namespace $AB_NAMESPACE \
    --userId 'JiVgNcZi1mN9sWHC' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '5XUcfYNXCdF9PFn9' \
    --namespace $AB_NAMESPACE \
    --userId 'w9HasRCAIhBntrh2' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'l6J712tHw2rIVtxS' \
    --namespace $AB_NAMESPACE \
    --userId 'llyS9ZrhrJpImtBv' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '9izU3OzFIXlJZJqS' \
    --namespace $AB_NAMESPACE \
    --userId 'eoyAViB4Twa3XUGS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE