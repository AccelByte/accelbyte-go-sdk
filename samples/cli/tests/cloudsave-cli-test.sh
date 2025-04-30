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
    --limit '14' \
    --offset '45' \
    --query 'aGb6BKGDBVch3KeX' \
    --tags '["afMSqECH4kCgDHwJ", "RAYyiLa3d5nRNPEe", "SmgpPcmNAeie3Y34"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["WnqQPX2Op1oB3oEh", "8Lvl9ZzIt8bXhNQ9", "p8sW73lfkModVAgl"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'tllAUgLhxdATjFKV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'YDez0IsUnV70GW2K' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'CzKbAkO8Be8FgnvR' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'KJzosDsqHcxQUffr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'g1ygSDZDdMFR4cCo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '18' \
    --offset '97' \
    --query '3cT3Hv4jsd07bRAF' \
    --tags '["QSdG4XEWp3D6Ks0k", "vduSeq2NskvcnPsF", "nnc3c9Nsc4FXPYhS"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "sCKa7lsnzSf4sE2Q", "key": "nePA3vryeLpDwCrZ", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1999-06-06T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'YlA1PoA42mFDBEiU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '5n249h9ivup8IA5c' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "NXeJoibGUpoDtn4Y", "file_location": "e6YeXTGmoRt3OqzS"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '4ZnMJbhzuz49zMAq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'YgfdiCDTK6Ndl5Fv' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["dbXDSHTRz7aQbX9V", "0Jt3YhTxa207ExO2", "Hoe9VE5iujqitedb"], "ttl_config": {"action": "DELETE", "expires_at": "1983-07-19T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'i7ODbFZ8LvV9Vf1N' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "XGrGaEMZOJNZrd6I"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'C5LKH3ahMRQNZ9We' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'kCKQSyBH2cGBUWlf' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["sUsnCWLERJeJiZAg", "kzNjjHuBeCBQTdHm", "B2ieXByij1DJjPHn"], "ttl_config": {"action": "DELETE", "expires_at": "1992-06-21T00:00:00Z"}, "updatedAt": "1982-03-04T00:00:00Z", "value": {"9K8LdfryTPFA5h24": {}, "a05K73OMKvJVJZdb": {}, "hQWaislEhq6FjEJ7": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'ZAHmUyNesJOyrQiI' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["kcMhOAatO8lA0uxE", "KSbrLXFijRnzzy1o", "TlAC4PgaV75QpR1R"], "ttl_config": {"action": "DELETE", "expires_at": "1986-04-12T00:00:00Z"}, "updatedAt": "1979-10-28T00:00:00Z", "value": {"JHXP4X4jaElHoFpB": {}, "e8bFfkUO28N6AuSS": {}, "eqDObJCtMvVSGUhT": {}}}' \
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
    --body '{"appConfig": {"appName": "KcSJ4lSvcrDaaKHC"}, "customConfig": {"GRPCAddress": "BELyJBvzlh5WPTuv"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "VFV7UGqmEzmBJGC4"}, "customConfig": {"GRPCAddress": "FCokLbTM1dllpLK0"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'DW9OPdw7YyWFkece' \
    --tags '["F8pedAZq4zN75kmQ", "JaWoHWI2JhtOLIJv", "UZ4p8jyB7gi9B0ce"]' \
    --limit '1' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'TQ4nteJ0uJwZQQoC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'vBktniMVZ2c7O2dq' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'Bue05iSOaD4EKSaF' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'WRl6d362bjhlUoM4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'zNl9z25DYkHCdm0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "EUxo1MjkwoqPMsEK"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag '0LcG14DZV1iUMJlu' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'hzUAeZMrdYmH7rnk' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jId9tAAtEFujYP87", "TNuArmssaF9wHiej", "MaGs6p6U8k7lbRE0"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["SKOca1OaYUQmrBA9", "t77FokQJUBhddUCq", "NDztJzNU2QEsXWLs"], "user_id": "w67vRwQohMOSWyw3"}, {"keys": ["tRJoqb98n9HRZofV", "87i7U8eWCJccWUGr", "48MUqwidPAkG09Iq"], "user_id": "yuk0glnUWC5PC6ch"}, {"keys": ["KiaCxdoclNAPBS2L", "MlSy4uVNwAFR2D2T", "GXG3yAqGrjVat630"], "user_id": "RuQgzb0LuPTfeMBY"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '2DqayZ8ahopat8n2' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "tqLEdFNbDG9zDBlV", "value": {"S3s7HkCckE7HlOdC": {}, "MRurlDgK4geMIP0P": {}, "K2ArItduNXFZABkn": {}}}, {"user_id": "A7AX6A9Xe9hP9zGJ", "value": {"ifRV47uSjEQV4OSj": {}, "QnjM0b60xKkwBbOi": {}, "vGl6GDTyLegSQA9n": {}}}, {"user_id": "z5YhkiKcD3p5MFVI", "value": {"aHVROzYxKP1kaVmX": {}, "lwkTMgE5TLTf0dZO": {}, "PThqlJxVRYZ9oyXe": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'iK6cteOWvWiG6xYP' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2GqFukuMlAWFlKR1", "x3ibxJOh8vCIbj4g", "Lq9dwN3mXS68OTNp"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'AOYMO5wBpssnfzt2' \
    --limit '13' \
    --offset '61' \
    --query 'n2Pa7zWG55zhiDPh' \
    --tags '["Z8RCBfLwGUugeTN8", "xQfk7HXJKu3JxM13", "XRPgkIhMnMAoCXro"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rUMNmvQ7hLQlrPXl' \
    --body '{"keys": ["37UnWMuTF3wFAgBT", "SlHf1mkhTJ6283NF", "Z5MBfpTDvUvI4Pqz"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'CjROgzg5XYQiBCTt' \
    --namespace $AB_NAMESPACE \
    --userId '87Cr4ClcHQjmP2Wt' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key '14jrdCYvzPpnsgTL' \
    --namespace $AB_NAMESPACE \
    --userId '1eK7vdDxYxY5cIXM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'mIqm1wrRnuLmbJGk' \
    --namespace $AB_NAMESPACE \
    --userId 'pyUt9rhUzu1PoXOz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'r10rGL8I2M2HPSE6' \
    --namespace $AB_NAMESPACE \
    --userId 'XzrGlztwZv8RE5T4' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jZZl4clXp3rGeNno' \
    --limit '99' \
    --offset '33' \
    --query '6rGPZovqCVI4Ze4r' \
    --tags '["3ndfCHYDfL2h7WjG", "GveOoGzNmdXB4xhN", "XGJPi1tm3amiLBXT"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fI3W7dZX42i4LY4U' \
    --body '{"file_type": "Fu2dyMKoIkUWePft", "is_public": true, "key": "UqOCto5P2hnIBhMm", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'FtPvAszS4P8Y3hbL' \
    --namespace $AB_NAMESPACE \
    --userId '9Y4rg8hfvH4lx51t' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'lcfuUIBTcb6plBaq' \
    --namespace $AB_NAMESPACE \
    --userId 'ZNYe0X8EHOSVOzpF' \
    --body '{"content_type": "liBnG6NvvFKUdRQs", "file_location": "FI1eigvKdyCb5KPk"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'eBXlntJgULjOErk8' \
    --namespace $AB_NAMESPACE \
    --userId 'ZuYpSSCfPSbTNFN1' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'fQ7ViFKYEsnnQ5bU' \
    --namespace $AB_NAMESPACE \
    --userId 'hI1i634MHEGslVLB' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["sVEx680xaOjFtRJt", "OJlvhiMiKy8U7Eyk", "AxHcEqCknPozSQT1"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'EOOIYQPon6x1FTip' \
    --namespace $AB_NAMESPACE \
    --userId 'swVt6XhrfBvTZDVQ' \
    --body '{"file_type": "ldEj3YiJdWytha8M"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'zKtGCzHb6QjcsD4v' \
    --namespace $AB_NAMESPACE \
    --userId '3EKb44ntR7tUM1lN' \
    --responseBody 'false' \
    --body '{"tags": ["eZgmwRbyuDOxOqFx", "uMw9LwBjwPHr8LvP", "CFTewNqbNBK8jZFx"], "updatedAt": "1978-01-07T00:00:00Z", "value": {"TZDWfzQfsb7Ls4tU": {}, "bn5N29F4uLuLArXU": {}, "4Xlnx5KyrgDy72u5": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'w26rF1KcSjclo1hu' \
    --namespace $AB_NAMESPACE \
    --userId 'EuTXasaQqbnG2a3n' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["666DDhrmcAK8guuV", "H5lDLxrN6oYh2hb6", "jGOXMzAy65sDe8H5"], "ttl_config": {"action": "DELETE", "expires_at": "1999-07-16T00:00:00Z"}, "updatedAt": "1980-02-16T00:00:00Z", "value": {"onuVeE9osf9Q7VsJ": {}, "Crnx613LxhHXeETC": {}, "187oTiuDAzpjpeX0": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'khdxl8GlLaEkT90s' \
    --namespace $AB_NAMESPACE \
    --userId 'lP94W52G89yn8HNK' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["s0G0mr3lb9h0N06L", "qg46OgvCGbH1oA3k", "Q6JjgsxA8nmsKBNv"], "ttl_config": {"action": "DELETE", "expires_at": "1992-08-16T00:00:00Z"}, "updatedAt": "1993-04-29T00:00:00Z", "value": {"wcIAVUzFEeoNj7Gi": {}, "mlfhLZl2vVS7ADwJ": {}, "cW0IpfGIcr74fwDJ": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'wGYaRbypSXsamknZ' \
    --limit '86' \
    --offset '24' \
    --query 'rf2YPqwHj3MmPI31' \
    --tags '["Ps82fd0UOyplHPRu", "0jt15k3ZAUA8Pmw7", "j1mYy4tBa7XimLXa"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZugOXn4qT1foqY2w' \
    --body '{"data": [{"key": "RRz2JIVWuoPRz3RQ", "value": {"pHJ48Ri61QuU0D8c": {}, "OMLTeZoOUGQxvXsx": {}, "m6wPIqHhvU05UEfA": {}}}, {"key": "7IamxDAmK9k0pUny", "value": {"oZTGh32JT2Y9EPI9": {}, "q9Ctus8jlNhHkgOa": {}, "WEaoQTAKJYXLSqpU": {}}}, {"key": "UbCffpdpQepwHDAW", "value": {"BbyYMQzSrcRc7WBF": {}, "GmeuunY5Q6VFH6Tc": {}, "CxY8ETNp2gRAJv0w": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OCAgbLjDf3fJAIXF' \
    --body '{"keys": ["E2NR5sVCgBUV3egk", "8GsnnNw2KVwSIfFP", "1jdAqwz3hDVuKHWm"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '4uWSPITnq56untKx' \
    --namespace $AB_NAMESPACE \
    --userId 'rMWM45TVielep0GQ' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'Vq9hhFKwLNNnklU2' \
    --namespace $AB_NAMESPACE \
    --userId 'GBgAdw5pEqLo1qs1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'pOI6ztQDI2i43n3h' \
    --namespace $AB_NAMESPACE \
    --userId 'xeItcNU4vzFE014g' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'y2Q2xvefG4W6V3m5' \
    --namespace $AB_NAMESPACE \
    --userId 'ueJNi1VeZPhjxPV0' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'ujMPz8yBS3ETqHB1' \
    --namespace $AB_NAMESPACE \
    --userId 'HRl0ln3EtIklWe3a' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'WoI431jevNEEQSpi' \
    --namespace $AB_NAMESPACE \
    --userId 'ii3Q84FrmxrJTCwd' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'guF0tuC1tSec1MSX' \
    --namespace $AB_NAMESPACE \
    --userId 'gZiL3ICk6kXQ1rAb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'bqeQKfuSmzzHvPFz' \
    --namespace $AB_NAMESPACE \
    --userId 'D0p7KtlUmwCAABMC' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '54jhJT8nydX2ibSU' \
    --namespace $AB_NAMESPACE \
    --userId 'exheYA8FBOZ92d0q' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '73' \
    --query 'IHhD9E10BE4FZTzO' \
    --tags '["84GKLxHPSEEfG2WV", "gO66KJedYEF7wGVT", "jRPLShai0nY4lluR"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "WJQH550zZPEXyZvg", "key": "Gj7PhTwMPcVMh4JD"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["wIvJV57FrkNfLjau", "j50WkxWfI1957E8g", "Y6emzwHW4wEbk8d3"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'uNN9RE0o07AD0p7y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '31FVi4dbf1fZ4OX7' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "0Z8uCXMLdZ3HZ8CG", "file_location": "PYFd0jVQbz6fl41S"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'CCT34ahzLo38B1jV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'WnVSfCYk6ICpfSDu' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "cew7GXecGxxieUTG"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'd0AEs4bCpNmu25NF' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1972-10-23T00:00:00Z", "value": {"J8sZPTNUPPTXNoyf": {}, "5hTi5fq5MyvD1GS6": {}, "RNq5Z28QMpAn6Fil": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["AZBLcd0gc3fABIFZ", "tE3urtitpFwLoKVH", "YDmiPwl7eYFUE0G0"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'PE3i7AMHDROTdMPC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'PANg1VdlnFeSwJiT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'bS4m1hkwCgKOedGH' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'yXQcaCYN7qMFPnoP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'HV78euAPL5rTKxMw' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DBKftrWRYDOsS0oz", "5jZo8SO616TLHszJ", "FopycO6RGYopOxVV"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '2f3vjwg5Agk5t8Bk' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["D5N6zRXoj7QJ4xJM", "PAfvZcT6aQHXk7RY", "i3cSWWJuabEHsAfk"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '83' \
    --query '1XCog3OVOzggA8Ko' \
    --tags '["JHfCsIH2cehVVvLR", "c3TWBCprwG6FSgqU", "EPh7l8uZUHydPv4l"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["lS4IIepTJYR2YpLr", "S8fy1G8f4Pl0mJDe", "34rnmjNwXER1uF3S"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '31' \
    --tags '["quV3Nso1BGpH0kSD", "Nm4IvWEeHYoQmF7a", "WmukvWyAIrH5vYhW"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["jQVZnXJxqqVdZ8to", "3AYGz5xGy51E11pS", "l2meBkncpIVNENfK"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'wDyw26cvjwu5r1NJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cKNW1Ul1syUCcxud' \
    --body '{"file_type": "9uvLhWUB6cVSarxs", "is_public": false, "key": "P8kLJ8I88J52cBpG"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DEAXMZRJ73wrAHIA' \
    --limit '71' \
    --offset '96' \
    --tags '["ZfDZRcoxC5f5l7Xa", "8EGWXMmVuJn6VEws", "XnxtCC8dGWlnoJXn"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X1u8uap0JjjvyVel' \
    --body '{"keys": ["HyJMWl70gdgktNBS", "y8qm4Zy86vVqDSoM", "idAoQDdlmEfVPskz"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '7tEZcGZUX7LHeJgH' \
    --namespace $AB_NAMESPACE \
    --userId 'WOKdFbkalVesQHyy' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'YZZXHVgTp71l8JH7' \
    --namespace $AB_NAMESPACE \
    --userId 'F4YwgB7HFXEZQico' \
    --body '{"content_type": "o6E39OoJz4WYBecp", "file_location": "ckj840lkUWOkc475"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '9YkrlgZnr8EkyGnY' \
    --namespace $AB_NAMESPACE \
    --userId 'PJ13cwmEUjAZ0DF9' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'KFmDupr0WgKhgOoV' \
    --namespace $AB_NAMESPACE \
    --userId '6Qz9DZ2D95x7wGP1' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'i6FE8GvRGuhGpbLR' \
    --namespace $AB_NAMESPACE \
    --userId '6oAFJ7YMn9fBl6Ev' \
    --body '{"file_type": "4PNWNworqHoek6SY"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'SLxf8qUZllUuPSQm' \
    --namespace $AB_NAMESPACE \
    --userId 'XaKshR96KmfWgdaL' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'QNB11kY0VATZTF2P' \
    --namespace $AB_NAMESPACE \
    --userId 'ySPTss08NQediUOT' \
    --responseBody 'true' \
    --body '{"updatedAt": "1973-03-01T00:00:00Z", "value": {"dvWLWSG4OAWQaRGr": {}, "SmRixg0YSTAFN1Ks": {}, "oKQER3b69OZljZoy": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'p7qiJ2fmeJsazEuj' \
    --namespace $AB_NAMESPACE \
    --userId 'i14wCM9mItQ9jrTW' \
    --responseBody 'false' \
    --body '{"updatedAt": "1991-08-17T00:00:00Z", "value": {"HsM68L3qTQ7d0tI9": {}, "FknslWiUjVPk27yg": {}, "3snVi3AlF2LQEAoC": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8qLQnBCsrqa6Y2U' \
    --limit '74' \
    --offset '95' \
    --tags '["QNrlYbEy0oMr4dA1", "CXuC0mrB3ubVyewn", "cy1itmCIqlM5Tw1T"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y2CvsZzHMH6NJ2et' \
    --body '{"keys": ["T0EAmwdSxuPOp3zE", "hKUktaBmLsPeM7sS", "g77qHzUAWVAD3Xy3"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'aAsCNER022oeyE0n' \
    --namespace $AB_NAMESPACE \
    --userId 'CDfJTM1gTG436k2G' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 't1SQhVo4cEEZZiK6' \
    --namespace $AB_NAMESPACE \
    --userId 'po8FcshOp2Ru4NIw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'zptVMAjQijKZGwaN' \
    --namespace $AB_NAMESPACE \
    --userId 'tpNZH1BaSqzWGFSK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key '0vRMhfTZgpZVMqCD' \
    --namespace $AB_NAMESPACE \
    --userId '3mW5HO2UqjEMQD2G' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'dFF0HV3fvoy5nlrR' \
    --namespace $AB_NAMESPACE \
    --userId 'VqVKXkl8SKVKKF2R' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'k2RKdislwFn1C5QZ' \
    --namespace $AB_NAMESPACE \
    --userId 'tyqNAORClLAIL8C7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'XQuSZ4MXoZOQuE6S' \
    --namespace $AB_NAMESPACE \
    --userId 'dieaikF0ryG837cK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE