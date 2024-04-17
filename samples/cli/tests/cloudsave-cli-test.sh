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
    --offset '29' \
    --query 'IEbkMNLoazzRdBip' \
    --tags '["uumu13CDqFmXYPji", "VgqeVOtEQ8KKXnKO", "CsluLV13xffxJPa7"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["cvDfWMw9WdNs4ue4", "YwKIR0KmBc226MK7", "hBDRZyDO38ELIe8B"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key '83jXTifZ5saWrWXT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'nJoPpcR45GKcDmof' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '5BKXF1pg69DmbbSU' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'JYSvYjuVdHMpObI4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '71' \
    --query 'gUta6NTmWxaq49NV' \
    --tags '["LDVszylo5OxEIQES", "gu1wn1YDeQ9trs5z", "x4maH3qg4CCisOEY"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "WYaeVwzcKuvnzsPG", "key": "ekIeckhQx6h5Ib50", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1982-06-16T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'BDd01YN8sjuAXSJK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'w0Qmpr5it8pjLkRS' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "RHOFp4vP8leVjUaU", "file_location": "uC1NKSU0cvqrEErk"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'ewOIh437BWqMZhYh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'kVsaFFhSzwd3Hg4L' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["2eMk9HSk6M2p9hv2", "FOcGy7M41Xlharj2", "IJos6FUjk8gPGcJe"], "ttl_config": {"action": "DELETE", "expires_at": "1973-03-07T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'hmO496uY9NLodXGA' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "TGP08KrYSWtlZom7"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'ZbHtRwMUEQYCuNaf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'OUfXSHUzf8oGpfyd' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["dyaJTCI8KhCWw2Q3", "st4njpuIp1ZtmHuJ", "ohZipSex4tIem3F8"], "updatedAt": "KCWFEjnS0nOtoGCw", "value": {"hpX0zaEwNBdgTdbh": {}, "IqJfZwXXShu6IjTJ": {}, "iVvCxbeFNyvrDFZu": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'ObNqslPdLtbVBceK' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["Nq7NJ1V8BYy139Eh", "jKA1VHacQhIpLbVW", "jYpIO5l6PE1hRbLr"], "ttl_config": {"action": "DELETE", "expires_at": "1999-02-19T00:00:00Z"}, "updatedAt": "Og2iJYSybGayZmes", "value": {"uWkXn7jdmEaVJiav": {}, "bsFXXbXYhwMQr8MU": {}, "Yg45OI5nBGLSAZO2": {}}}' \
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
    --body '{"appConfig": {"appName": "aUvHUhHBeHTjRZcE"}, "customConfig": {"GRPCAddress": "AV8cGOc2T8VPFWqx"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "V2z24DnlX0N5x2wH"}, "customConfig": {"GRPCAddress": "KLxOnt4XXD5A6yAh"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'kBpjSQ536G1HhXZi' \
    --tags '["Rsiluioy2GqRZhp9", "Py7vnFGUxpQgf8d5", "iqZ0l6mHBbw4hod0"]' \
    --limit '38' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'g1MbsMUYlWNOBQtC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'aJ7WEfusZVjPWJ8E' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'ZLn7gXqfbz5AyO2E' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '2LBrfE5ynhFFqUAl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'T1GHI5ZK28u6YOVn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "dFehyMAN2Oc6IQxx"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'S5hic6go4zsxqm5P' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'jsOICsgmPsb2FMEV' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IAOCIZCGtg29TwQy", "dU19zFeCltbPQpZV", "ClK5wkvM9Wr6s17s"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["j5CPplBRljs45Pty", "WHfFjFVP5eVzHAlS", "OKPS3SVqMkRiKdc4"], "user_id": "inLYpQfy6KTOJuzm"}, {"keys": ["SxX9U0UZQ0DgPa1D", "FosiNdg8CRMYBFkV", "OAJKXIL19raJoSZl"], "user_id": "lunnokJs5mjO0djg"}, {"keys": ["ZW377RK0pNYJJMWb", "h8xEyO4beneNXVnC", "EtAtXGwjVBpXfNRE"], "user_id": "8BSBPCd5a8JIEm0I"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'w9n8LsFhESZQq0Wh' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "OFF3MTLk96i2UxWR", "value": {"QbmkEkZdKOtzR12i": {}, "B66knV7IbUtHk9k6": {}, "L0KNnUU9vzhkjd36": {}}}, {"user_id": "2WObqBxvFxFmnSr7", "value": {"qjhT6MQXXG1YBO6D": {}, "oDn73pXvqVYdBClL": {}, "OeNFGKl8HtGw0YFk": {}}}, {"user_id": "60klitb727tfs4rg", "value": {"FUZFuOtQE9eVsLtn": {}, "bZpdMGeK52iaC58u": {}, "GAGfTLKp40GBAHjL": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'YFujoHsgndfXc5us' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["HxErpeDEWRQ36DHQ", "ZHMkIgeNE2Nlswqb", "YOAIzGu0OyF4ACsg"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '5TQt3bgDbQFEl9xc' \
    --limit '100' \
    --offset '68' \
    --tags '["439Bg47A2HoGuHX5", "hjwntQEjBzFeMgly", "eBpbcMcVOJG6MPmb"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Zpyvug3XWa2WNjTZ' \
    --body '{"keys": ["dzr7TDGAyuwg8c7n", "iympiIaoTSG76QHc", "mCf7l6FuHgWO63rJ"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'MjyL5NJf8MSilsGk' \
    --namespace $AB_NAMESPACE \
    --userId '3Xv0Y2ukmlg5VzTE' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'Lka9tqhvR8AgXUGl' \
    --namespace $AB_NAMESPACE \
    --userId 'VT1w87XhSjlCyyBk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'iocpxk0jNGJeRwoI' \
    --namespace $AB_NAMESPACE \
    --userId 'kwXUHaaooT6Fcs0I' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'IVeqmXPcd4wKDm39' \
    --namespace $AB_NAMESPACE \
    --userId 'kqggOxxSUT8mnCP4' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'C4K0YhucL6BhgDqB' \
    --limit '87' \
    --offset '23' \
    --query 'cIH3D5ELVcyO7VbT' \
    --tags '["JUTWIeLybASO5xnK", "c9nv5vLE1jud5DPu", "O45a3GgiERGJ35zQ"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'b0k5QW1AxDGhaCgW' \
    --body '{"file_type": "3oZ2n8AS0OJLLldl", "is_public": true, "key": "JuN9E3SqatgZ9D2A", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key '0001uncrOrt8sd3p' \
    --namespace $AB_NAMESPACE \
    --userId 'PXdLLTGRGU806EeU' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'vLTqy6TkpdmlWT52' \
    --namespace $AB_NAMESPACE \
    --userId 'NrAQW8MW4rJQqt2r' \
    --body '{"content_type": "eG1ZIFlQapJyS2ec", "file_location": "ptFNQtHj1tzAC81u"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'Zayde7Kk773zDGPe' \
    --namespace $AB_NAMESPACE \
    --userId '0NijNN4mXb0Dx9cB' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'O2UEPeIidq6ZUNLM' \
    --namespace $AB_NAMESPACE \
    --userId 'PRAaO3jZLuvV2VuB' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["ZjMFStx9jXiPvJie", "zOJmMRTjoqC1ZqGk", "7AM2hh7fcajX7p4n"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'gBoPAT6XkBxCaINJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Pc22HG9Dsye63mSk' \
    --body '{"file_type": "UggAeUus6tG1D4N4"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'yewhathbtv4vREGu' \
    --namespace $AB_NAMESPACE \
    --userId 'hJTnpXEeMe4f8iM8' \
    --responseBody 'true' \
    --body '{"tags": ["orJ8n8xB7ZD4G6pa", "AseWtTx9Lv2LmDnt", "C0GyWO670j9uZqLC"], "updatedAt": "fC1tQqGN7pC4PMVE", "value": {"oZwP9aLLwrdymEeG": {}, "OpOlouWqQ7UHUjMq": {}, "Tt8Pfw4FpVdkiR9u": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '4GgZgxBFsfiygAu9' \
    --namespace $AB_NAMESPACE \
    --userId 'qYrSp7M378belo5v' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["Nk0HBWA2WqLP9bPR", "O5sOCU4hwMAqm18U", "PzSp4NlAjsMZKX4N"], "ttl_config": {"action": "DELETE", "expires_at": "1986-07-12T00:00:00Z"}, "updatedAt": "YvrHD5YUXUSth77B", "value": {"K6JweCIN46CyvWB4": {}, "6eN8vvXGSralo3Jn": {}, "L5iLMCzwtxeQWexJ": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'enAySP4GOhwh0c10' \
    --namespace $AB_NAMESPACE \
    --userId 't7sYtMNUBa9A4Lxv' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["h51uaMJZMtMPLeeq", "rgWsYY1z3kYCVXuB", "mqDaWa7cwITEfG58"], "ttl_config": {"action": "DELETE", "expires_at": "1999-08-25T00:00:00Z"}, "updatedAt": "n730BmTA7aQNUogi", "value": {"3evJcyQVCREW3OmH": {}, "qrRikZyLfCPs22Q6": {}, "M9MOAb5ekHXxi1Jo": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'na0ZTgnI5Q6E66pp' \
    --limit '69' \
    --offset '63' \
    --tags '["M53wYGErlWJngjui", "5csktRXEd0YuSMQQ", "hCKIShVt5UODWN8H"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EtSUhbc4hOCZmzUP' \
    --body '{"data": [{"key": "6RdR3lx6wg1j64SH", "value": {"im2ggkJqnHTptLam": {}, "57wOvaP7HINjLzmg": {}, "Qs9J919vqaIphdFk": {}}}, {"key": "HqqE9NVqP8ljosXJ", "value": {"ktsZ72QNumgrQxCo": {}, "OWonEyRYUoncXhqL": {}, "Ur8T0UOBvgQEvD8K": {}}}, {"key": "ed9mnyYw9n9YnkDb", "value": {"yp3P6SNvI6qXq0hF": {}, "G9P5h83fMxubQp47": {}, "jQW0YXktptBxJ3NK": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '3dCojUnQyZhH3Ujk' \
    --body '{"keys": ["6sKWFxmkdl7HOYOe", "G4frtNpdtKCQxOwM", "JAAVEcMvoZR05ipf"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'omFtk2Sy1L3tRbxh' \
    --namespace $AB_NAMESPACE \
    --userId 'jJhytk013zd7PWuS' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'AZ9x3BMzAyBZiXgb' \
    --namespace $AB_NAMESPACE \
    --userId 'oBWRY6YAIxjGF0rX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'qAzEkVakXC47k7OP' \
    --namespace $AB_NAMESPACE \
    --userId 'IqwxGVyeKplfAmqe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'TXdy4gKzzX6h1Jpm' \
    --namespace $AB_NAMESPACE \
    --userId 'uauFlPV8VcbA9HYR' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '2aTkirXrwurkFCTd' \
    --namespace $AB_NAMESPACE \
    --userId 'u9laEGsr9A4dBj1r' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'lqlEySD1emGLNMC9' \
    --namespace $AB_NAMESPACE \
    --userId 'HZzPRcJnHbOjBk9D' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '0WeEI8FX8DF7N35w' \
    --namespace $AB_NAMESPACE \
    --userId 'w3g4uBK066xWNwYS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'aBHuOSUwcrjrGcB1' \
    --namespace $AB_NAMESPACE \
    --userId '8SHxz5nXAPHEBYEu' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'tcS8GC2RR0iIqCbY' \
    --namespace $AB_NAMESPACE \
    --userId 'njKx5BysZNb2i1w1' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '43' \
    --query 'bljskr8FVXLqrBcD' \
    --tags '["n9uFYVgZoGDtFJQk", "26G1mlb6W4etJQ9i", "ZHyNClQAhtl9ORO3"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "U6jDY1PPzC8L2x5O", "key": "Ch6O3RePDrKiJAjW"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["vAaNh1S1EEiMhWCD", "7AyPm3zbMDQnlE0c", "zb8vAi5WzsCUAsqP"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'Wr1uRjBucxJnITXF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'MztQWfQ5eoObiLxm' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "TDZWduhbwVWsr6M2", "file_location": "xMM6Iz5w0ZYUEhlv"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'hgXw0SKwnyBuCTpn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'Ga4XVyVJCttmugrK' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "mPER3jiWzyh1cKrv"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'GvXHn00uSglSYFXj' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "mW7jP87npz3Y76rD", "value": {"iaJK95P2qf0rS0sT": {}, "HX6VoyV8fdEw8KmT": {}, "i2pFjtDXTgEHhUGj": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["GTNYegyDDHJNWOtR", "qi9mh9b9lizwur8p", "3PZSYbFSfmFOeVgf"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'xsMFRvFaFLUjztZS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'HAozVDPFc4npdZaX' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '3OedmKzcUOXASyNU' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'P0p6jrd3anjCWsgI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'Vb1LJVqPKhnla8KM' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Ej4TbF0Lp5BLGJ2c", "kCT1z2pKGcEqujNb", "zQQGtIDcGp7uHKLL"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'ZlOSucAZ6UoQOThy' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PQ6zrbTyqDzEz4VN", "UcO4UW95HrsTAGWh", "HEraECEOjgmX9TWH"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '32' \
    --query 'HksJzne5iiHuzqbn' \
    --tags '["gtPier0MECFy7szu", "gyBwBD0nW35WuyzT", "NtVYXcJqADRBehOC"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["oS0nfZ13j45H1m59", "NhnGM6E61yYebV33", "ZX4L60M1BlzV95IZ"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '25' \
    --tags '["wSih1f26kSqiiXYG", "IU193VO5LXKEGwyx", "q9fAx6FM3yQI4J7I"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["dDi555vs0wYK9Wev", "fRRYcuep37MWiwcO", "P92vgz4KCTcR1JRC"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'x6MmY9QLNmzhi65O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eIXl8MaOIW5JJYHB' \
    --body '{"file_type": "6IHQ6B4zdmRrjS1R", "is_public": false, "key": "Wtd95JGF9Aed5bvT"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dz371g4u1X7G7Czt' \
    --limit '5' \
    --offset '64' \
    --tags '["oR2TC9fQj13mZu8Z", "qR2okPuOAdU6Yskp", "ir1ZkPwrPL726Yu9"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LvKGY8vCNYLXRril' \
    --body '{"keys": ["Zg591MsZdV8GI4r3", "oEx0wdjJmIcVbuH6", "Ghn9yW5xo8q2y907"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'vhcSIwQ2f4rfnG9m' \
    --namespace $AB_NAMESPACE \
    --userId '8bnTYt1oZn1EoOR7' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'T3ljOBzReQjIyTtE' \
    --namespace $AB_NAMESPACE \
    --userId 'YC1JwhqGjIRQscTD' \
    --body '{"content_type": "ncvXCRwh9yJBIGqU", "file_location": "5TEkf2hwaXpCRTXf"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'rGoj0mbFWaJWHPmo' \
    --namespace $AB_NAMESPACE \
    --userId 'JDvMqFSpQbpeerTU' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'aslZODAMVjY9CwEv' \
    --namespace $AB_NAMESPACE \
    --userId 'niUHhlFhXUz5JlKP' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'aOkbGpSCWftxbVae' \
    --namespace $AB_NAMESPACE \
    --userId 'ZyswgcRsQ8r1Jp7D' \
    --body '{"file_type": "J8pfaDVPAh3sU4Wg"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'eUyyn6QEdvTN01OM' \
    --namespace $AB_NAMESPACE \
    --userId '5zBseY3KQBIgDX8x' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'Knzm6x7Acjz3tPZU' \
    --namespace $AB_NAMESPACE \
    --userId 'lH2OV5IC7zRfvzyS' \
    --responseBody 'true' \
    --body '{"updatedAt": "SIw8g2w62x32XkOC", "value": {"IX4yByuVxqME8xuq": {}, "w3ppfmWQs1A8CHnv": {}, "NJTKczCIJprEvEpN": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'x76T1hiwy5p43gaw' \
    --namespace $AB_NAMESPACE \
    --userId '7se0Jk1FF2jEiWLP' \
    --responseBody 'true' \
    --body '{"updatedAt": "wjLnUm0osa68olSH", "value": {"eSlSy3u21SM8WevY": {}, "NwM5s0x29eTH7p3c": {}, "P5EycUwDY41WtKHi": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PlsIPkX3K10mR55r' \
    --limit '87' \
    --offset '96' \
    --tags '["x82j74qjNFBncUo0", "24Gny3wORDi1nQUn", "nfhtzrB3xs2WPhIL"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '124Zc22tYYmrwGCU' \
    --body '{"keys": ["eAzPXQp3jYrGDTZA", "jCD0QMuRCAekQMgX", "Y3tffb0t4fdM3bW7"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'Z5fdDjg6zCuuEbSn' \
    --namespace $AB_NAMESPACE \
    --userId 'V0JGCvqcyl6gI0cB' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'XVL9T9MdewyDNIPq' \
    --namespace $AB_NAMESPACE \
    --userId 'Pbw7M8Dk4FtiUwWo' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'VjBg0BOFfYqR8hOj' \
    --namespace $AB_NAMESPACE \
    --userId '6ML5Bn8dETAVmdbJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'XkBPGXpLNhoEVa9x' \
    --namespace $AB_NAMESPACE \
    --userId 'F8jbOR0xlOrPn90V' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '0XcqbfV8R71JqdQg' \
    --namespace $AB_NAMESPACE \
    --userId 'eZe3rAZZlfOrBKPl' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '9Rgc18CbeIClfq1B' \
    --namespace $AB_NAMESPACE \
    --userId 'XA4L8MBxwp3zZCAG' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'IAK9o67Ou54nhd28' \
    --namespace $AB_NAMESPACE \
    --userId 'y06oNGRLt6UxIu6h' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE