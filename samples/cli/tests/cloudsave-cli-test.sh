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
    --limit '86' \
    --offset '70' \
    --query 'W6G7AmPnKORklHZL' \
    --tags '["M2ZN9mMbXh2Z7Nvq", "CHjlBCqJYRlnYndx", "POfMNfKTRdG3hwJo"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["t3cTikbUEKTaQMrs", "wGWilQLzvO8vk9P0", "NZYi8wzceGGsM3ZA"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'ScPiY7lkYQC7TpQO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'xjfyO4GGCTMagJMA' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'VOJ05LXNIAgGisnU' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'vWaPpZtlIDuZdZJt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'Gb8AefwKDxQrpZiY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '54' \
    --offset '13' \
    --query 'YEygqn4htgivK39Q' \
    --tags '["JZ3cBX0WuVZwIosb", "kkYzdRyifPqhtJOT", "POK0jKL7To4L0AAr"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "UPRzbrrdHf3nYl4c", "key": "d7qRJM2ghpGONNXP", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1995-01-14T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'wuVdhKIE5SVGp6Xx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'ZhvzTY1xLJ2Ld3tX' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "8Z4D2ucJFA51c6TZ", "file_location": "1skpdfs2iHxcw8Rq"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'GPdNrqeWkjwZWZoy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'v6RmvicvbbZb4e9Y' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["aBEiQehrgfBrLzGo", "Gye6qZYkvx80PGsz", "1fzMhz7TOxar9dvG"], "ttl_config": {"action": "DELETE", "expires_at": "1980-06-29T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key '2UaYD8wI8zhuI3Y8' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "NbOmhxBEpsyfhMZt"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'Gg4NxinBmT3GPX86' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'afo9gUv1TFujhHmz' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["dB0ByACoTbwmUtxV", "3iwGOxWblN3TNsx8", "odVUTf6CYXIgQWM1"], "ttl_config": {"action": "DELETE", "expires_at": "1991-02-27T00:00:00Z"}, "updatedAt": "1981-08-04T00:00:00Z", "value": {"Fjm9TY9zDGdBYLu9": {}, "QXaqy6cp1XsII8IA": {}, "ajEXY8nEf4ddiyp2": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'mVwxPTmUd5TGIR5P' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["J8zbpvi9y4D6wlHF", "3V6mbcR7Y8ygtnuS", "vYxdPL6GdyeQvhhi"], "ttl_config": {"action": "DELETE", "expires_at": "1984-01-24T00:00:00Z"}, "updatedAt": "1983-03-19T00:00:00Z", "value": {"1qyO4Btcpfb9M63b": {}, "le49roxnFrkgjJd0": {}, "PQUxogec0mgLNpKR": {}}}' \
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
    --body '{"appConfig": {"appName": "hxMZOcjYWsK4xIjE"}, "customConfig": {"GRPCAddress": "XyFQrcEpIwOe8O5S"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "PCVofpgFy6zMXu31"}, "customConfig": {"GRPCAddress": "FUZPLptWrsITAwjs"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'TPEcxhEK5GQVdwn5' \
    --tags '["azUQRhnJRKIf1okQ", "C1WmRivoBxg5LPHz", "Jgg4Itf0MWxWEedq"]' \
    --limit '8' \
    --offset '91' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '5qJASPqZDfMQxtTp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'spqQk4Fo7kBt8cyv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'F0WsZp0bQZKmTt3G' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'bSMVbNCgUaNCLIcj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'cCWaiT44AhQzNDhV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "CeeaEkeyyWZqpItU"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'TkOjgdH1rdR2LAOr' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'W2WzgE12ZRG1Q5Zq' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bqqxTRPPCHIQqR8x", "S7TW59O6Nw84lEfJ", "1DwdKN10Naxnjnz5"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["RY9pXhzg2AbnONnf", "oL1QtuYhhVl9U160", "vRjYJJoRRpTcCO9r"], "user_id": "Z4N9hqiZtLljPfBW"}, {"keys": ["3nBvmWzNQYLy9dmL", "Fu3gceL7KUuGWleI", "xcC7NwQSGRdAj9xV"], "user_id": "yTNHJtwYocJwlS0v"}, {"keys": ["PlpvIM0aShvabh3J", "SDLTefFuRfNSXiQ4", "LyQWHjXbEk0DVu3F"], "user_id": "yHU5HzdRlAa9Pdg7"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'qulImdydv3Hq7h25' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "UHbUGmKYgxhJjU73", "value": {"0Gt8MNhbY9zCnXBp": {}, "xCDXpkYKZdwHI3Au": {}, "rNdrnwwx0cwZ4EnV": {}}}, {"user_id": "G7mDDgD0319xF3OC", "value": {"cz8oM92dNLNO7Eqg": {}, "flcNeOUePES5ld8L": {}, "hRJ0xHSwp48rVjic": {}}}, {"user_id": "N72BZFcDXYrOLBlY", "value": {"pxiNz3U5Mx66fmSp": {}, "ORKG9bHVDtvhHMZV": {}, "xW3czrN2zw6Rqtrw": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'lLuVdHu6yb7KMSE7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Nz7kG9hRRDFR3gnc", "ZCzna3bbUoQEiwbA", "8B6p62Ir71cWd8KO"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PpXBvHUNmTElNSrq' \
    --limit '50' \
    --offset '29' \
    --query '2rC0jlIDeGEeLgAf' \
    --tags '["ya5PtNj84Udy5H0i", "ciHDLsaPZfmZmb8X", "3rc44x3eps9KMuoL"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r9FLoX9GQ7eRtevE' \
    --body '{"keys": ["gIbK82hOBTC4vm5V", "LJ5g2KMJkbGPKfYl", "5WQWw6sTiFuHxHX1"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'Bt5vKga6B72Qd144' \
    --namespace $AB_NAMESPACE \
    --userId '3htBdmaInwbNf7Mb' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'U0XqGxc9c8LHc4L4' \
    --namespace $AB_NAMESPACE \
    --userId '9XJWUO2VwD80K4HN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'yOrIDLsANITrKlC6' \
    --namespace $AB_NAMESPACE \
    --userId 'olOGKCrDO82NNj42' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '2a3W1f9wSKeVFJIJ' \
    --namespace $AB_NAMESPACE \
    --userId 'm5ALCxd1OD2od2tq' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eYRSnh0514ajzVth' \
    --limit '14' \
    --offset '82' \
    --query 'KyKL70e5oLo22Lb7' \
    --tags '["hI356KlY0ll573n4", "SQ7ndJv1JKiWLPgY", "zJhG9TpuYFoDr9bl"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dZA7HUEGng5XXDHV' \
    --body '{"file_type": "A5XFvp78mUvqRaWG", "is_public": false, "key": "RIxqB3Q7TS0Lqdod", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'q2ftBpPW0xmzUdXZ' \
    --namespace $AB_NAMESPACE \
    --userId 'OpDlXNM61DWHQwHS' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '0AfurKpw1XHMfd5w' \
    --namespace $AB_NAMESPACE \
    --userId 'yKU0dRUNfpLZYaeO' \
    --body '{"content_type": "MVgBVHyJ2PpC5k92", "file_location": "9syCkHToI28n03hL"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '74B0apH9mguQWCNP' \
    --namespace $AB_NAMESPACE \
    --userId 'JcAObpMhjmuX6lrf' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'zlffCuy8bJLhqqIv' \
    --namespace $AB_NAMESPACE \
    --userId 'St3VfvWAR2Af3JTt' \
    --body '{"is_public": false, "set_by": "SERVER", "tags": ["4KmVlT6ksM6FPNxC", "X0FLqRYMYSsWWTtN", "LdnpIHV2eGVFK1eB"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '3UdHfPT39jwxwJz0' \
    --namespace $AB_NAMESPACE \
    --userId '8ZZt12Gp4dyahMZf' \
    --body '{"file_type": "LWqZSvirirwBguit"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'EtKeOaNgmUS738VE' \
    --namespace $AB_NAMESPACE \
    --userId 'N9tNs8cePz9LLcIo' \
    --responseBody 'true' \
    --body '{"tags": ["ZwUQnTnXX4HwtcXq", "2tfWy6KLexRzHq46", "FJ6SA68CsnAuLuaY"], "updatedAt": "1999-11-08T00:00:00Z", "value": {"vePPgR9vzf0k1TbA": {}, "YeJLW0Nuz1ZcRH9o": {}, "OTSeAEtrcXcvcgiE": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'eMWf9D3vNon6icPM' \
    --namespace $AB_NAMESPACE \
    --userId 'MMgdzdXy2bRHpUmu' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["fstwhfWLvBYyyMmI", "05OPBROsGXxLYhHJ", "fcwJwQGE4wbONcjf"], "ttl_config": {"action": "DELETE", "expires_at": "1977-07-28T00:00:00Z"}, "updatedAt": "1995-01-30T00:00:00Z", "value": {"AweEUgWou3mSG5QV": {}, "EFJa6BE3Vj6oj9pI": {}, "5RltAri8on3PQoHC": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'raXMUZoURWDYhMHh' \
    --namespace $AB_NAMESPACE \
    --userId 'JS8xq3NHymnZQ6dk' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["J6BTBkkAuAVEv1QK", "clPeQcytjlV1NfrY", "myyYgYx41dBvvwfx"], "ttl_config": {"action": "DELETE", "expires_at": "1998-08-14T00:00:00Z"}, "updatedAt": "1977-07-19T00:00:00Z", "value": {"q8rrtemcd0T7nZH7": {}, "FOcr7dtWpnE4d2pr": {}, "mNB55hntAQLNdNfF": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'scLsGKbO1Fhx0Kom' \
    --limit '31' \
    --offset '29' \
    --query '7AJugUWAgpRqpKBu' \
    --tags '["J2FTF3rPqYEp5amZ", "XdXE5hNP4nYfMZBU", "EF32loNcDmWL20GR"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ikqwZhI5oSRRXv9r' \
    --body '{"data": [{"key": "mj5fJri9HtttRRpP", "value": {"d68WYXEYOUA4QXov": {}, "XJggUYamcbgQkMiw": {}, "dW5Q0deAoag8K3si": {}}}, {"key": "40o6kuZv0da169CN", "value": {"2BgtR31uZgscs8Z7": {}, "eZ3zUZn5bQGK37RU": {}, "r8gfLGBA8fGVSqbS": {}}}, {"key": "EoCzIH2TrkNU58Yi", "value": {"1GZGIhE3eaZMk2Uq": {}, "RR8mHxi1yJQZIAzk": {}, "9ZLWndEz8TA4zgH7": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'm3jKiOGF06zxN2Rb' \
    --body '{"keys": ["fExztuFI5eOyLIeW", "ulH4GEz57jjoOG5P", "CQN1fzqAiwXqzYm0"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '1vc0MZYKBswcgMWD' \
    --namespace $AB_NAMESPACE \
    --userId 'u1X57M8r08z0srrd' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '8OuQi9YcZllCRu7w' \
    --namespace $AB_NAMESPACE \
    --userId 'GM9G7tDRfMyf1i82' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'QTMweNbHkK9pGhoz' \
    --namespace $AB_NAMESPACE \
    --userId '1127xEULS6IvMJez' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'GWhB9cpPYAnCJsGa' \
    --namespace $AB_NAMESPACE \
    --userId 'cZkw2PA5FaREjGIj' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'KTLDVP87dEB0k9dO' \
    --namespace $AB_NAMESPACE \
    --userId 'I2qKlTVcVwnFryCy' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'klGQJ94fE5Yiqr09' \
    --namespace $AB_NAMESPACE \
    --userId '4MgOaStHbK6B3bSC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'Tf1Pv5AmAfqWkjz2' \
    --namespace $AB_NAMESPACE \
    --userId 'cXsSg82hmaKGKIYg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'nHxOPnUK3BTsNhRw' \
    --namespace $AB_NAMESPACE \
    --userId 'USfJh63TXuFpjiSu' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'BAeaRsdHU9PUqrMz' \
    --namespace $AB_NAMESPACE \
    --userId 'WJS9JDJkRktpasR4' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '6' \
    --query 'RtajaoXt28K80cxT' \
    --tags '["w943nJf2Iv4Qd52e", "5hzAX53P2hmw02Az", "pg5XDxZWWtBGKuOj"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "vCur6NJIXiq19OYe", "key": "ypSGcWw3422Lb91v"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["dKnwlJznb4DtOVwC", "E1xX1amSVbH8kltU", "JMEA4CdzvMiSZeJo"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'kuejcrgT16zHv9H3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'myHM1ICg2lUwh8Eu' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "nGSJ4yya1cUXip2C", "file_location": "wPfukZKjuNbnfHq7"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'JHV4lMSRMUsWsc11' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'JP5hHfWNCsHY0C2y' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "BtEuuhDTDlgBrgNf"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '6AaX2UliaguauD0g' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1983-11-12T00:00:00Z", "value": {"Hy0mJlImVuJMRu4n": {}, "RaUJ74JUGCo04l0U": {}, "hTRxqViTJ25ygvyK": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["0BecUDsBPBagqNNG", "ApEEcwLnbgkkm5Ii", "eSyBusITGlcBM1CS"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'Hpk27JQdXBz1uJlL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'nEgFe7g8qIw39zF1' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'LGVws4BstkN6uGsI' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'OZU7k5BbpYJ0mbCZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'DUNtBbi0tiVUU3Hz' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dEJTYpJbP8MaIBXQ", "ERb0xAGcveUMpr2M", "Kpdx4lf51XHe3XfZ"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '4gdGRjH6e7ReaE9Q' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BCjAxbnVW9Al1Ese", "61wtUFuBgvBAw17d", "nd5QudXqChtpY3yP"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '31' \
    --query 'KortCzfIizgsvu8e' \
    --tags '["xKL8Nh9P3WZ6usSw", "H1vA3DZHbKukLg5L", "ggqmBcIX6tRdp2Jp"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["oHXJuJIaNUUOS55I", "bpweAc6PvIACplkr", "HcHZY91NWJnZFhbY"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '60' \
    --tags '["txn9efQCRyYT9pqI", "ldeRkcdDjxI2oca9", "g0XvhXUQ8roQYxIr"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["4MYEXKSguxEuu92I", "dECPhWefukSbxK28", "JxLHvC8g3kFqgQqJ"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'BSJZndUx2HTiLvIW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '6M9MizvW8ceWq9dT' \
    --body '{"file_type": "6EsBHWtxjw8MCI0r", "is_public": true, "key": "6lxI465aJasq8jlb"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XkZNFdnM8vzfSKVl' \
    --limit '17' \
    --offset '87' \
    --tags '["oXldvFmkSR1U3Gzx", "wiZvfcgXj7OrINZ8", "oWfeJG2pazL8R3vZ"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MzxUHl7Nve2k7nin' \
    --body '{"keys": ["kXhEmSPZo1Sv4xVF", "JjcTGzgKajHhVSMm", "fp3mcH5LlaolJfuK"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'cBaJPuyHeb7b0LKG' \
    --namespace $AB_NAMESPACE \
    --userId 'KQOnSEyJqlvpOj99' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'RT490OzBI7rvpqhB' \
    --namespace $AB_NAMESPACE \
    --userId 'QqMUoDcbfH8NTiEv' \
    --body '{"content_type": "q1lUTmrbQxSafJxy", "file_location": "jVbiNGnV02ilwz1N"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'eT6Z58dS7nhGSKTG' \
    --namespace $AB_NAMESPACE \
    --userId '6vALkktMg9FfC84J' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'PN6UJJ7GLAQ859TW' \
    --namespace $AB_NAMESPACE \
    --userId 'WlenSFrzzFEjB80S' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '9Qf5D1lJLjIL4AYL' \
    --namespace $AB_NAMESPACE \
    --userId '6PV0OsTWZedbL3we' \
    --body '{"file_type": "FH6sKSMyZhJ4omae"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'tmRp1o1VZ0cwSnX0' \
    --namespace $AB_NAMESPACE \
    --userId 'kSvdUHBW1tf66Fcs' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'PePphqO9dHjFKzIQ' \
    --namespace $AB_NAMESPACE \
    --userId 'OlHkKkXSRuCMviF3' \
    --responseBody 'false' \
    --body '{"updatedAt": "1977-04-09T00:00:00Z", "value": {"IstkOtPigcnUBNoB": {}, "Tl68QWa5FUvyCURE": {}, "HuwOBAc8EABHjZsf": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '0aqYCYiTJtmFYiYx' \
    --namespace $AB_NAMESPACE \
    --userId 'FbfY7u9P03jNCQ9p' \
    --responseBody 'true' \
    --body '{"updatedAt": "1984-09-24T00:00:00Z", "value": {"poKD5aVlKRDIJSSw": {}, "hQrXuMrHcfLCWmiC": {}, "Of1DQDcvjaNN3Y2M": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZFnAJShwdXK4FxIG' \
    --limit '81' \
    --offset '51' \
    --tags '["v5j2e81RKrvTPqTx", "De7ilAUPTjazUomw", "H8boxbgOX8fc5vVF"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'P8moxUkzfkSN6S4e' \
    --body '{"keys": ["pKblkfURsZAgQ8NM", "VuhNenmjrUGfrJ0b", "31tVw5TbRknN9UOS"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'T8Ih8ksACcEvnuBI' \
    --namespace $AB_NAMESPACE \
    --userId 'vJuZ7J0cS9EudWEQ' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'febbQ4At6vwWty0e' \
    --namespace $AB_NAMESPACE \
    --userId 'C2MNxod4a7NCkFef' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'oeSgOm0dAj8w0w7x' \
    --namespace $AB_NAMESPACE \
    --userId 'bngeDJ3M2RUONKJ0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'PaHVKzD0NvDa5QZh' \
    --namespace $AB_NAMESPACE \
    --userId 'IXkicsjRRaEfJcjU' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'oPs1V0AqjZoXi3AI' \
    --namespace $AB_NAMESPACE \
    --userId 'JBRL0azcsNfncnLZ' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'bIHVQVaMVBr73mml' \
    --namespace $AB_NAMESPACE \
    --userId 'gx1TRsdBdcreU6hf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'bd0uu1mXj8IJWTez' \
    --namespace $AB_NAMESPACE \
    --userId 'WNXSpkN7ZKFd3op8' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE