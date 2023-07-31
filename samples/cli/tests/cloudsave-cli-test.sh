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
echo "1..61"

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
    --limit '77' \
    --offset '37' \
    --query 'tXFKI4B6iuPbQPxe' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8q9xrVxj8eqbDtw5", "XV0fNC7VuJJ4lqGP", "1P9uiDfpHBOGq5lI"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'o8ko815HLhgI39F3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'vPhFhk6BqPOFjMnE' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'WqHrPd4oGBCG7oHW' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'orQqI52BwnNeFQhP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'JXhJhpurqYNZyfnc' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "olxeIa5Dg8jEt9fQ", "value": {"gAotmmU90ZhURHCU": {}, "9oEKCGzgpncRjlVm": {}, "w8au8ILpbIXWokLp": {}}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 9 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'TrnJ1bqKxhsylc3t' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "BqtZRtQVaeif2PmY", "updatedAt": "eFwG0NQrmnqbuPnp", "value": {"7sBS1cgKoGgFgdRN": {}, "iCY1mFaVfOuw73qL": {}, "U4KlG7kR0KFy8hnp": {}}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 10 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'GetPluginConfig' test.out

#- 11 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "ZCEmhiEx9lH9dJ5e"}, "customConfig": {"GRPCAddress": "WGs0vNiCZSMExM5Z"}, "customFunction": {"afterBulkReadAdminGameRecord": true, "afterBulkReadAdminPlayerRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": false, "afterReadAdminPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 11 'CreatePluginConfig' test.out

#- 12 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'DeletePluginConfig' test.out

#- 13 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "fMN6csl3G8d6WE9Z"}, "customConfig": {"GRPCAddress": "gihuTTtE9DFhW2uv"}, "customFunction": {"afterBulkReadAdminGameRecord": false, "afterBulkReadAdminPlayerRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": true, "afterReadAdminPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePluginConfig' test.out

#- 14 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'qSqpD5iJn9z8QUlQ' \
    --limit '78' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 14 'ListGameRecordsHandlerV1' test.out

#- 15 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'oSn5ifW2xCN5yvjD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'AdminGetGameRecordHandlerV1' test.out

#- 16 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'GQYPdz1aCjJBeiZL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordHandlerV1' test.out

#- 17 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'PUUyc33fDDXDrjD5' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPostGameRecordHandlerV1' test.out

#- 18 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'WLrD19DmYSlytaxS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteGameRecordHandlerV1' test.out

#- 19 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'zpmqTQvPBJlhFeYO' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["J905fIzX79Zhb41b", "Ch6EWn50NAQvEZSU", "DbDadkvjNn24GIB9"]}' \
    > test.out 2>&1
eval_tap $? 19 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 20 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["K5TFduLKVMNcYZK0", "PB5yyOp3PT2uRcOd", "E6uDpWsxEZ5YiLZR"], "user_id": "LGDRPQM8kKvWr0Eh"}, {"keys": ["d9UC3gfMYFMKIUuW", "2mngRllFSeBfABOw", "bCbsvRNRqKLHkZcN"], "user_id": "B50m779PwktMTl9j"}, {"keys": ["G4sIM0Sk3hGboqH4", "2CO0s9D10JXyHuTC", "63OLvzHD15dWYexf"], "user_id": "TzNmuWO9xIl3Q5zv"}]}' \
    > test.out 2>&1
eval_tap $? 20 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 21 ListPlayerRecordHandlerV1
eval_tap 0 21 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 22 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '8vaYlJ42MkdAC2mT' \
    --limit '17' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 22 'AdminListAdminUserRecordsV1' test.out

#- 23 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BGozDKyd2gUScfYr' \
    --body '{"keys": ["m30DW9zXq0N2AqdT", "3sBgGwL4YmFm94fg", "YfjEHWbMdZGY9RJr"]}' \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 24 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'glcFZDGqvXSEnoOz' \
    --namespace $AB_NAMESPACE \
    --userId 'M86vGcRUDHdNo5Mk' \
    > test.out 2>&1
eval_tap $? 24 'AdminGetAdminPlayerRecordV1' test.out

#- 25 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'B4yY1iK7LTPJWqKg' \
    --namespace $AB_NAMESPACE \
    --userId 'a5sbE9hWoPRKfv02' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutAdminPlayerRecordV1' test.out

#- 26 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key '2YnqCOAdDvlhG4TG' \
    --namespace $AB_NAMESPACE \
    --userId 'v0cgZvn15qzNb8j4' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostPlayerAdminRecordV1' test.out

#- 27 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'AOGiwvRRVS28ViKr' \
    --namespace $AB_NAMESPACE \
    --userId 'PIMBi8djIOux4xLx' \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteAdminPlayerRecordV1' test.out

#- 28 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'KVdTYnr6c6bWvCPK' \
    --namespace $AB_NAMESPACE \
    --userId 'aTONdfDuHTItJGIN' \
    --body '{"updatedAt": "XCeKeVKbNLnx115R", "value": {"7LgSz7chL87gHpAp": {}, "YEIvJqMN3TZO32Xs": {}, "notuuB16oxr2PXR8": {}}}' \
    > test.out 2>&1
eval_tap $? 28 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 29 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '6meGcdcoEuuU6vZJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Agsys9CZNuFa6dPL' \
    --body '{"set_by": "KoyVN79WN38xbGZF", "updatedAt": "LDWYp8IhmN99hT3p", "value": {"clAS6R5tAvaAz1a7": {}, "RKmdkj24CoraUqpS": {}, "LuLkccivlk3pbpxq": {}}}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 30 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'VcONQZbgwy71qWTZ' \
    --namespace $AB_NAMESPACE \
    --userId 'VGjMsoVbtd9xYQSK' \
    --body '{"set_by": "RhZIHOIat1RMCQYl", "updatedAt": "wBishcmumj4FjQEf", "value": {"8RyjqPwQsVdjalA7": {}, "Y4dQWO6ABf0waGcz": {}, "zsIBdRz4kz1B9qtZ": {}}}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'D1jBbDnUoYnCLGpi' \
    --limit '80' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 31 'AdminRetrievePlayerRecords' test.out

#- 32 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'qcjMXnrqbIK3Pvpd' \
    --namespace $AB_NAMESPACE \
    --userId 's8HGhwMfiML621Hq' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerRecordHandlerV1' test.out

#- 33 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'wzYRSje3HotUI427' \
    --namespace $AB_NAMESPACE \
    --userId '7NWKVT2sFluerO84' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPutPlayerRecordHandlerV1' test.out

#- 34 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'gJbQscsKZwwiBF6Q' \
    --namespace $AB_NAMESPACE \
    --userId 'oRuDGUaOMjveF9K7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPostPlayerRecordHandlerV1' test.out

#- 35 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '6r41TyVMT00TPW3q' \
    --namespace $AB_NAMESPACE \
    --userId 'P5O8095pXAHrh43Z' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlayerRecordHandlerV1' test.out

#- 36 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'xx55XdD5lGlHIC27' \
    --namespace $AB_NAMESPACE \
    --userId 'FbvFHHXMq4Mh5J0O' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 37 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'O6N3aUysfsRF5c18' \
    --namespace $AB_NAMESPACE \
    --userId 'bxAIR72YBYLoyB9m' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 38 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'hx3glYpQOejO7AAy' \
    --namespace $AB_NAMESPACE \
    --userId 'Qqo76skRfBVSe0eN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 39 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'IxvbATYsQAVWeBug' \
    --namespace $AB_NAMESPACE \
    --userId 'IrpBwrjnIzUw3zwL' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 40 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'RrEVoxe9xnF2egyk' \
    --namespace $AB_NAMESPACE \
    --userId 'pgcPdhj9izsdCzxu' \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 41 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'v2eEMOHmX0Rc2Hii' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "DM2Rwg613tK4skLI", "value": {"9EMmuNY94PiJCPK0": {}, "2MBYlHKhqWA3adJ6": {}, "eWn3OuNugC4x2NCg": {}}}' \
    > test.out 2>&1
eval_tap $? 41 'PutGameRecordConcurrentHandlerV1' test.out

#- 42 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Ln4OxLKtosa6nzvn", "3JSsqIHHcRZCjgn1", "dtQJtGbt7pLLtofu"]}' \
    > test.out 2>&1
eval_tap $? 42 'GetGameRecordsBulk' test.out

#- 43 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'X86l9BTUiehJvabz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 43 'GetGameRecordHandlerV1' test.out

#- 44 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'bhGU3zHmrpJzfWa7' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 44 'PutGameRecordHandlerV1' test.out

#- 45 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '5Qw7AXmlyKaTcd8R' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 45 'PostGameRecordHandlerV1' test.out

#- 46 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'i6FlxfGYqfObeJyR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'DeleteGameRecordHandlerV1' test.out

#- 47 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '0wVKJTvounIwIP1u' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Nyeoz70bWTg5RHhc", "cyJHs9xdDh3TkbN8", "vDpzCrBk95BZRL7L"]}' \
    > test.out 2>&1
eval_tap $? 47 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 48 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '90' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 48 'RetrievePlayerRecords' test.out

#- 49 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Ked8VcqQPaeA0uUH", "WzBlBYLkrP48qSnT", "tL7RlRjLC7P1ry6R"]}' \
    > test.out 2>&1
eval_tap $? 49 'GetPlayerRecordsBulkHandlerV1' test.out

#- 50 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'dFFNGPyeAiuwFBwG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 50 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 51 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'K6Mg1IgLB3RafbCz' \
    --namespace $AB_NAMESPACE \
    --userId 'EUqynDTwB4vqg1Qc' \
    --body '{"updatedAt": "CqmfYkyEpQe7wMUw", "value": {"5sF6mLt5Px12o2aW": {}, "apP4tR2lJ8ailMpM": {}, "6Hnhfdu3SRsJsRcZ": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 52 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '7fkLUrVV5kgRbcuX' \
    --namespace $AB_NAMESPACE \
    --userId 'bScA1E1cO4kfI8cF' \
    --body '{"updatedAt": "kStzVgd2L4fn60Rr", "value": {"AHf87wjiE3xxRQ8r": {}, "oxSYITIMqMQdZ5pk": {}, "Kc6RM6Mc8Hnnipuo": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LAUrSH3RO9RnDxFq' \
    --limit '97' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 53 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 54 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wmvGXsNymi27Do77' \
    --body '{"keys": ["UWs6t7mczp5UBf6K", "7qA5W5uopZ7f9zl8", "zk3UmvjbOjW1I9W7"]}' \
    > test.out 2>&1
eval_tap $? 54 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 55 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'JVuW3aTpq0CFlu9s' \
    --namespace $AB_NAMESPACE \
    --userId 'BIKOr20g9VRAMDeD' \
    > test.out 2>&1
eval_tap $? 55 'GetPlayerRecordHandlerV1' test.out

#- 56 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '53JIwFprVAetZ5hD' \
    --namespace $AB_NAMESPACE \
    --userId 'BEBNQNOqlQcG0uGn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'PutPlayerRecordHandlerV1' test.out

#- 57 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'efZdjamLLdEaLkc2' \
    --namespace $AB_NAMESPACE \
    --userId 'RqhR8BfsZmoYaGW3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'PostPlayerRecordHandlerV1' test.out

#- 58 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'LWKaIuXxOe1lXvno' \
    --namespace $AB_NAMESPACE \
    --userId 'wYi3772Ud6mGpX5p' \
    > test.out 2>&1
eval_tap $? 58 'DeletePlayerRecordHandlerV1' test.out

#- 59 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'fgadZzWWK0aqrEYY' \
    --namespace $AB_NAMESPACE \
    --userId 'jpz7E49fKFbPnXZ8' \
    > test.out 2>&1
eval_tap $? 59 'GetPlayerPublicRecordHandlerV1' test.out

#- 60 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'idfgjFob6BoQgyHZ' \
    --namespace $AB_NAMESPACE \
    --userId '6ZbU8KqZ5iN4jY4D' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'PutPlayerPublicRecordHandlerV1' test.out

#- 61 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'EsNOQfFEjep0e1H9' \
    --namespace $AB_NAMESPACE \
    --userId 'COsb5MJnPjjkWMco' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE