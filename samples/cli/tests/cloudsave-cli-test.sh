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
    --limit '13' \
    --offset '46' \
    --query 'oMZdOSqCZiIFXW8i' \
    --tags '["hs0PnCqF9RwoASFx", "nqMOPLjmtBd8jVnT", "58xlUjDDDwqnxPcW"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["jBQZrkg4n1byufUG", "upEuuSqtPDDQ8qgB", "adHnYVLWnzs8Iwq1"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Ge3KFbQCEGfSJIeB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'VMKCiZrifrmWIToc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'iX8eCNSX3f43TKDh' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'QPjCE1U2pYDXaa7U' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '91' \
    --query 'vEn5sxMBsTwvKgWl' \
    --tags '["xCbpieUBmXhq9r5Y", "2aOcgE8PrxmNMWZ3", "hG2ff05E4HhE95SL"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "qNXZ4KbAmy8q6kKV", "key": "F2g2AJcVeGdpzB5T", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1989-01-22T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'VOSNmIRwuqDtgcql' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '8DmlY0cJeLei0gll' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "2sBJ5Ns0IWLeKx07", "file_location": "oADIFX4JalwOIbH3"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'ZjAaUV4JUiT6h7bJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'beEKiPgFKlqK94vz' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["XnzLdxx7RO0q9k6y", "w8mAKYWcflJb27D9", "Oxe6DmIvXD8Qdixs"], "ttl_config": {"action": "DELETE", "expires_at": "1971-02-20T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'qTqtdS8MvpxIQLwZ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "N6cPlnHMNuCLNfTI"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'LSbNG1qNgcvKJ8R7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'LABI8i2DaOs3ZlUc' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["Ce7T5cRh5oUp2oDU", "WHegOTJr478zMjbA", "GGSknFZwBsvudNCd"], "updatedAt": "u9MtfvMWhVyCXHae", "value": {"v4RPG0IToOHmbndu": {}, "xsMyPagQWUpSrHCD": {}, "s31WeVpYM8GDKMyx": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'fngyMpEeuajfOdoM' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["AquFchDssvUNLwo3", "nTgBXv9BqzinZqXG", "KR3Nc6o7PL2erhpc"], "ttl_config": {"action": "DELETE", "expires_at": "1976-05-25T00:00:00Z"}, "updatedAt": "rXZLu77PMxaL19eI", "value": {"xqiH0LjA7Juolx1T": {}, "jO1eVi0PxE7CeQCB": {}, "3XeGLMpo0xkpfrrJ": {}}}' \
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
    --body '{"appConfig": {"appName": "oDtw4pwJRmwUGSdB"}, "customConfig": {"GRPCAddress": "Xicq01c6Y97wixHd"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "wzMJmeVGTbPn6AKb"}, "customConfig": {"GRPCAddress": "23Sodw56qwZubT11"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'EXIpiKSlOoSJxiZl' \
    --tags '["GQRgPO34wCzg2Zde", "VE5AwQMlSBfLognl", "jLoqbZkJQiRIzoTG"]' \
    --limit '82' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'mY3R62Xk6WVs2sAX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'ZjdKy95omXm0DWyn' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '53sI4wq1doh9UlzQ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'dELfvtqIqAzlmRBa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'dEEfNkvIrSyH5mzy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '23' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "ENKPaHGuiX4BKIXb"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'b6e5Dty4yCOduQLL' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'lKXwhRcY6rFl62vf' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["WyoyiG3omKnQOuMf", "qSTDhAetj0pcvjV1", "p2b9Akr3fzrSU9Dt"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["qFbcUyNZw1Thf2c5", "1ndjQVi0PudFzDT2", "KX6TRJ2nT1PL9c9s"], "user_id": "G0LAGyO7nwNCtGp9"}, {"keys": ["gphMwFacb0QtVoqV", "ACOFaJqNGFKj6AID", "uoeutfmb6a0qcTrq"], "user_id": "dPF5ShyGOKz0tYWe"}, {"keys": ["OjVTg20uWZdTkFvi", "jP4S6kMkgXkkVxqT", "oJ4vH3SccbsDm1zY"], "user_id": "Q63XMAHHjl8yKALs"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'JqlRcHBEFFlTmp4f' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "RMpx46AGIbhsy7yc", "value": {"O09MNxAnACeBebKH": {}, "DSph7so3YwaQ71Xa": {}, "LqOzP1clf1jVGCSV": {}}}, {"user_id": "x4aOfymMzQ04ZJf3", "value": {"ZvYSLI4eIF0q9NCz": {}, "m0nOqynV7T9pr9SU": {}, "xIarCUESQFnnPgug": {}}}, {"user_id": "3C7TIqFgXOwSo62h", "value": {"cW3N1BpnxS5bqlh5": {}, "bwQePeiqIDl0NqUU": {}, "g8X8qqGxyoUpLxv2": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'q050HmQMI3bqDF8P' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["avI0iTIQry2LC3Pd", "XCO4hf7TMrgxV8Ff", "jj3MAj9210rhjnIU"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'P6DuZkWkmSoglTst' \
    --limit '62' \
    --offset '74' \
    --query '2GL2I71HbQ20G3h6' \
    --tags '["stTYaMgcqY2PBRDW", "pKJrnBO6g9BPLMGs", "dryjPXBkPhOFEpfU"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'N1IeGU3OW1RX2I5R' \
    --body '{"keys": ["2g1Il9fz0JWCzj2Y", "vJGZ91qtNxHlCUDR", "lzBtbZoZPTKxQQVh"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'et8BVH44GijmHKDS' \
    --namespace $AB_NAMESPACE \
    --userId 'ACMWdZNjxgKNpN6s' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'zw2IyxKJjhMT4yDO' \
    --namespace $AB_NAMESPACE \
    --userId 'iXdUfQKRbrR6RKvM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'Ts06m3JHWQ0GaPn4' \
    --namespace $AB_NAMESPACE \
    --userId 'p4zA6V4QjGCgnCul' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'lAtl1yAA9TuSj2WY' \
    --namespace $AB_NAMESPACE \
    --userId 'Cv3zy1HBPCPgZfYp' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RFbRL6ZqIju3U1Re' \
    --limit '88' \
    --offset '99' \
    --query 'yM9C0Jclci9ufUvz' \
    --tags '["JWODrLudKVaeb6cu", "zlSzRwFlCC9p12ZY", "9oU682199moGVj6w"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IajXXfAGA5gnzaGc' \
    --body '{"file_type": "eWwXH4WQmmbkKbkq", "is_public": true, "key": "6XPNQrYw2AZ4tdfB", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 't3jwm5r6DRNXDxdQ' \
    --namespace $AB_NAMESPACE \
    --userId 'ybVT7xnwfopo3k6o' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '2cTrYlo8EjTNzOzJ' \
    --namespace $AB_NAMESPACE \
    --userId 'hhnWMORnBWNd2uup' \
    --body '{"content_type": "c53IaU83YcSgVmfG", "file_location": "5HKFk2uHV4oB1T2D"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'bsnFO0Ipo84YnNse' \
    --namespace $AB_NAMESPACE \
    --userId 'dvbUWSY73AsN4OB4' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'bCn6h2Uauj1OLXtR' \
    --namespace $AB_NAMESPACE \
    --userId '8TcFVaMXCpBcUnVZ' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["XhtJkbxdLQ9ef1me", "1iqRqIcXuagep17i", "Oqjvh92FIV2kbxl9"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'O6EHs5u5n6bp2Ge2' \
    --namespace $AB_NAMESPACE \
    --userId 'Zbb1i6V0Ooy4KlwM' \
    --body '{"file_type": "zQMq8AGBGWgo99qX"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '6s45b3JWyYL8Xz0S' \
    --namespace $AB_NAMESPACE \
    --userId 'GbKpB7ZwwMt4d1Z4' \
    --responseBody 'true' \
    --body '{"tags": ["tadwR9LMr2LyYFG7", "iakW74EoVA6yRqu7", "JjKlpV0Nj8tDMaFH"], "updatedAt": "8Rf46dIJIhtBq5Yg", "value": {"AzZ1UicOdU090bwj": {}, "SDllWZmonYUIhOtA": {}, "gB7Duyoz5khf3KaY": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'KdTroH6hu7akS3w0' \
    --namespace $AB_NAMESPACE \
    --userId 'I4rMR7xvwdNuoAxF' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["kghh08nqhzZe1MJQ", "Y2uWLFLksSL1nRpU", "YgqO33ddMds80pIP"], "ttl_config": {"action": "DELETE", "expires_at": "1975-10-07T00:00:00Z"}, "updatedAt": "tfC8dl2dm88N53NL", "value": {"kZpkDG9AW81K9NTv": {}, "WE5zuJY7JA9FFuFa": {}, "jGvGU8dMafEpz3OI": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'V4MgHMTRIEIQnsjX' \
    --namespace $AB_NAMESPACE \
    --userId 'az16u2RCouffjbq2' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["WHxovnwqUAxLxKw3", "nMWDmlIGRpWa99Mj", "1DjERHrjZ6Ph4TqS"], "ttl_config": {"action": "DELETE", "expires_at": "1976-08-19T00:00:00Z"}, "updatedAt": "CiQuyggaoV1whqHh", "value": {"herzJVzLxT9Zlypx": {}, "9VtqygG02SrjbtqA": {}, "8XMxvxhCy3luwslW": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'BlsE8w5AglxFZeN9' \
    --limit '63' \
    --offset '23' \
    --query 'QRXoVRTpNb8roQ8L' \
    --tags '["SbynHt0UqFyRHEfK", "iOLw1yZPKOoPqhgH", "CxDcoxrELX18ggKP"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LcrdErBEGkQqvZNG' \
    --body '{"data": [{"key": "Ufi7tswb8tiYUs7M", "value": {"uMQaH3BkWR1x4uxK": {}, "lVUuyra37IIKSVJP": {}, "pZlMSzX3aOOY6nCV": {}}}, {"key": "mLAeYPMeo4JHELGF", "value": {"bk3bV2ihzQXkjoWL": {}, "lKpciwjp9lS7MhL0": {}, "i9cjMTWdmxGhigZq": {}}}, {"key": "kkWZogrfxB0Ucia1", "value": {"zkbZduzzLdxPec0c": {}, "mTqJQfSrTnXb4izz": {}, "kSF0c6kRXy7w2pTn": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KYhUdygD9XbQQOOs' \
    --body '{"keys": ["EvsxbcuyhTZkUAOf", "0kzHkzS8wX56KVgj", "vdyIIAd2byqXgmhd"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'RPrSVOSgW7PFcMDM' \
    --namespace $AB_NAMESPACE \
    --userId 'VVoMBi0FRF3PorGm' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'fZbe2CYcRqLkwTod' \
    --namespace $AB_NAMESPACE \
    --userId 'NY9u6fhnLTEEImti' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'gYqe4HP3DfjayTn1' \
    --namespace $AB_NAMESPACE \
    --userId 'ayuQ7cidtj14WqDO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'sQpzDgqAgMsV5wIF' \
    --namespace $AB_NAMESPACE \
    --userId 'sI91f6VrjqdSPeAD' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'V7NGv0t5stzEHVJX' \
    --namespace $AB_NAMESPACE \
    --userId '7FpS9mjx4ZWyTLt4' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'sI9I3pK8Nd2KzMoh' \
    --namespace $AB_NAMESPACE \
    --userId 'e4JsSbJqQ7RHmXkn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'DeVB8aipcLSfZJP2' \
    --namespace $AB_NAMESPACE \
    --userId 'y4nrl2dF6DVRK6v6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key '6r2m9xhzBPJLAcNv' \
    --namespace $AB_NAMESPACE \
    --userId 'MCNW1HPKTbIpf85Z' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'nri839rVtZ8Zsnq2' \
    --namespace $AB_NAMESPACE \
    --userId 'nU1k5AGj9tNYrDFC' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '44' \
    --query 'ITcWjdPIUO3Yu1H4' \
    --tags '["jT2KD4puwxs0L9pi", "rx5lYEjzGQrLWbTM", "HeoacRJXnIZznH6t"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "OzmsgUlohvQ8crx2", "key": "jycARIYFoN29S6Y3"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["jQ2KsS4hW68TCnXx", "T4r3DyMcxyni2qPp", "THW6dckFS4mIxHIz"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'itZzvghF8Y8dBrt3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'MgnX4BMp926i6jOp' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "edxYwhTuWJ60Z2bk", "file_location": "TEmvaM1DiHBa42ia"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'R03Ge67zUJfwhDb4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'hISLkseUDrYL2WZ3' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "cnki1lWBe6YA4RIt"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'zB5E9ukiJ4nIQ25C' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "WEYoZ0WDlbwVhkMh", "value": {"tTTxZ2GbClnMPakB": {}, "TCMYH0ymQjb387y2": {}, "vWOsy52X06VIeprT": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["q0kQKiheq07kMxDM", "TkQlrvih1UOnPoY8", "GrxKTaMMbUj1sVIf"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '4gMYOfZLE3pTXtef' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'rZmFKZL3URGJYHKm' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'SeMgAOr7wPL640YW' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '4C1rm3gM7Q6aDppa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'AGrLyUOiBZ5tpVdL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["VunL3MNqa4o70DFE", "MHmxObu0bgelUcMr", "Tten5up21hlfbPK0"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'yL1nkD82MbYXQyFl' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["R1NJO9k4N3mPNgRi", "Lo0IKiWEagD2j6T4", "889ALx7yuQGeYLZv"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '52' \
    --query 'liQZBQni3gszLzYq' \
    --tags '["CENjhx1uAA2A0f3O", "cLa8dDWWbfRxsDqR", "qgecItVbouFrCz8H"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["3vuzOWiTcLXd9U1c", "UAtXPUGwgYqR9e7t", "XVEXDG9x9eM8oM2K"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '62' \
    --offset '75' \
    --tags '["sIsDsFDkBY4dap9v", "dBKJJsPvzzikB4Uz", "iS0n6DxPLksZgk0M"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["e7Uj6bTCH9yhewWO", "fZU3XDXarUxrSbHn", "XabNBVrmPSPp8lav"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'usfmtKfJQAvLlo88' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pagBYd0ZNgotALit' \
    --body '{"file_type": "GWmMBss74s43aTcR", "is_public": false, "key": "9Hj8USj1xGRvTY66"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'w1PdYkjL6y4MwmmT' \
    --limit '14' \
    --offset '48' \
    --tags '["8z0tplP2ibaz1ZLK", "XuO6JrMizYJxMTCc", "1jRo0bZ7lSKwToLW"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'i6kt5ByMBxqtXfKj' \
    --body '{"keys": ["ZIt3bdRtpkvtGXp9", "ztxWtCpFIOx5xyJj", "lc5pUpKP4ltkSdEI"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'Qq3gfLX2e2DnUCKZ' \
    --namespace $AB_NAMESPACE \
    --userId 'Z5mT80vBuf5UIJYx' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'yVlksnSraXiC733t' \
    --namespace $AB_NAMESPACE \
    --userId 'naw0m6Af9h870LOe' \
    --body '{"content_type": "AhV7ThJ5Tw8bWEyl", "file_location": "3jAv0RBOj0yv8g1V"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'Gno9HZJgfVGE9Qut' \
    --namespace $AB_NAMESPACE \
    --userId 'DUA3Fi55J5KtcVce' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'AlfAXbnqHgoPTuQt' \
    --namespace $AB_NAMESPACE \
    --userId 'V7OF0fEouxN3bggu' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'Jo88oYyqpxsFVRzp' \
    --namespace $AB_NAMESPACE \
    --userId 'KaqOFY8esNtaF5av' \
    --body '{"file_type": "ArHlDXQK681oK5MQ"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'KCOW4i8V0h34vn8F' \
    --namespace $AB_NAMESPACE \
    --userId 'r2RW25ZjNjYiuHi0' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '3zTn8pmGtnzHE2En' \
    --namespace $AB_NAMESPACE \
    --userId '1qPO31GNe65hnmrA' \
    --responseBody 'false' \
    --body '{"updatedAt": "2MzQZgGA5r2CkFH8", "value": {"Dvs85gBxIpMi5TZv": {}, "rRWZ7rxdqFlXQMvi": {}, "L76l5U09UVjJRe6b": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'jzl8llzfIy2POpv3' \
    --namespace $AB_NAMESPACE \
    --userId 'oXwfvAc8lk29uQp7' \
    --responseBody 'false' \
    --body '{"updatedAt": "aENZwYZ9IDIeqTLg", "value": {"AsJsEOiofEoLR89d": {}, "xeJFLh9rYW0RrCa6": {}, "NTxnfcitYyMrGSZs": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ctq7oIO7gQEuE4DM' \
    --limit '75' \
    --offset '51' \
    --tags '["LYL5jxbO6zhNumBm", "F0Dz7SLteL2WEGiY", "xYCuhuu3sHxxXgWX"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'A5TotwIqxTCB69Mh' \
    --body '{"keys": ["FMHSX5IE5azu4bbc", "84RylOm6Mugdm2u8", "W6hBFVGluAeNzFM3"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'GShe9ghazMirmQpj' \
    --namespace $AB_NAMESPACE \
    --userId 'iwQkbzheVFYjDdUp' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '775RYSyPzXag76Ri' \
    --namespace $AB_NAMESPACE \
    --userId '7ZGoMozhxDvWMSMI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'jq4MhvqkrJYfFlEc' \
    --namespace $AB_NAMESPACE \
    --userId '5xovmwtGdnyhyNnA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'PJHCjjA7A3lhAS8x' \
    --namespace $AB_NAMESPACE \
    --userId 'Kh37OzjgEVTjXX7y' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'rSpGGO4himdRkmvC' \
    --namespace $AB_NAMESPACE \
    --userId 'n1NinKG61yLojXNp' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'VorxTyrhsTP4QF7E' \
    --namespace $AB_NAMESPACE \
    --userId 'rqHc3kpqyWcKaxcB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '4vAdoHNmfOA3XanO' \
    --namespace $AB_NAMESPACE \
    --userId 'uyNRYnimbPfWh8lM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE