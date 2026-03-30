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
    --limit '40' \
    --offset '75' \
    --query '0PYKv5ZGqhvocqv4' \
    --tags '["0zlwm8soQiUZbRPD", "6YYTn4qEHcfw20kw", "tgSN55UFVthqAf4Q"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["krX2wNNg91VvY3fs", "OHwAo8ZIvjDEuAHN", "Pd9CaO26o1VRJ1px"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'AsrgyRQnIKfr0siN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'EImfBVlaYVppniit' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '9bojhsjYAT7xGPqy' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'sEObSGx1Kq3UcKi4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'tAT6ab1zWDxD2MdA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '30' \
    --query 'IAuA9eBU58NAObl5' \
    --tags '["a1KWhFLtFPFo9tEy", "0AeEYpWrGqQE266W", "I52OoAoFWzWKyCWm"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "uzbwu2K90xLyRalC", "key": "w3jAek9WJepR5qyY", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1991-06-30T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'cE1fDow3CHCICJBH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'OT0hgKtPPfs7Vmas' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "IA5vCNnT0GlssJrA", "file_location": "QyBz9rzbRd9XyXAE"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'jla15xs9Z4zt3cY7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'IWtL4iPvuIF0VGHZ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["nIUPKZPwg56wyfD3", "grEW507zwjG0K0ka", "WWaOEKFrETjZHq1g"], "ttl_config": {"action": "DELETE", "expires_at": "1991-04-23T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'JwcA8uheWkFizCCN' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "woJqog1YW9Layur2"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'XLVHQFTn7vkZ484w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'm0ZeCgo7M12zxC7K' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["LuN8gk9vK8qIX0gf", "297o7zmDTbaAzqHK", "DAp11hivXcBp8jPz"], "ttl_config": {"action": "DELETE", "expires_at": "1987-08-08T00:00:00Z"}, "updatedAt": "1995-04-23T00:00:00Z", "value": {"ptP9IAMbhtxc94o7": {}, "TmgcnS85j2XYqM0l": {}, "oM43489bqcwTeWIT": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'q9zV6fQD1JrxvaRv' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["DGI4jeypb7HVWjxw", "0GODsWv6InGQMTqS", "X1V0fKwPO18nxN7l"], "ttl_config": {"action": "DELETE", "expires_at": "1978-12-11T00:00:00Z"}, "updatedAt": "1971-03-12T00:00:00Z", "value": {"Q6dbvvJnwKp8KeLT": {}, "5SmbyPJdhnK2hGI0": {}, "rRRmKJX4Fn19XJKQ": {}}}' \
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
    --body '{"appConfig": {"appName": "5fiLiLdrKbCdnG0j"}, "customConfig": {"GRPCAddress": "LsLKaf6Eb2O0pKYO"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "zLbtXOnCyD0CGs4C"}, "customConfig": {"GRPCAddress": "Th1H8NpI7io6s3dv"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '3F9WnIDnIxWzu2YC' \
    --tags '["VMhZaOAApRS1pv3N", "R0TavuAj5ImiBNqz", "oodF2njI47zcHeLG"]' \
    --limit '43' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '40DBFWHuANqFvwFY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'nn39ouQiMCn3YZNs' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'FruoYL1dBfjW7ib7' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'fsHUyeoyzMbsQomr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'xFFAV23ZSxnP9iyO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "S9F4uVppuY0PR5vw"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'V8q2yl1WR47u7hH0' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'd3NL3l0rbDZlMi9R' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qfQsqI1aAnk0bqeu", "ub87yCIRWbRmrAef", "XBz1sLqkjGDQ5xuf"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["dhus31LRsKP7gBz8", "abHaQFbApDMktGwt", "dAs0C7XLfsVjmkvK"], "user_id": "sa3MJMjbVw4HEJH0"}, {"keys": ["pFBELplmkgq4gIcZ", "Y68sanN374cWMCqu", "foszOZL1mS8ozMq3"], "user_id": "PSJVMC9yzqb1oAWm"}, {"keys": ["XvFihOa8OANJE7Jg", "hP6aAvTT3W93WV8U", "a1gFcGvsvEqrlmxi"], "user_id": "8dQs5DcWKzWlAh6V"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '5sS0TvaDKUND5xdP' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "nzuNGet8AUYEfeFX", "value": {"NzwDCuk7o4dJ8spV": {}, "rGHCno24pj0VJIe6": {}, "MRYqoslwbxZS1Nfp": {}}}, {"user_id": "Fht9UVOklQy4G0k6", "value": {"DD71lRAcMpTY1Mtj": {}, "hLSM8D2fnHXQUaNn": {}, "fZBwmljN43APSVwE": {}}}, {"user_id": "yxfeHV8A7k5YDG6B", "value": {"UMlJx1TdVyy6B5n2": {}, "F9Yt6vNNlZTqp3Fe": {}, "9n9nhNUoz17I0uwX": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'kYsCGd3V8CbuDJJ0' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xBrqxJUv8goAmHgv", "mTe7wDagijbI5zvw", "UM46IZAQ4FdalNdG"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wdbl1IAWHz8YeL3K' \
    --limit '5' \
    --offset '48' \
    --query 'jsUmOipZA8a9CA6a' \
    --tags '["O7j11qLlTzVwCEnQ", "O44QyDK18RFyuU5Z", "eN1wIS5nir5Bp4XZ"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VmiIpQnAQax59zGv' \
    --body '{"keys": ["FXFl59dzKiQfxYRU", "2ZrLYT7D5Taf0Tpy", "YB9uYopTQ43yIRa2"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'WORC2yhH7ZTaVJuo' \
    --namespace $AB_NAMESPACE \
    --userId 'CwRgyQlQFSZFMVUB' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'TkCnAVxQW9OvGbp2' \
    --namespace $AB_NAMESPACE \
    --userId 'hz6zpPE4xEnsyYak' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'xGjy8sCcHHV5QfhL' \
    --namespace $AB_NAMESPACE \
    --userId 'cnHe2TjZaFYSDhwO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'Lg26r86vwucicQGW' \
    --namespace $AB_NAMESPACE \
    --userId 'l4BaP69ybH6jfRuR' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'iJ6tLwnxR6ZvikJq' \
    --limit '81' \
    --offset '90' \
    --query '3T2CZ8GFHutg6CAA' \
    --tags '["0NDap3uqMO70RMlT", "SX9R2lt1JdM1HZUq", "3hECpkxX79I302st"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UfbJYwxiKFNeNYcu' \
    --body '{"file_type": "94Sxdf67ZAwVoWxN", "is_public": false, "key": "xlrbaECvRIODsI1V", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'u6DDu0xVD3f1hrCv' \
    --namespace $AB_NAMESPACE \
    --userId 'd2MlcEO4F1KWfilG' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'Vdfu0vAHBRYN15as' \
    --namespace $AB_NAMESPACE \
    --userId 'yOL0VdWSlQi3PiUu' \
    --body '{"content_type": "IjOVxOnYbcZAg4WW", "file_location": "P2ZKK6PAXxF7UIpB"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'mTqVwO5DJFEF1zlI' \
    --namespace $AB_NAMESPACE \
    --userId 'BSSNMecooTczM1o2' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'bWHuei0Ctw33OUyg' \
    --namespace $AB_NAMESPACE \
    --userId 'qkhh2daOFbX9uKTr' \
    --body '{"is_public": false, "set_by": "SERVER", "tags": ["3TXeGlHcEuKwryU1", "UAOzr5aGSR2UCUv3", "xnU40frG1YGn9tRW"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '1y403Ng3YA2JHnu7' \
    --namespace $AB_NAMESPACE \
    --userId '7AJ9yfFJFUHA3NqD' \
    --body '{"file_type": "dGZcx0diQALSD4Ce"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'dZIQzJwtzXi69xNx' \
    --namespace $AB_NAMESPACE \
    --userId '831unez0bIEs58YK' \
    --responseBody 'false' \
    --body '{"tags": ["eEhRzgW4FDFkGOUN", "x8gZZgMeO9RY3z8j", "JqElyx8k2dm92Eq0"], "updatedAt": "1981-08-23T00:00:00Z", "value": {"bNrdsPfnEsBD6uW9": {}, "iG4G4NWPCCrzi9V5": {}, "K813gs0VxYMqaPPl": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'AyGqSuqHrXEenOzg' \
    --namespace $AB_NAMESPACE \
    --userId 'zriC4e3kcDMgrd9D' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["ZDmsTlaFNaBgLpWn", "Ktfhgeynlcj5jnz5", "tXb8biNXAtUKskMA"], "ttl_config": {"action": "DELETE", "expires_at": "1976-07-23T00:00:00Z"}, "updatedAt": "1980-05-03T00:00:00Z", "value": {"KDJfFkhi4GqTglO3": {}, "b59uoolseN1Iq2EN": {}, "a5SltAQgVzVpQRJ0": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'fMybs2yfDfPjt0Z0' \
    --namespace $AB_NAMESPACE \
    --userId 'NxAhFS2skyTOFXJU' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["zwE8mEDN07LWhWpx", "l2LEWtCN1JMavWup", "G8SA2ZKXkSWbiSQr"], "ttl_config": {"action": "DELETE", "expires_at": "1997-03-03T00:00:00Z"}, "updatedAt": "1991-05-09T00:00:00Z", "value": {"0dGzyySu7WcrWeaF": {}, "N63Pkvzcof7WoKR5": {}, "8KxnI8fNvEk8AVoC": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'sU5cqFti3R9s4Wod' \
    --limit '3' \
    --offset '89' \
    --query 'NG0kIU5vISVln0oE' \
    --tags '["v2rkBtYXWhmE4C4n", "8ExDCJDzkmumgT3k", "1SIgKHv75ZGa3fq3"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'J9Rbjvla2qd1wLl9' \
    --body '{"data": [{"key": "YPBSS1PsO5Gqaf8S", "value": {"eZ4fEWw6Zd1IvNBJ": {}, "YAWToAY4Mz9qzO4r": {}, "E5Vw6j76jFfS9A5e": {}}}, {"key": "julIkcxyuLmjt1GF", "value": {"F9DtTRRNJghUDH1a": {}, "BKv24VZ6SL2llJRi": {}, "FgF208qUjh51rzJI": {}}}, {"key": "xkJgpcBDMyAwfhLS", "value": {"Wkyp2ESzYpLdFvG6": {}, "dW3jNLvBS84ZkdiS": {}, "R6byB0qZjBIg0bIJ": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '9bQfWkyoRAjP3ANv' \
    --body '{"keys": ["GNPFKe8qYulMJQTl", "Y4fA865Agk5kkq5e", "5IIDmGCyCtYORuwA"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '0HH2GrCbjgYbLvos' \
    --namespace $AB_NAMESPACE \
    --userId 'Jhq0gPXpedJBNh6n' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'pSQe3KSL2RrKSTkg' \
    --namespace $AB_NAMESPACE \
    --userId 'lEniRHSBaV1xq85s' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'ow95Z2gnxsCryHzp' \
    --namespace $AB_NAMESPACE \
    --userId 'iojtMb4sR8ezEBr5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'NBTAvDA0pNJTR3eH' \
    --namespace $AB_NAMESPACE \
    --userId 'lZPTeDsAesiE1y8z' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'sLG0e9zpmrQrNnBW' \
    --namespace $AB_NAMESPACE \
    --userId 'm2APaoz8i4Bh0QJG' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'FhmjcrIzz0WFCQUw' \
    --namespace $AB_NAMESPACE \
    --userId '2qlgsm7mG8LO1tMQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'nF5lxD3eLwCBlRy9' \
    --namespace $AB_NAMESPACE \
    --userId 'mS7NxIFh3u2qhvBo' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'wxlcpHpQM5EvX2Bd' \
    --namespace $AB_NAMESPACE \
    --userId 'LeIJBNT8c5A5FQbQ' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'KDilGN21bi7OdHUB' \
    --namespace $AB_NAMESPACE \
    --userId 'M3YRi9GmrSktOjN3' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '98' \
    --offset '92' \
    --query 'H54QygvmAwYuzWhV' \
    --tags '["rc2E7o1eyUnpk0KS", "1ISFYver4giclR3J", "bOLN5NRyG9GyZKsi"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "qQoGltgiR1FvpHOV", "key": "GOBwPFM5c8ZucUSX"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["kR6m3HBcRQ2MEirJ", "8wBOvsggb85ng6rz", "cWeeGBLFaQg08LwL"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'dE5QB5dgcdhZlzJm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'PeMunamOCaJ7y3zG' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "YQJLoHl5nGrAVwJL", "file_location": "MbbacHiJ175X2uRY"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'CePG149Uz3yxUgGI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'dYEeW7CEIPKMSzEw' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "QuwBpbVFKa0rS3pe"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'jKN3O1Cwjalglr1Q' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1982-02-15T00:00:00Z", "value": {"ckXHXv7CrbdNSSEx": {}, "JEGCeE7mKs2oqVIU": {}, "90YkO6hHnMeQiYwY": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["pjYvYqzebXg6MWx7", "UuprqMTCpSvxuelA", "zmP151OeG91kyPf2"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'PNd5sSRcwdlRsou7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'qVF2gDdwmnJcfsiN' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'lALnHmbFfphh2wy8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '7dpkkFvqUn0vS7G5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '69hN2gBONnR1yKJG' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lwce3oTHDi5gvpjB", "kmzH7gApa1w5RPng", "YdqeNYtCYd0dBG6e"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '8mZKGrpnRxaETjWn' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["38S6XjL5kWkFuEW3", "J47dscWvBPg9lpnn", "csgutwYY4IhUXwdt"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '78' \
    --query 'v2IWo46GhH8gcAMC' \
    --tags '["Hf5jywkHkOnkkexC", "HyMSTG141nH3iyqO", "19SI7DjWFRLrq6Si"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["dsfRenagcMrOEZak", "1mn468f2JQHL0R9L", "O4JX8DCSgiL007jW"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '39' \
    --tags '["FYpB4xOelFxA8ecP", "QPa2qHGoh27dQgbh", "ze6xkxxro8wofEUY"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Qnag7wQDZOOOC1xG", "5MDPvOOCOR9IzWSN", "mV8ES2mGbkIsc4Gs"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'jIbWKdFuIewzfzd8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qBS5z6zg4c87oZqW' \
    --body '{"file_type": "Y0K7bebirIyD1Nbz", "is_public": false, "key": "SfYzUBonjAcQNYQh"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CgPyFkmkUZqNz94K' \
    --limit '10' \
    --offset '96' \
    --tags '["SoQ2ZpKebs5eMocO", "7ZCcXqPHmvjhg9w7", "uolN8BUWLrZKS92v"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Pegb9e2rdCqlRyiU' \
    --body '{"keys": ["OCcc9VMDQ5Cm9SqK", "vjVEJOWjOjfOJwMp", "uBuoIxBu703wK4ly"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'xpIkgyfttZDzTB3I' \
    --namespace $AB_NAMESPACE \
    --userId 'jMyjugR6FC27Mosl' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'l4iekz8Jz99iPFkr' \
    --namespace $AB_NAMESPACE \
    --userId 'PfQGYlB2HAkuDoMZ' \
    --body '{"content_type": "Kr4OHRxaQeYQaa2p", "file_location": "wl8hRu5XEsejG3At"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'otYrk9AJw4sFqGWy' \
    --namespace $AB_NAMESPACE \
    --userId 'YcB16bdryigOC1Ia' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'gxeN45YXKxcXqryO' \
    --namespace $AB_NAMESPACE \
    --userId 'uKfjAJwDkyxtnq9X' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'RPwj7Oj4W5AZA4v2' \
    --namespace $AB_NAMESPACE \
    --userId 'U74Xsodby259SYhd' \
    --body '{"file_type": "q9bUlHVjn1zvNHCu"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'un8TpfF8zwfruR6Z' \
    --namespace $AB_NAMESPACE \
    --userId 'rqBwQoQCSPm9BIXu' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lqWbqpRDjRaq197r' \
    --namespace $AB_NAMESPACE \
    --userId 'URyzqOHeqZs6iSnU' \
    --responseBody 'false' \
    --body '{"updatedAt": "1981-02-23T00:00:00Z", "value": {"rOjkK5HZzSzevLPG": {}, "WVjhcan9WFeG03LC": {}, "xP0O3IVAYuJoE8gL": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '1HvBYowZuMDIPwKq' \
    --namespace $AB_NAMESPACE \
    --userId 'DVlxFL83zUEidX4J' \
    --responseBody 'true' \
    --body '{"updatedAt": "1978-03-08T00:00:00Z", "value": {"c2bAYBbQQUegui6l": {}, "1RywWvv0Sk7GYu3T": {}, "ZUGDCvNw8sIIoR6e": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '935paYDULFktBeSu' \
    --limit '58' \
    --offset '78' \
    --tags '["VKmjVVxw060p5hJt", "vCa3cV1BxNNW4ybZ", "Eh2ArAa9ff35rKb4"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TciGp3hIUuznRK3j' \
    --body '{"keys": ["VRgywxWATTR3IIoa", "wxUvrZh8VTOUfhxN", "Cex8NlAAfGJfFDQO"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '4ZCPvtOKC9Nhwruu' \
    --namespace $AB_NAMESPACE \
    --userId 'UccWKgsP1oKVBVDE' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'e6HZsN0qRKhe206r' \
    --namespace $AB_NAMESPACE \
    --userId 'W6hDKmBdz7ZxAiwg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'EDHnPvi25zFPKti2' \
    --namespace $AB_NAMESPACE \
    --userId 'vUWUprehJIMsUhjv' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'gD703cjy8mTwqO1t' \
    --namespace $AB_NAMESPACE \
    --userId 'jF3q4LOCTbbyLXQX' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'fys5MALhErbfW3gI' \
    --namespace $AB_NAMESPACE \
    --userId 'M0J4Fd9bWgPJt568' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'rxi0fklgV7OBzskD' \
    --namespace $AB_NAMESPACE \
    --userId 'vjO3Ge9xPDArGqJo' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '463Knw7DaJIXDIcZ' \
    --namespace $AB_NAMESPACE \
    --userId '0Z9uXqSFDWn68DrO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE