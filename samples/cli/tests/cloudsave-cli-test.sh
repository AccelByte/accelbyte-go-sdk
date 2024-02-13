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
echo "1..102"

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
    --limit '80' \
    --offset '26' \
    --query 'pZgzFnwvT8o9AZZn' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["IBZbJc7ABI1BnxwJ", "iNxMowmOcJjkKcSM", "BwJaUj9ixcqPEpfX"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'PAYpoud8zDxidg0J' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key '9QqmMmoRK5FJqv3B' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '0cBO7edU7QZg4kTs' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'MhXGZZf8hBjujFmZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '89' \
    --query 'FHy1W7SD04oN7MG8' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "yiGUIUfqY9SKJPls", "key": "6SVUwjbVSjxE4oSq", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1996-01-20T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'YIwMGsp9S91TSxFv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'gynrk3Gmxqh1dpXo' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "eOKlX63Z7EyXeIqM", "file_location": "c1RwVTou75TlRIRA"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'RDBWWBr2Ssmr2Yks' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'OywF7xAEpIPD0BI6' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1983-12-26T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'KYHNB2hpGMBEAJgQ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "Cqyu3B1q5qU3wbkJ"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'HhMIB6MGlwVcg2ap' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '1l7x8ux7cDZZUBee' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "M85heLfuu3dF2g1W", "value": {"nyuPeBNGfmo4J6ee": {}, "o21gbYM3DO8ym8lY": {}, "jeeuEjhwkGD5KIeV": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '7SrIDqn2PzBBIC5y' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1987-08-29T00:00:00Z"}, "updatedAt": "UPuTvkCaVkYlgrY3", "value": {"xLYQZQLATHdF12uC": {}, "IxHalC9NdOUfUJn2": {}, "tbBfdPqDwpF1IU2Y": {}}}' \
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
    --body '{"appConfig": {"appName": "sHdasx5Iqf0lYMvG"}, "customConfig": {"GRPCAddress": "SPDpoZYrv0GCenuT"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "TOio2nRDHmWDxNsM"}, "customConfig": {"GRPCAddress": "Ul6XCcMKFx4iX92F"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'kj7NtBwdmpH2tXxz' \
    --limit '41' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '182S8pt6SMpEXfET' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'z95FnFOniyTJAiD8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'CT10B2e2TPWBFUdG' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '2sNLqRs8DMEGCjn5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'MnYCCWFpKjdQ2I6d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "Fnu3rDaAdkRYODaf"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'ZAYGkgoAdEE2aoBs' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'Ra2oALiQlCtUyhFE' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fcQv9C5dvcJFWywN", "48jSkwuDbgGoJM7l", "ZOnOLeIjrI9sAgfW"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["aH7Gtfn8cXtZFY5I", "Tl6hN5TJARPObiqh", "oD3AnRhmY5d7Yekc"], "user_id": "CwoSAbsI5oBQA9Dk"}, {"keys": ["BdSwwJe0P0LAGZQF", "8IQ4ExdpLjslK8q7", "VmP5oLvCtUa9D4vE"], "user_id": "DHIUXHYKQfvXKGtB"}, {"keys": ["kgdegrCx3w9Jnbv3", "cmp5klDEoKHvspdz", "2EFcdI5EEO3ALKAS"], "user_id": "HQhHuw4MT8OuweFW"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'onagcnpnYV54GFgT' \
    --limit '23' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 34 'AdminListAdminUserRecordsV1' test.out

#- 35 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OwKXNjW5bVwwLvAM' \
    --body '{"keys": ["rDRl7KsIEkHR3jwL", "lJGLnYjR6UY7cAHp", "sL03zb85itmoqvCy"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 36 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'ZFQ8U7olpPVCg2bT' \
    --namespace $AB_NAMESPACE \
    --userId 'kWU7tA7TCOeORNhf' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetAdminPlayerRecordV1' test.out

#- 37 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'qWKoLLfbSiJdClxf' \
    --namespace $AB_NAMESPACE \
    --userId '8PV9HQuq4aewstZF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'AdminPutAdminPlayerRecordV1' test.out

#- 38 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key '0AKSaTC2iO3QNxNq' \
    --namespace $AB_NAMESPACE \
    --userId 'sxdAAYG7lZb6MIoy' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerAdminRecordV1' test.out

#- 39 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'tZ078tOApnwxKIUs' \
    --namespace $AB_NAMESPACE \
    --userId 'pjnbFzSOTCEZzFey' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAdminPlayerRecordV1' test.out

#- 40 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '8XHwjo3VaxsLeVzv' \
    --limit '19' \
    --offset '84' \
    --query 'O2rEm62rQktszGiE' \
    > test.out 2>&1
eval_tap $? 40 'AdminListPlayerBinaryRecordsV1' test.out

#- 41 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0lP26oQf3Qts7jf4' \
    --body '{"file_type": "H1xpUhJ6dBbP3V9P", "is_public": true, "key": "lVCHuWBB65DRsTJm", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryRecordV1' test.out

#- 42 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'CVq97o1QpOAsrmnt' \
    --namespace $AB_NAMESPACE \
    --userId 'S74b1VJgwgEtcwTv' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerBinaryRecordV1' test.out

#- 43 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'mJt4o97YDVEy8FL2' \
    --namespace $AB_NAMESPACE \
    --userId '92uxf6qUKXUGXWCH' \
    --body '{"content_type": "NFLYqGat50241AZC", "file_location": "lihudz1w9Ias59Cb"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerBinaryRecordV1' test.out

#- 44 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'fY3GJ2VxUEFXDUit' \
    --namespace $AB_NAMESPACE \
    --userId 'OXQ0nzbuxP1dj3AF' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeletePlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'LMM36SDIkrWqKbw0' \
    --namespace $AB_NAMESPACE \
    --userId 'otlOrXAA52qppKJv' \
    --body '{"is_public": true, "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 46 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'fU3EacDkiBQ8ZseK' \
    --namespace $AB_NAMESPACE \
    --userId 'jqSOrPYisxC0DmpV' \
    --body '{"file_type": "S7qoLOX6zZdcbuhC"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 47 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'vIPcN4ugozjeZ4wf' \
    --namespace $AB_NAMESPACE \
    --userId '9EWqAtEaQknI8VOc' \
    --responseBody 'true' \
    --body '{"updatedAt": "iHkhcm588HUxw0qQ", "value": {"srElxGXb0v3pOrxD": {}, "rEKQYm3kigolbsAo": {}, "jeXpz22iVSsqXMM6": {}}}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 48 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '7TE2J2dAjVdL8tPL' \
    --namespace $AB_NAMESPACE \
    --userId '73sCiYwxis87MLcm' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1991-02-18T00:00:00Z"}, "updatedAt": "3p0UTZLaO7OlNg2x", "value": {"LBbJppHr4sQ5INc2": {}, "k8yUgn3oBmrTuvGS": {}, "RNV89UM0PQhpT0kw": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 49 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'iiWXQGYH2tvL1BzQ' \
    --namespace $AB_NAMESPACE \
    --userId 'ExThQKLCYfNVv70t' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1993-09-07T00:00:00Z"}, "updatedAt": "6AIXrLtDM5SFjGxg", "value": {"eB3Z9nL0ou0WYG06": {}, "KR5c9Vzx827w38ip": {}, "R064cXrNSdd4bycj": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 50 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'fPx6YvfjcpWKCJYG' \
    --limit '59' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 50 'AdminRetrievePlayerRecords' test.out

#- 51 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WA8zcjQTJ33t7lf2' \
    --body '{"data": [{"key": "YudZE39eS4l2RAW2", "value": {"dj7kKQk2gVs8G5Sb": {}, "TM97xS7D13EUHqmV": {}, "25B5km7kCFY0GNk9": {}}}, {"key": "BZZotIxwyABIdKfb", "value": {"Y3k5xWTDQsSpMk5I": {}, "iYG8luRS51MhyJKh": {}, "OiQk7e59loczX462": {}}}, {"key": "b9GElBEpDktYxqyR", "value": {"tVG5xXK7wtSHldIV": {}, "p2KHRF5apvjOyaJw": {}, "FWk7crXDChmQq6OA": {}}}]}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordsHandlerV1' test.out

#- 52 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '48RT4z6n9Rzt22pR' \
    --body '{"keys": ["67AoeyhctUecOugD", "nqB3mi14LfYA7rbE", "iFL78k4kiBfFVDdp"]}' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerRecordsHandlerV1' test.out

#- 53 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'SdbE3PdTVfpgne1d' \
    --namespace $AB_NAMESPACE \
    --userId 'fwAcPV0A8KmY90VW' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerRecordHandlerV1' test.out

#- 54 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'xb2ZLk95T3gdUu0W' \
    --namespace $AB_NAMESPACE \
    --userId 'zEoFynN3TDplz2K3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordHandlerV1' test.out

#- 55 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '8lWVprqgo1mbkMOB' \
    --namespace $AB_NAMESPACE \
    --userId 'NYnMCKy9JOm2zWq1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 55 'AdminPostPlayerRecordHandlerV1' test.out

#- 56 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'qiSrA44VJ5vehz8c' \
    --namespace $AB_NAMESPACE \
    --userId 'jVWaETYPKf12GDI1' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeletePlayerRecordHandlerV1' test.out

#- 57 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'ydqeBSKzqqhjZ415' \
    --namespace $AB_NAMESPACE \
    --userId 't2rO47hY2QrL8sYo' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 58 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'zaiYLgprEo3z383S' \
    --namespace $AB_NAMESPACE \
    --userId 'i9B0LEn4UvJSZkba' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 59 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'GbURY80lrGPvw1Tz' \
    --namespace $AB_NAMESPACE \
    --userId 'mS6639Ylaum1OTXu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 59 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 60 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'axNFvaimppK098RI' \
    --namespace $AB_NAMESPACE \
    --userId '0bPplmtOTaYLBmA2' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 61 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'YHu3pMJ4MNjG0tFN' \
    --namespace $AB_NAMESPACE \
    --userId 'fGSrMqSSMMiyG8RR' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 62 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '42' \
    --query '76fQMV2yY6x4CWtX' \
    > test.out 2>&1
eval_tap $? 62 'ListGameBinaryRecordsV1' test.out

#- 63 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "0as0L5mi8QMroL5o", "key": "70z7gMrdawzlRMrZ"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryRecordV1' test.out

#- 64 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["SRjYyCddlMHJcDHV", "mXwV2JwAJiCWZwFe", "CSY7wPmTwXImMgWu"]}' \
    > test.out 2>&1
eval_tap $? 64 'BulkGetGameBinaryRecordV1' test.out

#- 65 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'dnRULv4NNiHlJgJL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetGameBinaryRecordV1' test.out

#- 66 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'fdvG2dxOAAYuLmDr' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "nUY2ifP2JNbdI5aI", "file_location": "AnHBPXaH96bZhbyH"}' \
    > test.out 2>&1
eval_tap $? 66 'PutGameBinaryRecordV1' test.out

#- 67 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '8QaU7YidXbkEUiMt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameBinaryRecordV1' test.out

#- 68 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'Jz1O9RAlLSKDkyAt' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "WN4p8Z9eEfwB1TWt"}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameBinaryPresignedURLV1' test.out

#- 69 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'CJgljTSxyd9UQFL6' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "WtJ75Fd3Me76LfPH", "value": {"RCVbcree7XFLVExk": {}, "2iG5PrDLlsJzLPDY": {}, "Yr1kLUBxJrWVMmvx": {}}}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameRecordConcurrentHandlerV1' test.out

#- 70 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["IM7CtP0ZAuzc55n2", "AszuMbSYF9h9dcUk", "C385ALJBJ7MwO0mg"]}' \
    > test.out 2>&1
eval_tap $? 70 'GetGameRecordsBulk' test.out

#- 71 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'dDxUZXBNoUcH9s0K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetGameRecordHandlerV1' test.out

#- 72 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'yx31qnrhHpZEhEAb' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordHandlerV1' test.out

#- 73 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'tiW12AbqiEsWXlgI' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 73 'PostGameRecordHandlerV1' test.out

#- 74 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'qolFeZCpqXQhrNmN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteGameRecordHandlerV1' test.out

#- 75 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 75 'PublicListTagsHandlerV1' test.out

#- 76 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'FOhNRYcn8UIR9TZX' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["x3Pf7wiIUiuWr8Vf", "DSiHJSRFaRosSfto", "OyoG7TvuzYaLQ3J7"]}' \
    > test.out 2>&1
eval_tap $? 76 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'irZvZ2JA7d0GsYJr' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fLvwFIAtPO6ZAT8W", "9iPVw0Lbh2j4Ek85", "VZWl93l4Y7y6fXHd"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 78 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '75' \
    --query 'rKYpmK77HGX9dzEQ' \
    > test.out 2>&1
eval_tap $? 78 'ListMyBinaryRecordsV1' test.out

#- 79 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["u4EITg0FNudOhHQr", "Kz3P63IIXyeV8064", "Vt9vGA7a2C1nEYRG"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetMyBinaryRecordV1' test.out

#- 80 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 80 'RetrievePlayerRecords' test.out

#- 81 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["y3WGRsotyDRtk5dL", "VPHHpxiopNdVI1Tu", "CsiW7N6JpX3Z0iWE"]}' \
    > test.out 2>&1
eval_tap $? 81 'GetPlayerRecordsBulkHandlerV1' test.out

#- 82 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'LAgOs9fUA9UXmI4U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 83 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CEaX3a6v1uoBdsSd' \
    --body '{"file_type": "MioUyH4zZjI9VwrF", "is_public": false, "key": "m2A4QcZa7Lvr64lD"}' \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryRecordV1' test.out

#- 84 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Qi2upB407qncBYtX' \
    --limit '54' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 84 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 85 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wSQslJ6De3IMoENU' \
    --body '{"keys": ["pGI90NwfwivXQ6of", "WXAw1dFxbMDn2wlU", "YfxuzocpEvmcA8NC"]}' \
    > test.out 2>&1
eval_tap $? 85 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 86 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'X7nWdnV4mJYSTaet' \
    --namespace $AB_NAMESPACE \
    --userId 'Ueag7PNIVpgByz2d' \
    > test.out 2>&1
eval_tap $? 86 'GetPlayerBinaryRecordV1' test.out

#- 87 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'QqeOWBTFt7UAGfWK' \
    --namespace $AB_NAMESPACE \
    --userId 'pfcemU5iua7cU7ns' \
    --body '{"content_type": "d9NBF0PnF12a269V", "file_location": "1z8rlDFMVGA1Qcx2"}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerBinaryRecordV1' test.out

#- 88 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'TPIpNRpnShFVstLt' \
    --namespace $AB_NAMESPACE \
    --userId 'iE895KDVNzTt1TeV' \
    > test.out 2>&1
eval_tap $? 88 'DeletePlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key '9XBiCt6RT3uiBTbt' \
    --namespace $AB_NAMESPACE \
    --userId 'IRyRd0o3omfV5LMA' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecorMetadataV1' test.out

#- 90 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'teowFeOo6nGciduC' \
    --namespace $AB_NAMESPACE \
    --userId 'GYG4aIrcy7bDvyhO' \
    --body '{"file_type": "QMiwRdTPfLFrqCrz"}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerBinaryPresignedURLV1' test.out

#- 91 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'UVKSb2OwuletkCyj' \
    --namespace $AB_NAMESPACE \
    --userId 'ngNTL09m7iaZid9i' \
    > test.out 2>&1
eval_tap $? 91 'GetPlayerPublicBinaryRecordsV1' test.out

#- 92 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'Pjs8BCIo0ewgZ8xC' \
    --namespace $AB_NAMESPACE \
    --userId '8zu5FQ6sDFIdJL6V' \
    --responseBody 'false' \
    --body '{"updatedAt": "2TybMAXzZ8JPzpEu", "value": {"ojaxfHELkm4ZF633": {}, "Qsqq8NXBYwB3cGi6": {}, "wQQG6uFue7g43EzX": {}}}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 93 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'mSzaEQoTuO0cds2Q' \
    --namespace $AB_NAMESPACE \
    --userId '5rJ1rl3VxV6XpC6D' \
    --responseBody 'true' \
    --body '{"updatedAt": "qlEgNXkwarhLxeCj", "value": {"foGVkUrgttqOoeo8": {}, "EUJofSmz09Q5Rokt": {}, "1VngItHNuxeWseZu": {}}}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 94 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'n5lYQdtC5LyXb8FA' \
    --limit '85' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 94 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 95 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'w0fCHksjp8i1eOKq' \
    --body '{"keys": ["I4gjVSwmOG1bmV4P", "k9C2t9vR9cjUFDvF", "ajTguTfeJcJ6N4lH"]}' \
    > test.out 2>&1
eval_tap $? 95 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 96 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Fe0F95Ur5KZGWk3i' \
    --namespace $AB_NAMESPACE \
    --userId 'V5p5xzLxMHNdbeiu' \
    > test.out 2>&1
eval_tap $? 96 'GetPlayerRecordHandlerV1' test.out

#- 97 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'lTGapFMGN0kaPvYF' \
    --namespace $AB_NAMESPACE \
    --userId 'oMDgXC1ZupdpOmoS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 97 'PutPlayerRecordHandlerV1' test.out

#- 98 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'HnMn2uSTIs76zKbH' \
    --namespace $AB_NAMESPACE \
    --userId '74Ak2QXu4dNxM45G' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 98 'PostPlayerRecordHandlerV1' test.out

#- 99 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'sMgHF19LpZxFl11a' \
    --namespace $AB_NAMESPACE \
    --userId 'cKFSle4ACy1gaBDG' \
    > test.out 2>&1
eval_tap $? 99 'DeletePlayerRecordHandlerV1' test.out

#- 100 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'HzdwVOCwllCWa9Cb' \
    --namespace $AB_NAMESPACE \
    --userId 'WHFOvZ2l27dbyLrb' \
    > test.out 2>&1
eval_tap $? 100 'GetPlayerPublicRecordHandlerV1' test.out

#- 101 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'Dz68oKc7Pp5htz8I' \
    --namespace $AB_NAMESPACE \
    --userId 'RhwmcPwlKD1ObnzD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PutPlayerPublicRecordHandlerV1' test.out

#- 102 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'YUPkGU4ioZDZso0A' \
    --namespace $AB_NAMESPACE \
    --userId 'aFxYYo3AMmoUp2QW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 102 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE