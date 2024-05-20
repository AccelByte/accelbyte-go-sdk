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
    --limit '62' \
    --offset '27' \
    --query 'YaQU8tKHxGRh8ywr' \
    --tags '["bQCxQjBfD9G1A5pL", "jgREyLN3M85VCm6h", "HNV7zR9TMEwNrWga"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ZSbgo1Kc495lnGvn", "kY6EebRqcdy2zAl9", "Rqe5ZKygnjDMghAX"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key '804WVBMCWhq38jPp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'sbgVvlZpBSma67CZ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'ujPQQCeQBnCPY3F8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'vprmBtxnMESf123n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '59' \
    --offset '40' \
    --query 'lVcALfcQ3KTs9oih' \
    --tags '["2TzVIBCYJzjY8JTk", "rWVCvrwWR6q0Y795", "sojB8mRLP5Joa2pE"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "rznpZWlKcXBk7ryv", "key": "a9XUPMsopfBxntHb", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1981-08-10T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'aejK4F0VSEa0oURS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'jUtu47UIKezW0x2h' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "yiV0DxHWDkJItizf", "file_location": "doAim5Jv1Sbbh0jq"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'LOQ97aNBKDpdBmQg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '09MV21fFy5zN6MaZ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["lNeHLDi0eIPrvsXp", "W9mzOILQERnzOlRQ", "EEOdLUExpCx8bFTn"], "ttl_config": {"action": "DELETE", "expires_at": "1987-08-19T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'RtUnaRnYkH4Nj1yy' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "YlkT5q92MDkK29WU"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'jWNn71XiiF0IGcvn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '3Tu6D3Vksgw6ZlZd' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["yrcbjv1KvuAjMYm8", "S5mQw2XigRHyaD1S", "8bEBBq8NSnYyEfNG"], "updatedAt": "4DKNKoV37RxGg5Ss", "value": {"Eo4Q7enGmz7yMZCw": {}, "ugoKp2qI73DpN9v0": {}, "f0PMuVHiYKcJp8ym": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '0ahEeugtwQZHlmFA' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["JwQpTVkvqA1m7d9g", "1D7ACcvPVADPZXEf", "uy8jIpINrPiMjCEc"], "ttl_config": {"action": "DELETE", "expires_at": "1993-09-18T00:00:00Z"}, "updatedAt": "eSIScgNFLX2gRc8C", "value": {"H7lpz1nilnIxoXYM": {}, "qBfdE36kV2TpyZzy": {}, "TzGhNiFrMUKUqUjB": {}}}' \
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
    --body '{"appConfig": {"appName": "pCRlLhmmKQmsZErh"}, "customConfig": {"GRPCAddress": "ZtdM46HjIRKjR09C"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "6g6Wrti7rblQI0C6"}, "customConfig": {"GRPCAddress": "Dh5dETru2Sdrriec"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '7I55hKdvxBSyXW9y' \
    --tags '["nkrhNNeXJonoW60C", "djQKhI8fyD6J6eds", "gSysEAmylSHbE8W5"]' \
    --limit '67' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'HbUa4kJH1oHlf5Al' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'olDEqy95AjULwgoP' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '3cwwTeD4ng8iKQXD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'P9PdCh1o1RTzvRCM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'QTjXIl1SJNCwBAvJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "SxYQgNGr7NKeatnL"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'HximdUoBua1uLAr2' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'JZHoQrKCzBmmwGSb' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["LD7M8pnmlTh1rtC9", "Smni8pYb2onElBZB", "gegogwo20MQqu85t"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["QBmSUW8QvI36B5nF", "p2XxBVWlhW1PTaiq", "XzSE28F0uGo3MbvQ"], "user_id": "nf0AtsRaQ0nE5OpH"}, {"keys": ["iYFJi1rP4LwR9cEd", "5p3HXGJfKkeXpXrD", "cEqQvXJ9kalebLQI"], "user_id": "FEqICO26Cj01eMp5"}, {"keys": ["mdngR5djbe7GX7yy", "HcJ0gapYEUgy5bgM", "nooN1yOQHMKyUrHM"], "user_id": "cfqISExiWR41KOtQ"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'IiON9wdTHNJhB4ex' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "nSt05nsFXaP2Oh1s", "value": {"TXlxT2nCfqCLy35S": {}, "WeH46gNFm8VBw8Ri": {}, "NiMVwQEjVmkqRFwY": {}}}, {"user_id": "I1HIlngpZto6DZBz", "value": {"HEr2MKNm7uwWWKRr": {}, "FNFlm2RzP2QyIYc8": {}, "vmRlwdE6BV07LZDF": {}}}, {"user_id": "Bmsa8FXplKJA3F4U", "value": {"Ynwz69y7RHp44iE7": {}, "zCib0kKNJyDJMO9k": {}, "FDBvzYx6EKnURNf2": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'CUT9sxn7oX59E9sL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["21wo04VaiD8xUjT8", "skFk6PJWzkYmUtW4", "gMEMhmJI0preR1I6"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WP5Y9QeVXaNAR7jt' \
    --limit '21' \
    --offset '2' \
    --query 'Sj8FZKBGoBNCHzUC' \
    --tags '["fcxemHHzPhduRT1O", "trIdlihEgk1JfIe8", "mlS8FWUoZVX47cCz"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RWNIjUZPW64Fg2Ub' \
    --body '{"keys": ["hMZ5be961easqpRL", "Fj7gidlQlJTzoB60", "hiRVXHAJTpScXxIZ"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '0xbNHRr9Yl8IxkEH' \
    --namespace $AB_NAMESPACE \
    --userId '34Dis3NAfYRoRpsi' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'b65AP86CAy5JIt3L' \
    --namespace $AB_NAMESPACE \
    --userId 'cdsgH8XyoZvFllQI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key '4Qukbo7gLi77MvAG' \
    --namespace $AB_NAMESPACE \
    --userId 'mcxJrMSo0jRFpTt7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'eVZCZEQ4QtPIo1VG' \
    --namespace $AB_NAMESPACE \
    --userId 'hRxoNoHQDQ9gAN5z' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gc3G4PvD3EwLSAnC' \
    --limit '9' \
    --offset '71' \
    --query 'RSVQkilploJA1cEC' \
    --tags '["htOp183OVNWuNi3u", "dC3ycRI6a3xybFqo", "yCSuMT4LKMba1PBu"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pOFqEkzV0cfdLoUD' \
    --body '{"file_type": "1ysF3lyuczbyD6jp", "is_public": false, "key": "uxBNgJA0ev4uz82q", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'ucqFQtHMJwew9kdh' \
    --namespace $AB_NAMESPACE \
    --userId '6oyHwxyKn0KQ9hga' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'S6ABH3juD46F6B4n' \
    --namespace $AB_NAMESPACE \
    --userId 'PQAJpgkrAgP8YPBF' \
    --body '{"content_type": "SuZDGCIjSuveqEPm", "file_location": "IG0rfvBm6yI0qsgv"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'XKyX5Xe8JS2kSvuT' \
    --namespace $AB_NAMESPACE \
    --userId 'ER0ji6zpAY0LXwZ0' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '1MOCxuctaf0eFJFz' \
    --namespace $AB_NAMESPACE \
    --userId 'r9blaEpwwxqIqdHv' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["JVYd7ccpH0xJuPSC", "ymPCW2G7XxkZ3wNm", "E3OPkN0Ui8ZKK3m1"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '3bqt9fgfODhxB6rC' \
    --namespace $AB_NAMESPACE \
    --userId '7TgpjhlFyibGRTZx' \
    --body '{"file_type": "XQizvffVHnISc0CQ"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '64ajoyhGSLvDb1Ow' \
    --namespace $AB_NAMESPACE \
    --userId 'DSVrOA6NrL6LUk2c' \
    --responseBody 'true' \
    --body '{"tags": ["nIJhZQqaGyCfAofX", "xB7fJqau2tOATenj", "8iZD59kySm8MVJJ5"], "updatedAt": "qkj3Clz6stXLGlEP", "value": {"Q12F7XyXHHn3ugkM": {}, "ARVdFXFhbAH7TQUJ": {}, "GkZ6EIXynDqaw7vl": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'c2gZxkaMrD3U7d3L' \
    --namespace $AB_NAMESPACE \
    --userId 'jMQ5Xi0Z73xH2f3h' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["jTPQJ3tKQOWKMAAw", "WMGSzRP7ivmEkWgI", "7b0SF38GnG7FjffM"], "ttl_config": {"action": "DELETE", "expires_at": "1979-01-12T00:00:00Z"}, "updatedAt": "xXFIljfcINIjnXFY", "value": {"5kKGj77uLwFwJIA7": {}, "VHVNhKMaahN4dfWH": {}, "PBOElc0dWbDbpFu8": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '74sb3gUEnuag4UPQ' \
    --namespace $AB_NAMESPACE \
    --userId 'FhhpJoTfANx170dE' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["KDqrv7yfKef6Y4H2", "8z41PeU0Z5c7EOul", "IYp0UBUhzNbNtmpq"], "ttl_config": {"action": "DELETE", "expires_at": "1992-07-03T00:00:00Z"}, "updatedAt": "KvZMyONrCKYlp2Bv", "value": {"2UPM1JQDYDKChlWj": {}, "VUB0ajpqOHzVPXFW": {}, "KXn2hzpNhohj2Clk": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'wUpBljNqVgpGCK2Q' \
    --limit '76' \
    --offset '95' \
    --query 'cRYkYQNO2bn5ngTI' \
    --tags '["N3Z7GfGSr3ood4bd", "XapEg3DZvXn1oYHZ", "Y29Y8U4xDA5GR2m5"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UfElvqmUmC2KxBOt' \
    --body '{"data": [{"key": "PhURsWpeQG0DtrmD", "value": {"dG24IRGbp8SK2gy5": {}, "mT4fn2jSh3hr6SZy": {}, "Hn5y0utuIXha8U2a": {}}}, {"key": "nye5t5RYknbdEd6d", "value": {"5gY7zAPfBbflsxqO": {}, "99xNLJrWfNNnfTIC": {}, "dhHpp5erRT4iluGr": {}}}, {"key": "IXHBsYJs48pOf75S", "value": {"TQSAZ7TyMO2d2T2Q": {}, "XW676KhDuK9QBQiu": {}, "1xfS8ojrpGdJpKbL": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '96FjIf37W1cVRIF2' \
    --body '{"keys": ["hc9ncNrYLaZLRKdZ", "AO4rs5kYM1sa3RQT", "b7V0OGDS9reuWb1l"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'CWBagUqKsMNaDAJ6' \
    --namespace $AB_NAMESPACE \
    --userId '05r6YTKwcQHjxWzf' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'Z7t8irztCAUoEynx' \
    --namespace $AB_NAMESPACE \
    --userId 'wL60rfwEW79WnaLF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'EqLboJbKuvQCItAw' \
    --namespace $AB_NAMESPACE \
    --userId 'xzEiCijA0cpewTpo' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'weiK0I4dNONe7ajU' \
    --namespace $AB_NAMESPACE \
    --userId 'WBJRT9FkCINjyKWp' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'qFcbvEfEgoB3TmSN' \
    --namespace $AB_NAMESPACE \
    --userId 'nb4rV7hQ3B3y4qzh' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'E04JUhwpA1aQFQAf' \
    --namespace $AB_NAMESPACE \
    --userId '9mQvcepfJgi5YrZ5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'bq9rJqHLiwk0Yjp2' \
    --namespace $AB_NAMESPACE \
    --userId 'wHTff4thCdYyLajn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'PhZFmY1SFLmkFL7H' \
    --namespace $AB_NAMESPACE \
    --userId 'oHDxV58FPQuHqh0x' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '5TrKuLENP8N2A4ob' \
    --namespace $AB_NAMESPACE \
    --userId 'UzmY5KERsknvQ1H6' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '49' \
    --query 'OY5LdQIctHHqmGj6' \
    --tags '["5K44eB8Q1S9Gg64K", "n4lkdru5IF0rpRT0", "RUqJIdeb4RkmzkvH"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "hNskmRJwyfTZ6pjr", "key": "ZC1KEQs2oQAh8hXw"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["yTivHeKmIKz8qWq8", "0uDV6Zobn5Vukay2", "152DKZDt0xxrIyyN"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'w2nAZChyjpWuFDZa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'YQIFklLeFKEYJPOS' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "FpkMga9ciAzQzk2H", "file_location": "LaOCnFnQW4muVWF2"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'Hg0OSJk08qzpx3oT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'VE6gcXlf2czn6Siz' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "SledWCCVqzpKERoP"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'Xo2EEz9zkc3RaH1O' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "0h0Uy9ZGoFC7rM8P", "value": {"J6ZhMkNm9vrGbquI": {}, "nRgly8NdWYN9OKdZ": {}, "d7rzBGJdw5QcYIHU": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["IEaBazTCDrIRcHqb", "vZfw5gsQ4swnNXGt", "4nSBzrdEjJau2KHP"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'SmDP20IztQCTp63r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '8m6Tw31dNYFsARac' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'mnRNUZzo5RswkEHl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'lKtJEcEHwwaLx551' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '79' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'KqRJfOmyYCwBcfPL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["gcXseGIgJIsYij2m", "juOnDBc9OD9dXOXj", "zpoyeEnEKeICEd33"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'd7eyFYa82Jg2xMRh' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zQh8ZyIfW9WdeHs2", "Cb1g0T27gy2nzKmP", "yhan6yVYraebxi3j"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '96' \
    --query 'qKpEKRyMYpWjPak5' \
    --tags '["VB3rm3nU9HbvWbQe", "uRsJFPj0ZusrE3ct", "qBsClld0d4wlThgu"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["gFlESVzpmbBwY3i1", "qQz7tK2GDFfysntD", "dKd5LIj2T1xaGtvj"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '14' \
    --tags '["AYRYCtIo4koFL4YD", "LKOyO161hA0hxexc", "jnszgVmwHIesmVlG"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["T4RQGB8Gt94XPsgV", "IZdAjNkbpZpWIgwq", "1QaM38z0b6UAn3xA"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'Rtqsq3RebKfUs2Wp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '70n4Gedwqc7KWDy7' \
    --body '{"file_type": "5io5UhWqLOL3F516", "is_public": true, "key": "xJt1yaGwIcrCPOIo"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '63bwBwKEi13HhMod' \
    --limit '28' \
    --offset '24' \
    --tags '["Q7q1SfMEJ9CoMpn9", "wGHJmCxEqcFBMXzi", "t7t5VZE3JgMhgFpH"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '9s0mrdeuBRwDDh75' \
    --body '{"keys": ["dNyQ8hm3dvOL5zUA", "NCsNtvq0YgFfWbij", "iS4DpWnuNgyb2oOj"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'VSGXqQADH9vN6mkE' \
    --namespace $AB_NAMESPACE \
    --userId 'KZYbAkovPSSHyawo' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'nB2iY3qEThmRbRWy' \
    --namespace $AB_NAMESPACE \
    --userId 'dapOXzHKaaId1dX1' \
    --body '{"content_type": "K8cX61USEAIUqPDd", "file_location": "pcWx5PcLYaOGlZ0E"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'VLIhyEj6oOvqbFNa' \
    --namespace $AB_NAMESPACE \
    --userId 'V5ld0P0tObwPW2n8' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'XHjh322FLq9lsRLt' \
    --namespace $AB_NAMESPACE \
    --userId '7YfJ1Q5US8WxYOne' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '7r60hiy4UW9l4HtG' \
    --namespace $AB_NAMESPACE \
    --userId 'iB6pRYpeJqmsis4I' \
    --body '{"file_type": "V1tV7hiAWtkZJd7m"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'oygIeGFYRmLc3l1k' \
    --namespace $AB_NAMESPACE \
    --userId 'Mpxl6A6nXIFUX3ec' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'T0tYPLeHQqOpiXqq' \
    --namespace $AB_NAMESPACE \
    --userId 'HZxkx7XHkd7eHmln' \
    --responseBody 'false' \
    --body '{"updatedAt": "OJyPqWG35BbZvI44", "value": {"5Zwp40aOJ6d9ryTY": {}, "hU9d2li787iMQfvK": {}, "fjBf6vnF2Sq0bL0A": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'HPY4k0qcZNywgwzz' \
    --namespace $AB_NAMESPACE \
    --userId 'VfwXzL6fgNuAp02j' \
    --responseBody 'false' \
    --body '{"updatedAt": "cub5jQRkj10I3Pa2", "value": {"egqLzIFiwoZDwpJr": {}, "U3RBhOihzKzOexzm": {}, "2g14Dow3P6llIBSN": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '6nzFOylfxVXoNIPV' \
    --limit '54' \
    --offset '11' \
    --tags '["eFUj7rZiw0cteBHa", "VFhIu54hPeCrW9aE", "J156gFIWKDcKLym8"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'H8bYqMfHw1CVsa2W' \
    --body '{"keys": ["gAnGUPTj875OEM8d", "JMUju2VwsLtTgeir", "DPnuuVamiOAJN71Y"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'a6mScm8Z2pdpZEs8' \
    --namespace $AB_NAMESPACE \
    --userId 'AnV3GQr3cwVvbZOj' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'aw7vZmjDmiGffdIB' \
    --namespace $AB_NAMESPACE \
    --userId 'UBvHmDfB0wMBQasD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key '8MZxNqON4qcOiiJm' \
    --namespace $AB_NAMESPACE \
    --userId 'xX8HqQbrT6V21PiX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key '6UbUiY0eu9aXJJJJ' \
    --namespace $AB_NAMESPACE \
    --userId 'hNTvfaxzeB9CduEg' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'gpxkTYpOZRwhItAl' \
    --namespace $AB_NAMESPACE \
    --userId 'p4XqTuIEncDOJMMW' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'FtKLLoaUCZlNL2Ud' \
    --namespace $AB_NAMESPACE \
    --userId 'kPOS0eOrS8c7CJIv' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'L72LhbtH83Yl9y7m' \
    --namespace $AB_NAMESPACE \
    --userId 'z2vwfTdvGxYUFgbA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE