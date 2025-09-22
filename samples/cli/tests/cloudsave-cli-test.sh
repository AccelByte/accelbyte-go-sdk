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
    --limit '91' \
    --offset '93' \
    --query '5jJQHyBijCGIKN0j' \
    --tags '["MobjDUgSG6HIOiWj", "icvIqe0ieFivFaWI", "ZVpPmscMR58kF4My"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["xEkeLKq9ubwDW6DH", "AFw6yOJr1Glw608F", "WHTHVpzE1LxyoVev"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'LJ2jS4MhFwocMgNv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'b8peUoDtn1cXnd0h' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'a8FfeaK7MP23uTzl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'b86dGf0Qhv3Si6xU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'fNCPTu6xZJU3otat' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '76' \
    --query 'LkvQY9SsqS2F4kiB' \
    --tags '["Iu85SnxQGqPFugCX", "21sVAT8AeupLessb", "SmABiLaT86NneeAb"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "zmLLoswEZhvTXc1r", "key": "42T1nBi8A8mh3zrL", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1986-03-12T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '59QpkSh6jF8Gtjw4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'gLIeZqAIQ9wD1fWo' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "5ZVquI0qr1MVMpfE", "file_location": "VSftNGhHSHnOYxCY"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'Hs0Pe6Z5njWM05Ep' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '5WLYUpSJB93awX5O' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["oWmjxW3v4yfswkWT", "iRAIpm8QszLSdSWA", "IF3t6hgiqCFbyhIp"], "ttl_config": {"action": "DELETE", "expires_at": "1996-04-13T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'xNq1S99YcXCEJZoV' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "MvMlxpfySVnYQiuL"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'VAgPhn3qAwORP4PA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '6L2a5dYc14nUNzSA' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["SGKmGSQNARBl0Xtx", "19AphBNZ1Xs8lEMq", "Ph5SDWD9vObJlOv1"], "ttl_config": {"action": "DELETE", "expires_at": "1972-03-19T00:00:00Z"}, "updatedAt": "1979-01-25T00:00:00Z", "value": {"KRbSIHMifuuG8Kmz": {}, "wLNt73ebsYW5qacl": {}, "2ItDypkLUx3jksAf": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'q8jhx0kz3s4M8728' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["rNsheQEm8ohHvftU", "s9F0rr519FrGW5hp", "apumCtzsvkCjvj67"], "ttl_config": {"action": "DELETE", "expires_at": "1998-03-07T00:00:00Z"}, "updatedAt": "1981-03-27T00:00:00Z", "value": {"uWjoYZ5IiKBCNGCB": {}, "IBkgHvmm1vjLjk2d": {}, "X6UkbXEiAwFpIw0n": {}}}' \
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
    --body '{"appConfig": {"appName": "fEUxe1xXTM1VAVoL"}, "customConfig": {"GRPCAddress": "glFB6DPW5IIRvlXk"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "V07gQtC3LJAIIPbP"}, "customConfig": {"GRPCAddress": "KPXpvFS9hLjOtoXg"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'essFN7ukpktdU67Q' \
    --tags '["oC3HSm1xV7cAV4Ki", "vJAl9nvpfuORSvx9", "5yX3ezeMzS2TSkct"]' \
    --limit '37' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'Ncx2kZJo22lLBkbW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'aOjbhhvKvysEQH4T' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'cXUjiUvVZqtRQL3z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '46zM3KQhYyvTCVkZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'UnUuWm56hCEhvLro' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "2UhCaM4GANyQi6Vi"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'jJvd06LjX0EfKiCb' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'i5gEW6MZAkJuepn2' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BdGEZDTsMvjLSXq5", "7dtfJzfbL0jhyEBQ", "W2Ho5zBUjQzPMjmu"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["O4LmfPXcolNaG2a4", "oksAfdeDHe5hg2R9", "bifaKvwWSqrRrTET"], "user_id": "6VKNNL4KQUBGQK8Y"}, {"keys": ["EVgptPJnfNfY0UNz", "v2IYncwKZqOKaBm7", "SCXmBK2goPJXrjz0"], "user_id": "tc9986PPjbAr9ZKZ"}, {"keys": ["3Zo54KylYC90A91R", "LMko0lCiHl3xGINF", "vdaQfVdN03B7icy1"], "user_id": "4VNQuGZygvbQXPMm"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'eUZptMpt5MNNHWkQ' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "je1aL02FDUbP8PY9", "value": {"A9fbxufRTfiqPZBL": {}, "dB4blsnucr6cMn5J": {}, "1QzKTX1QgRYkbliL": {}}}, {"user_id": "RVLWqmaDUqpOwCpu", "value": {"jyw7kIZMtEOsl9tI": {}, "Cp9CT0FEOHs4fxIl": {}, "ueXCzRGmdD2gE9My": {}}}, {"user_id": "U3uEvFg4HOC3k36n", "value": {"n8DFDt6oK2UEbSfm": {}, "F2LoD5XXZMQKHcEn": {}, "wqcPJhtokCswIpGg": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'Sh6scYY9ypgnBGIP' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["AOsGR6o267XTgx8x", "tXsaHZJvmHY8yDii", "ZZ07Yi7jdgMsxP78"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'n4Op21Pu5ev0WLzG' \
    --limit '33' \
    --offset '8' \
    --query 'ejoCStWOAiXlp3d6' \
    --tags '["b7mvf6YtvPk1AiOT", "jrkLrc1myOzvhcrq", "nCFHDXCF6A26btSD"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hABYHQ3yXuiEl8P3' \
    --body '{"keys": ["lYY1GT9SHolp63YB", "iFsDO9BgOoSa1R3d", "YadRSE5B5ptgSnmR"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'RlLh2kd0uZ23afcf' \
    --namespace $AB_NAMESPACE \
    --userId 'tuDMkW0ZXCsqsB7t' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key '2CO9Rwy43Z9jAIy6' \
    --namespace $AB_NAMESPACE \
    --userId 'dxIQbfiXoOpbUNsw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'mcvnAFgQaJ223ah5' \
    --namespace $AB_NAMESPACE \
    --userId '82XMBbUmPmYYWYqh' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'iFNQK7fIuLxCs9Jx' \
    --namespace $AB_NAMESPACE \
    --userId 'bxxun8EiLKgYZk6A' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ocyGzCF4wVaKOgmh' \
    --limit '11' \
    --offset '36' \
    --query 'rGz02m4VjPagN7p7' \
    --tags '["KKgLuWsUKw7DU3Zu", "D0vcNiSBs7P7FiTI", "ThIVLqABXaafLHK8"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wEE0UQhPmtz1ctNv' \
    --body '{"file_type": "zTus4cfPAcLrG20C", "is_public": false, "key": "I8Mkl3OrWhdQcs35", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'Zjd6jsINGpOC4EkI' \
    --namespace $AB_NAMESPACE \
    --userId 'OsX44LOQ6yDSSF91' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'Z68orBdaMgjMRrGi' \
    --namespace $AB_NAMESPACE \
    --userId 'rHTOliLTTBJUNVt5' \
    --body '{"content_type": "KALk1FoV0rZQnr3V", "file_location": "tyDcU33zRqlXkqmv"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '65o18Kasslxn3WqQ' \
    --namespace $AB_NAMESPACE \
    --userId 'EFrC1LjTbe2xNXxa' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'DwBgFcVq6iDwoYtT' \
    --namespace $AB_NAMESPACE \
    --userId 'nqBQ7HBble0IeXhL' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["nO0CaTOPWbGD4fKH", "Z2nJTee7yhIaZGXe", "o2IlILaYZcVOt9tM"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'sXUUpoBMWuWDUScT' \
    --namespace $AB_NAMESPACE \
    --userId '0iShEKpQhNb4Dxqg' \
    --body '{"file_type": "0wiZmx1acBl4H8C6"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'Mkv1UGl8FaNlTZr5' \
    --namespace $AB_NAMESPACE \
    --userId 'FMBXFUDV30J50Dzs' \
    --responseBody 'false' \
    --body '{"tags": ["iFB5jHuYTQydvjIB", "Mo3VCLQ5AvZp35Up", "FYsiUyOOBtDX5mla"], "updatedAt": "1979-08-10T00:00:00Z", "value": {"NqyZNMMccrJcMJeG": {}, "yCxgvNop9fz10Vyc": {}, "HmX6ZT4ug1WfsfQT": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '7wLAzRCZjTDN5Z93' \
    --namespace $AB_NAMESPACE \
    --userId 'mtEOCzX4H7Tx3Jhi' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["7GZgA0rVMaeYUHHy", "1YYNVsCODffXNhLi", "QRsId77jNoHXuMWN"], "ttl_config": {"action": "DELETE", "expires_at": "1985-05-06T00:00:00Z"}, "updatedAt": "1985-08-19T00:00:00Z", "value": {"bFADIkYu0JxhFHGe": {}, "pBtsm7NOJ1CFfKi2": {}, "KJJWuCp48esE4DFt": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'wkjgEM4pmfVv5NZG' \
    --namespace $AB_NAMESPACE \
    --userId 'FO10tCzWB1mEisb3' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["gjiFJI4bZTfAFwEp", "0QFwqsNE9so7g5Lz", "z8Ez8QaiefBMznbk"], "ttl_config": {"action": "DELETE", "expires_at": "1983-01-18T00:00:00Z"}, "updatedAt": "1981-04-08T00:00:00Z", "value": {"jC2XtvJepMALrqkq": {}, "4yGLZI4mfH1VhLD4": {}, "E6yhN8KW2Ufdx8nJ": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'Ihk5EKgqLusZrlsV' \
    --limit '30' \
    --offset '32' \
    --query 'dGco8sfJJd8vFrip' \
    --tags '["CnJSxFg0xitRZFRM", "l4XbFmq5nyt0WTp3", "zJGvoZZzh8YhQP6E"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xuv2Ien5bs8PpX2S' \
    --body '{"data": [{"key": "qS4A5IdViUGGubv9", "value": {"BHVD0L7IHdtzrt5j": {}, "RBAye3Dz2Ir12BKX": {}, "vioWho7hkOfbhRUm": {}}}, {"key": "RVw4rAqyMS1YJfzZ", "value": {"Z2g2oAejeKAhl8hq": {}, "gGBrexZB4bEyYFt0": {}, "n0pbqeDVrZHHl1qZ": {}}}, {"key": "IK1Fa8HPZPJgTboB", "value": {"3IF8ebTrzeXJw9X0": {}, "nGbkmTX69CFToLvc": {}, "vtUMlM8RHt1Mu090": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ekyhObSoEsu8HmII' \
    --body '{"keys": ["LTSyYDCGXkgYnZuS", "keoHKXtDkKfm62wE", "NeOQDCqxIZxVtUFh"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '4gDHwsOORh6kpam5' \
    --namespace $AB_NAMESPACE \
    --userId 'pEQib9qNv7szZhjm' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'CsRNZVE72DJSShkU' \
    --namespace $AB_NAMESPACE \
    --userId 'WkyQI2DQUcm1iN3v' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'WjyzRjGLfUB3tyfv' \
    --namespace $AB_NAMESPACE \
    --userId 'Eft62oke2lZVNquT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'wHwgPbgPh2rwN4Yp' \
    --namespace $AB_NAMESPACE \
    --userId 'IHskpWtr7QOLB7qk' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'md5TNJl9bqISaoZQ' \
    --namespace $AB_NAMESPACE \
    --userId 'Jf25TSwS8HoEGSUn' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'xbyvwspY8MwuVSld' \
    --namespace $AB_NAMESPACE \
    --userId 'JQUlSE3lvxKA3adE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'vmBTkz2gRd9Wu6a0' \
    --namespace $AB_NAMESPACE \
    --userId 'czsuIfTVA5FP9mXb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'u8lrDQrU2V85mPre' \
    --namespace $AB_NAMESPACE \
    --userId '1iFNjSdAxqJw3ZGW' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'fMpO88iUYmlJMTXI' \
    --namespace $AB_NAMESPACE \
    --userId 'ffna0PuauW9dzcAR' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '16' \
    --query 'FGZsfEStKIHY0cio' \
    --tags '["UhGTRR4D8a2Htt3s", "DK8NTOybgdT7aE9T", "0uragKIgk9vDiyUo"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "oruMwW6Mq5ngzXth", "key": "PcZjhqqRLR5rr1nx"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7ET6ugVp03FVLkom", "fZLkBZN65BJkAR3k", "CXin0WbpJDGuEbe2"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'pyztDPItJXFrRr7o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'qHGfPGhDQpdoVsh8' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "7Sx2yBypthJh5lwH", "file_location": "1zJvSF885JNgi1Kw"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '2T4koceOkW3JHImA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key '9G0l8AAai4cpvW8a' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "0U54ZbK3eHlXCfIn"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'rGuP1BxhA8moput5' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1990-08-07T00:00:00Z", "value": {"V6Wct1COefrra5a8": {}, "BwIGdHAfrTUw8Cy2": {}, "z7nwl4lragGC6Vhp": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["BjhiKsV0mD9iWGgQ", "8978YcUQ8Og7ARLA", "USjr8qSKRSLQfeSV"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '5eeX4vk7qpDolcpJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'rh23RGLpOY3uGM9v' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '7EujmYfJ698KPWzT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'HrTJl9nIEAEI1ncR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'CVctT99dvgY9MBZ4' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["YxWnn1TJie1ejQKM", "isifbU26pnglmdyW", "O2jPzkrwoXPGhNbJ"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'PwXwGHlNQN5FSlPt' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6jRfPMNn8b1eKfbk", "dQXISRCBCBjDiEk7", "FTrUED5TWzEbiOyE"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '84' \
    --query 'cn3DdLNgMAaggReD' \
    --tags '["7PXYo5ySkJAm6DDA", "RFxCHAgiS7SKdVQw", "3WKwKi38WfO3ynso"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["05zpyMnCPXLzJhjS", "rPdmfwEa464wFqxb", "x6TkAc86jN4Eymt5"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '92' \
    --tags '["Gs8YEREBJZ5CpRfM", "co6nYUlg1YbxdlqD", "ePRwoeLOM3Sa9K16"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["9FghL5T3wMumX7Bh", "N8ktnGUjOYxteuxL", "spOC1pdcMGyCoqDF"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'qI2CXjXwPkOD4PYB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FCVD2TaunzF4NMa3' \
    --body '{"file_type": "GFjlhw6y12LeG2mN", "is_public": false, "key": "eOq4FaynyV77pWuf"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'h5bZv5v1E20C3WLo' \
    --limit '53' \
    --offset '76' \
    --tags '["mlWxqLlyiO2HDD2A", "XXHdGFBr7MmiAP7v", "1fQY7XSQHwb3g0WF"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '3f2bIzDWQvHEAGvc' \
    --body '{"keys": ["vjpDwoHfl8Vx2KTT", "LXflS4ZSkcFK9IqV", "CYJZB7dTt2FBGFwk"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'kxMnfQP5JdZFNewD' \
    --namespace $AB_NAMESPACE \
    --userId 'cp0teMV07Z7vcOLZ' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'Q7vu6V4f1QYCC5zm' \
    --namespace $AB_NAMESPACE \
    --userId 'atnOzPL3Ea6op1tL' \
    --body '{"content_type": "EXrafRODdCciQGcd", "file_location": "0lr2Q6f0tD4gRy0C"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'vK4YkfBysz5gRo9I' \
    --namespace $AB_NAMESPACE \
    --userId 'ZzCG4j5GweRYDadq' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'wjDDEDbM03h7eR5H' \
    --namespace $AB_NAMESPACE \
    --userId 'rxavwImRshdZ6sSQ' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'Qf4G3ZzX48tK1jk7' \
    --namespace $AB_NAMESPACE \
    --userId 'Y1oInGXOiRWFZRHD' \
    --body '{"file_type": "oxcUeUfixpRdIXI3"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'HFio8Ynz4Usqa4tx' \
    --namespace $AB_NAMESPACE \
    --userId 'D6eiEtjckMPUNUvq' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'P4JNuclGOCLzhoLK' \
    --namespace $AB_NAMESPACE \
    --userId 'E3VQnrqLQu8hB1WS' \
    --responseBody 'false' \
    --body '{"updatedAt": "1994-01-18T00:00:00Z", "value": {"089Vjna2GrNC0SCB": {}, "HjvsQxWdYg8uAnpL": {}, "hzthU9ySSlZGToI4": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '5wtPo9VZbIF0DSH2' \
    --namespace $AB_NAMESPACE \
    --userId 'uRs1haMcb7aRfHuv' \
    --responseBody 'false' \
    --body '{"updatedAt": "1998-04-06T00:00:00Z", "value": {"YaAzt36Hd5pPPeqD": {}, "o1Zw6e1jKh9rLPhM": {}, "x2QJud0D9ETj0Wuf": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HQBPrisF9O1mpA8m' \
    --limit '63' \
    --offset '33' \
    --tags '["beJQI1WeKwaIqUaW", "WE3eQvXG52Bx0Z0P", "RGwkq6Dupr4qeIfK"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZWnS6tTBgcaj747V' \
    --body '{"keys": ["oYjQs94sk9uEeZnW", "tuC8d2xAAT0p5AbM", "4ZZTqdW1TPQbf1mk"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Yq03njYDKs1lP7qb' \
    --namespace $AB_NAMESPACE \
    --userId 'dhybHPC9mtOfzZQ2' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'vUrQInr0FKCqD23J' \
    --namespace $AB_NAMESPACE \
    --userId 'moobIFZsvmXyRDOP' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'BAOCZsNW9Ucs0d8k' \
    --namespace $AB_NAMESPACE \
    --userId 'ftmExwxRJR5p8dh9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'VGEQ7xBC813QesX6' \
    --namespace $AB_NAMESPACE \
    --userId 'UVW37mpuQEA0EH5A' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'kbony8fcIz7tiCgM' \
    --namespace $AB_NAMESPACE \
    --userId 'j96aEXKd88hGlLrT' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'zQF0R0kJ6rW5x2ni' \
    --namespace $AB_NAMESPACE \
    --userId 'kiIpoUdkydyRf9LQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'mY4V32ZEHtHPUp47' \
    --namespace $AB_NAMESPACE \
    --userId 'fGC231oJDljekyH5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE