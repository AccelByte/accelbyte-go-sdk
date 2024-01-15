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
echo "1..96"

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
    --limit '13' \
    --offset '55' \
    --query 'Qom2vsincP2OAcTW' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["tisUQf6w11STB6dX", "jyLbMKQHStCD7IFu", "gPKYccdJXYfNAHFn"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'W9XuiHWnMHHAukxJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'GfwcoClgjFDTcaxR' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'sJCtkGiSwTrnCgup' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '2YuJJnvOfqCu0a2G' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '62' \
    --query 'MEuvOgX7LMMUZiNm' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "TKDaZ4tQ9d9lCRuQ", "key": "mbbBw2LuBz8kzsdw", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'onKfSMnlMDGSerXF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'azLiNI7hBl77aVHi' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "RzYu1eCQTori9E4z", "file_location": "dDxVlIxLSKGg4fsg"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'IkkzmMhoFMr4E5FO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'sk7l5dfz2Lrf9uE6' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'edpCAmBaQHpr5JxE' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "YLhZUnTDot2ZTiLu"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'd2moQokrH2QeHl3T' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "9Rf9R9trk3xzLcxy", "value": {"ajuQ2CwGGHrxbLdU": {}, "qwuhv9qmcqdHpkLP": {}, "AgW5agi0Z9CbJTOW": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'C4zTL3qG1lpB25js' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "updatedAt": "7aUkHqx7lrU8eUsl", "value": {"PuftJQXPOtfgA2qm": {}, "HZCwOTWAVHFN5uyg": {}, "4RLGhwzHJ0W1ZrO7": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 17 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'GetPluginConfig' test.out

#- 18 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "Ww8Hurrx0vwMaySp"}, "customConfig": {"GRPCAddress": "lEqE588aQudahU3s"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 18 'CreatePluginConfig' test.out

#- 19 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'DeletePluginConfig' test.out

#- 20 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "uzAjddr48WIrjUMm"}, "customConfig": {"GRPCAddress": "kMz9gSPjp2J26Bpi"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '1Ky49EOEITxps6ie' \
    --limit '70' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'oneoTeWUwrxwmWLd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'NQnWU5ZmyD5qATSk' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'E6dL9QGaMgiOpJh8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'M6OX2ZIsayfydZ9W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'g3UdSgFkTcd4nXER' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["hCpdIFF3v8NLLVTj", "koemuEwd1xEzIWUg", "eKjF5uW7n43dKrMf"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["TOZCAUSacXUd7uGm", "oimrblVk2FIbtrpG", "SgqTV9qJJCxi3E3B"], "user_id": "o7JllFEJWHgoiOxm"}, {"keys": ["D6sgQ0tbZMtFgxXy", "XfBuQZwqYBe1VgTP", "RBgj7FUcpVnDWVio"], "user_id": "xJfkTihvjeJcyHkJ"}, {"keys": ["ox7op54BR5ArvbUt", "rhtOu36befFOS4u1", "ZFAmns3EIl4UDWRh"], "user_id": "96g8RjLnldxH6IrK"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZdEjlCv7VzpjPzoS' \
    --limit '90' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '4d8M3Lzy1uDWkrW7' \
    --body '{"keys": ["NAvN54hFVczhbibA", "IHVUpSa0aCXLzM6T", "HznNq6myyrQdjZXV"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'OMAmC5I0MALrZhOb' \
    --namespace $AB_NAMESPACE \
    --userId 'nGayVO7vMBXa8cqg' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'MEKT5cc0U0mqPHqn' \
    --namespace $AB_NAMESPACE \
    --userId 'msqa8ONjvkwGyh90' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'GcsLcBPdjq4VXG7c' \
    --namespace $AB_NAMESPACE \
    --userId 'yIEiWHt4w0EJZTs0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '8t3tiC6bEfJIflJl' \
    --namespace $AB_NAMESPACE \
    --userId 'autZoT9NzO8z4bbn' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DZyOpsEBCQQ2jpd4' \
    --limit '13' \
    --offset '13' \
    --query '1semMnYrthzCY7DP' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dnYaK4QL1AUcTCle' \
    --body '{"file_type": "OcjsJl0dtJ2uHMBj", "is_public": false, "key": "Mn8muE8jsvKnrjLG", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'vu6NpG4kq2zIvJBA' \
    --namespace $AB_NAMESPACE \
    --userId 'spLFUGRch8FeEpjf' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'scgmBY9s6okbX35i' \
    --namespace $AB_NAMESPACE \
    --userId 'iP3WVBU41vu8zZfn' \
    --body '{"content_type": "K6BCPVnOy8v641yr", "file_location": "LOsdPGcxU8WKwJ2Z"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'WRqZb7hpeKj7XL2r' \
    --namespace $AB_NAMESPACE \
    --userId '8GQboJtDzENNo08W' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'RCV5tJvkutNe7pm9' \
    --namespace $AB_NAMESPACE \
    --userId 'mm7uqm7MDsGflVIG' \
    --body '{"is_public": true, "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'C1CgRr5wgTIrG43p' \
    --namespace $AB_NAMESPACE \
    --userId 'j6IwWUHLQthDgzPv' \
    --body '{"file_type": "lXUoDSYb7qlffGqZ"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'RUBwytKv42CX3xK6' \
    --namespace $AB_NAMESPACE \
    --userId '6twUMiX972Se8Qk1' \
    --responseBody 'true' \
    --body '{"updatedAt": "V5eNt6bZ8ElXN8W7", "value": {"J4NWksXTqmt6SdOb": {}, "iAjN0dhYTI8cHqYR": {}, "Qh4DWp0meJAr82Ki": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'SnVfVhD1dENhp4Sc' \
    --namespace $AB_NAMESPACE \
    --userId 'gKQuRrc1xVeW4Ka5' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "updatedAt": "jWZvVVtvzK2tEX7L", "value": {"8HRWdxNT3UZUKvpl": {}, "Xev6eEppNFBYhlgD": {}, "XEKcrXhey6dDP7iI": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'KDzUuuhpFkfq832N' \
    --namespace $AB_NAMESPACE \
    --userId 'fkDOlFQRJFrWavk0' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "updatedAt": "3kZcGwDYtiDK8L2q", "value": {"nZbcAwoTDh99zwrz": {}, "8qfAoxtWt5sDxgp8": {}, "6kI5z9OKjfDyhqae": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'Ns1Acd8RFW6yumcn' \
    --limit '43' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rTjuhiIm38TK1kJF' \
    --body '{"data": [{"key": "w1l6Fd0bLNJkwPlf", "value": {"BqOMEBA8mePt7Sta": {}, "uMXILyEtYPaMiw83": {}, "BIVBlNZjbcB3MbeI": {}}}, {"key": "WBHl46BL6sdBPEu4", "value": {"ohiMUy80tj18q3VZ": {}, "4RYY2zrS6PjWrSTB": {}, "iobFJ6x3SxgPDqlX": {}}}, {"key": "24QESTDkjO6Dlr4q", "value": {"xNICiByVrdHJLY5I": {}, "kctZfyfw60AIL30B": {}, "GOTQQIS86JXB010R": {}}}]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CTH6iyc1kkPQTLUN' \
    --body '{"keys": ["2W8nMYXqLZhUJunF", "tQRTXJL9Jir3HFmW", "F81GdJ1czkscYdua"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'T8956AlvtJINmS4S' \
    --namespace $AB_NAMESPACE \
    --userId 'UoOSap1yqXltpw2I' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'fAeZzrO7kOwqlfF5' \
    --namespace $AB_NAMESPACE \
    --userId '7PrcfQwWGQNuXCST' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'I6TIM8LoORsgSL6t' \
    --namespace $AB_NAMESPACE \
    --userId 'ZOo4JCCSxuQuuo18' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'aJIbKQEMJsvyO4wm' \
    --namespace $AB_NAMESPACE \
    --userId 'ts77zfRb6LRm3I8c' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'Vb4SImB8vDHZJpwf' \
    --namespace $AB_NAMESPACE \
    --userId 'qfLXkiS5Flq9fcwG' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'NoWsBUy9cji4kqhd' \
    --namespace $AB_NAMESPACE \
    --userId 'B6wRZltC647foo5F' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'R3WjVolDyvkQyRyn' \
    --namespace $AB_NAMESPACE \
    --userId 'e8E8r8xI0yF32b4k' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'SZDkwHCGBx2Te5lw' \
    --namespace $AB_NAMESPACE \
    --userId '6Fdb7xkTeDLiBVK7' \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'hSMhQN2lJrHjf4Db' \
    --namespace $AB_NAMESPACE \
    --userId 'zID4WSNCJ0K8DPlM' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 57 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '51' \
    --query '91zEjEWyCXXGMot2' \
    > test.out 2>&1
eval_tap $? 57 'ListGameBinaryRecordsV1' test.out

#- 58 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "5MLt9l4oYK0NNxhy", "key": "6FsVu1z4xcxJTNDZ"}' \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7DZKQUWpjkUG08SQ", "Q58h8r9uw12G2AnG", "gHMxdxy8g8qJHjk4"]}' \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'BVsH94I3Jv9dUw9r' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'Zl2xR0nJaiyceG8X' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "2XNNhpDYyy6R9ibk", "file_location": "28QuvYJUE60Lg6zX"}' \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'G2u3VgUwxUb7i3CF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'XSHVwWP4UGbldDhB' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "HZbbXPiAcf0QRpA2"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'mQ3lpyeAz4rpekS6' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "mUiTHZNEVBbMcb9q", "value": {"jzSuf6fmJcM9CRw4": {}, "dNyvXMwuBqOn1xzd": {}, "oBiz2PapnZHn3BBg": {}}}' \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["9XO4I5O7AKifo7Gs", "lwnLcPh6cze9hvE4", "vdyIxkbwEo8awFjy"]}' \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'NKB3jdakejaFIdou' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '6eOl9OqzymOYevY0' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 's6Jbn9CuWy4tfx55' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'TU257E8Hjv8ITRKo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '27BZtvXwsvR0JFlp' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["17BYGJwpW1NMG9pP", "Yvx2uLijNuF2uCoy", "Hsuv5pKDQZKm2ZYJ"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'FocyrT7mRKIVnBwx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["UbIkm1cJorBanHEe", "WE61RDHPjnIVbas1", "WMt7XWxysn53ABxs"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 72 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '52' \
    --query 'OUcv0g6YU7btWzzP' \
    > test.out 2>&1
eval_tap $? 72 'ListMyBinaryRecordsV1' test.out

#- 73 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["xGW1qjRMoE2SiXIE", "f7GnIyyNWvfk5M5y", "bssqJWA0pZ2zyibu"]}' \
    > test.out 2>&1
eval_tap $? 73 'BulkGetMyBinaryRecordV1' test.out

#- 74 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '58' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 74 'RetrievePlayerRecords' test.out

#- 75 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["jLWja9zhR8nRAo74", "4iGYMXo8MGKj6AXO", "7nEfGEkB1AKuyESz"]}' \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'VdPcBIeFZ4Q7Gr51' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0Kw3Tukge2Rm6pzp' \
    --body '{"file_type": "mbcB6G5pX2i67OgL", "is_public": true, "key": "eTkDB8Kxxh17gLNf"}' \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X5THQyXvrwV3RF2U' \
    --limit '14' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WBYPsuIHtyQ27V1e' \
    --body '{"keys": ["gZDGEhjcpPY2hU2P", "909vsYrBp4w6SJjB", "qf8CqPORRCUUNdbd"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'gpZWQGcwbZYGH9kf' \
    --namespace $AB_NAMESPACE \
    --userId 'foM1gRcoLWHcEZb9' \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'XRXIyr6h2AaM8HXq' \
    --namespace $AB_NAMESPACE \
    --userId 'rwUpytPqco9YrYKV' \
    --body '{"content_type": "lHejASf58jRHaABI", "file_location": "bJ4UqJYGqMqw8vjq"}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'yEvXVktLvNDHA84S' \
    --namespace $AB_NAMESPACE \
    --userId '9ysMDTXUbevLhQ7H' \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'J8Tv2PfIXMOFDze5' \
    --namespace $AB_NAMESPACE \
    --userId 'g45RKT9TpEeaw59b' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'XtCx0BcbD3mHl4W0' \
    --namespace $AB_NAMESPACE \
    --userId 'zJ9SYeObywBRqeBZ' \
    --body '{"file_type": "T6traZscjENpVg7a"}' \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '75Fp8DtolCJCdDqh' \
    --namespace $AB_NAMESPACE \
    --userId 'miTMoF7NP7YHuHmL' \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'glc6OFcthFwXqMmK' \
    --namespace $AB_NAMESPACE \
    --userId 'UM4uT6MTrltS0ymM' \
    --responseBody 'false' \
    --body '{"updatedAt": "S72i2UPysrvb0tW7", "value": {"Hh4r4i1fjAWQ3e6v": {}, "AJW9Xy89Jt0Juecw": {}, "5CwNU84RnsmXpdaf": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'jFcycG85Ol9Mejyw' \
    --namespace $AB_NAMESPACE \
    --userId 'D51Nkb31burfnsoo' \
    --responseBody 'false' \
    --body '{"updatedAt": "fbK20PTh3OtCyrAT", "value": {"e3mERVXnKcrm3q1j": {}, "ooLYa9W8KXw9nFus": {}, "nLP68g43oJhQDjKv": {}}}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pMzZOkC776a1f89s' \
    --limit '81' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DYOpi2hIa63zBFpt' \
    --body '{"keys": ["3RiBFMvwHxZJUZA3", "pqv5oWiqV1RFz89A", "x1BvbGOzGeYFg9wK"]}' \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '7tiMEjMY5Og9GQfW' \
    --namespace $AB_NAMESPACE \
    --userId '4hv21PvMSqjcOfho' \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'NLlla2CVqy4ooxds' \
    --namespace $AB_NAMESPACE \
    --userId 'EYiyEuhb6IhIVp7e' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'MA76DzqAoiybOrGj' \
    --namespace $AB_NAMESPACE \
    --userId '1tMYnP9oc5Fx3nXr' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Ub2cY8aZkEpVyGpe' \
    --namespace $AB_NAMESPACE \
    --userId 'YrWoU6dB2hkP8gVO' \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'XUlH1faftobS2voC' \
    --namespace $AB_NAMESPACE \
    --userId '6tDMaPkFPDUX9kot' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'duwOTIUgEyic5NM2' \
    --namespace $AB_NAMESPACE \
    --userId 'i3GDhzJLiJhP82VO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'N1kOFQDWmCk1zJ0n' \
    --namespace $AB_NAMESPACE \
    --userId 'yGIHulcJg3onSQiF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE