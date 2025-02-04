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
    --limit '73' \
    --offset '46' \
    --query '1ldKP2aM7J8YAPCm' \
    --tags '["sdhoTWeWrMtFsOxv", "L08MCkUFomWUZ0nV", "NeeqKSxAIf1xJcTd"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["A0YuuPsd34GoqQSB", "gpI7MelYEh2Vw9IF", "1erQtxrHebqzHHOO"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'JCKBX6kwxVCm2mkq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'qXXEc1bO5JWacP8L' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'gqiRWfjmmybglWG6' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'RjuyV3FNUfADQ7Tc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key '3cM5dwku6Y1amxw9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '90' \
    --query '0DR71pR2yLMHiBX1' \
    --tags '["exxLApRpSjdGHHRx", "HqxIQnZ3kzP4tmR6", "c1yxMLLro9NuO70h"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ksLjOCgTtjDUkN15", "key": "6eiBFDbflLeaaSpH", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1977-04-08T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'kheNBL0cP6tY4m4n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'HK3RMSWg3dVsmuKz' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "S979f2FY3mi3z44u", "file_location": "YVGWTjXnUrDhaxSl"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '0p2kxXLHEbWlP5Na' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'XtIbi2DrLChciFSs' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["BYZjATi7RcAqbvUz", "ZfJ3HkGqS3eq2cRy", "4BtMw7eBDcVTkmiM"], "ttl_config": {"action": "DELETE", "expires_at": "1987-03-07T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'ZFsFJa6IAj6oh9IN' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "A5xGzcJ0nzg06oPl"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'gW6yYX1iz5ZHYbhw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'L8C5dFX333lhKjuj' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["uNDK2PqR6mgTrZPh", "y6MdiISImm0svi8J", "FQulFii0FrCDSd5K"], "ttl_config": {"action": "DELETE", "expires_at": "1985-06-01T00:00:00Z"}, "updatedAt": "1997-04-06T00:00:00Z", "value": {"JO80SToBdX5sZlYw": {}, "Z8jkPMguyjLEkSkG": {}, "E4oKBm8Yequ8swsH": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '88diFacbTS19VHOw' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["C6V37S46K52PEWxZ", "QT8pMRKGcIHx6Vur", "bCTGE7POToxFXXGI"], "ttl_config": {"action": "DELETE", "expires_at": "1989-07-26T00:00:00Z"}, "updatedAt": "1981-05-16T00:00:00Z", "value": {"y5QYuVzV4bHEgdUE": {}, "6o93ojHxTGWhBvdl": {}, "6Qk2kRCVpmFA7UEe": {}}}' \
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
    --body '{"appConfig": {"appName": "D7BN75jVIRvy16IY"}, "customConfig": {"GRPCAddress": "Kyl1coFku1f2T4tc"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "9sfrqdniuLZppvWQ"}, "customConfig": {"GRPCAddress": "4IwBVxttYXXtSZuM"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'thO2rO8bj4r0qVJT' \
    --tags '["phZ3FbnhshZ1f1ix", "bzJhgvBjtGh6SBID", "GgPVLGD4MPozxke5"]' \
    --limit '100' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 't28RqTwJgNyLztfh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'rZqbzm8hT4M4r2O0' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'PAHBqaEmGekkrMP2' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'VyWq3RF6xPa5fPkL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'PUb5ZFauIu4ntdnA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "LuWnRoFiVSQbzQZA"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'bzd025Ofjh8Z9HWX' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'ifIQhbGFGaNn3gbB' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["SKH4M9CW3ZrC9aa2", "QjMFGPBuj8p3lIFB", "4JbErGZ9LTZYIIrL"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["dEqmfxRDGo2XlsdJ", "eliTSmhyeDO8F00i", "WOkH9aOiyqN6YcRQ"], "user_id": "6NXdfyyy3onC0i3W"}, {"keys": ["zZHvhB93evgLs7oT", "0Lmm3hEwkXsmC8Rk", "X1zOGWKWKntPQfbA"], "user_id": "4mZZ2e0lnQiccwnZ"}, {"keys": ["H97VY9bBeF072mZK", "bW3wejZKnQBQaCip", "sCRN7u8aVELq1fuF"], "user_id": "iBSWl1UsDipsEax4"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'FdiErCBQevduq5a2' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "Qs13hc2ftNuUUUND", "value": {"GLhw68YPspBvTkrk": {}, "ATwlB3rvKXOl6VCT": {}, "8N1lapjNnVUt79RL": {}}}, {"user_id": "05bIMexgXxFb1Jdv", "value": {"smEgAQuJh4lXs2v5": {}, "rIrPexW2GmUBNxCy": {}, "umSY2ACTrAMiWc4r": {}}}, {"user_id": "Y8mVBFm6rDLHVH7R", "value": {"XGhCb9isVhUIP6Du": {}, "AjKT3vG2FXAZuNfU": {}, "4Hhp2J5pznXr000X": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'ffQbffph2ZoO3XQR' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KyPtvF8TxERMhnZK", "PonNQ65cy1074IDp", "OcFv1jX5NStaUSrh"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'X9xQdbQF8KwdeRaX' \
    --limit '95' \
    --offset '62' \
    --query 'VWzRfcQntHNPEmVV' \
    --tags '["0ODImvnATTksG0AL", "wlBusZRzmsq1vFe1", "MWYRY982oWJDbw2T"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '2Mf5jNCYh1CZF3yv' \
    --body '{"keys": ["iNzQ0B3olmfWnC34", "4zBr3LtTW3iFOnJ2", "Mw9VW4cNICurkeM1"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'mgmEjJOZNE1IrtiC' \
    --namespace $AB_NAMESPACE \
    --userId 'wd1rx344Ymy0NPFL' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'IEVIxqcXmYI56ciY' \
    --namespace $AB_NAMESPACE \
    --userId 'lEKY9k3Fg7QkBCA5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'xchgnsQRjlvxv9Bz' \
    --namespace $AB_NAMESPACE \
    --userId 'nbJwK0UgLwDFLiTl' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '9BbZFkZ8QoJjI6FJ' \
    --namespace $AB_NAMESPACE \
    --userId '06BmiCbAkWL1ohQ7' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r4fxa8C8CnQEQvu2' \
    --limit '98' \
    --offset '80' \
    --query 'My3DjXJfJb2DZVia' \
    --tags '["ABDcZjB6vGmsMFSv", "kOigkp6JiRXZjBZn", "h5bfdFZMnDgmDypS"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ko38UPYY3jMZVPQ4' \
    --body '{"file_type": "LZrz5OfJYkoJkIGs", "is_public": true, "key": "OkL2nZp9ckeEGOTG", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key '7XJcNJzoQ7NoERBn' \
    --namespace $AB_NAMESPACE \
    --userId '4fj0gcuXxcGGxjDn' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'ka5C88ujsdlLlddq' \
    --namespace $AB_NAMESPACE \
    --userId 'jbxjOoqqUT3vRE02' \
    --body '{"content_type": "J86Mg4i255zlRe5y", "file_location": "oczKTH4GBCdtW6W1"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'HpjYZLYTsDFOcTrT' \
    --namespace $AB_NAMESPACE \
    --userId 'bpXwYmPwhgOTfBh8' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'Id5msileo13bcxR2' \
    --namespace $AB_NAMESPACE \
    --userId 'ft9n8e41zyFe6WqC' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["H8uhSxoQ07XvCkuJ", "a7BpW83lJ1KIwfcg", "PtROWcWB5Yioeio4"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'wsPPToKOxiDnlPMd' \
    --namespace $AB_NAMESPACE \
    --userId 'k7aoMFE4rQ5Q189o' \
    --body '{"file_type": "H61hK8XQdXVlojz8"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'EDYqIW1NtxhvqQkR' \
    --namespace $AB_NAMESPACE \
    --userId 'abCrufkEj4QD9D1V' \
    --responseBody 'true' \
    --body '{"tags": ["YKXQ4KAvLzMlR2Bq", "NpSlZcdLVRU8rPEq", "0fAmaW4HrghXDfkd"], "updatedAt": "1992-01-20T00:00:00Z", "value": {"DhQE2Er247IaTpis": {}, "UOuzuOpjkoH1Hx35": {}, "3ByKKpnmOHjTBdrT": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'aYhjYQBJJIMfm4GM' \
    --namespace $AB_NAMESPACE \
    --userId 'bYEODbzZ7PilW91a' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["miOmE9D8qCPi6hwq", "xdYrxsqigyFnntlc", "anHfdu34CFGVzAY0"], "ttl_config": {"action": "DELETE", "expires_at": "1996-02-26T00:00:00Z"}, "updatedAt": "1999-11-23T00:00:00Z", "value": {"LYWr5Ir5UNcxY8PS": {}, "ha6UrhJCPGzEJhZU": {}, "gPJifd6fWwtCLpEy": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'mEGNTA8BhUwlS1KT' \
    --namespace $AB_NAMESPACE \
    --userId 'l1ZMGDqXl5UkmzaL' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["6Bngay6GgaIXBIZy", "r1WWtIHc7JMN6PGk", "DQavqvX2skpyxLuR"], "ttl_config": {"action": "DELETE", "expires_at": "1994-05-24T00:00:00Z"}, "updatedAt": "1993-06-30T00:00:00Z", "value": {"8lNDGtS7q8OBJqdL": {}, "R1oGYcszlCBfHQMZ": {}, "tKhBZ6EY3wozAn2H": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'qyvGCdbrpJvaRmsU' \
    --limit '54' \
    --offset '96' \
    --query '0Zy7McQqC79b1VoE' \
    --tags '["6KcZwJNtnEYHAktX", "wIg0qXIQ3td48JI0", "h4TtO5IyZihuZpX7"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'm48YrrXHkbIjJN20' \
    --body '{"data": [{"key": "rv1Zc6KKYxLzkMFe", "value": {"zDSmU7KlhM3vAJJJ": {}, "4bv8vdewf1kt7Guy": {}, "2PAQHTNCev9fam2U": {}}}, {"key": "00uPLtbez3VWcUbd", "value": {"cu8qh9xXpgvUEdN4": {}, "bFqNjXqvoMKLs3dq": {}, "HRuz84ICxom4hbME": {}}}, {"key": "wwLnO1PYREOTXIAx", "value": {"7kb3TxdBwphWRQsS": {}, "Kz6KVSc4HFwfWd44": {}, "a1GPuZMmpMLlNa3r": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'DgvpzmTK4t8Olanx' \
    --body '{"keys": ["SdKbyH8HQT59Z1bb", "CxiehKQSUiLxtBNV", "7XQGQW2OFORm71fu"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'EPRJ6xRri5CXc2cz' \
    --namespace $AB_NAMESPACE \
    --userId 'oEGf5HfA2BP5BvVN' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'dtvJFwmQI8BvBMYv' \
    --namespace $AB_NAMESPACE \
    --userId 'ZBN5vt5c3ftiLyNe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '1TmKws7yveM9REGV' \
    --namespace $AB_NAMESPACE \
    --userId 'B0bgmXLxvVBMGI3S' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'fGDUtGFOxJ9Fk8Up' \
    --namespace $AB_NAMESPACE \
    --userId 'MygfqPOBTKP28wEw' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'Olilw2khVolFmI04' \
    --namespace $AB_NAMESPACE \
    --userId 'Woo7P1mBHHq4BsJJ' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'Ig9AFJnstGe67EkJ' \
    --namespace $AB_NAMESPACE \
    --userId 'h0IVkOxDjjTrc6bg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '0LjT5igQ29GLM0Ag' \
    --namespace $AB_NAMESPACE \
    --userId 'D8v13rDx80t8Kvjw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'AxmYV4XFEoOKuA2k' \
    --namespace $AB_NAMESPACE \
    --userId 'LPtLX2VZlss6uYg0' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'XWgsIyhYpe9MZfF8' \
    --namespace $AB_NAMESPACE \
    --userId 'uA1Pgo7LxL67nSKW' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '81' \
    --query 'vVpXbsXW4UIjLXQ7' \
    --tags '["C5RiEW6MUlbOYLXv", "9NCDCTUtmPYuaOeM", "pfvrE5niNAoE08ZM"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "Ug2RXpvHGeWS29Gv", "key": "pGAutK8JT9CI8YPo"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["sKntwKc0RrRnqzrd", "YScSoq4lcfN1yelk", "nvOAb0yawGDYJBVg"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'Xi9YJNrKBUH5JpD9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'tyVorFWPcVlbVEI2' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "YMGJCOfjfXF5kwW8", "file_location": "pwyzkVeSKctqWIvN"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'xsv7SCFvUbSwZUQi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'hhFy2t02rm28nwPS' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "IldkxKdYDTP9wdhk"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'xb4Tjg2CB4eI7lOv' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1972-06-17T00:00:00Z", "value": {"DnW93fjhD6wgNpPh": {}, "6xDKbGn1h5p5aRoT": {}, "6qGpymF4G1owYQfp": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["itcMkpkpF2YXdmI4", "0HVY7l27u81d3jqf", "5vyQHvrkN82eHqpn"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'xMlKiw6APJdlmm5u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '11hmsTDZkiOfvRMu' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'S6k5tFbUgAHJ7Q6M' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'wLCDaN5gyQ7L3sOj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'qqW2Wu6Dm6NW66eA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TAVMSFSY9eFvc1EG", "0TYYcP1QXo6lpSbO", "FylmquFwaaKxF93e"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'nQuoRF5rgz8n0eY2' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["T1Yhsu1FRoCXvO28", "3LxWg99tGJBJsH9t", "07nm0R8av5ak8aVO"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '78' \
    --query 'gnOBmuTxW9jGWtPz' \
    --tags '["NMDAo00buyR1WgnN", "6rbRezvmkK0BD89T", "rul5de5xhDJOCnyz"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["juSxhH14ZsuNln15", "s2HaHd81C1vFsnNn", "7RhRzVsqM0LGaSYf"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '74' \
    --offset '6' \
    --tags '["BJ576WYE0TWeM2Xp", "XOajXX8igak7h6PO", "HHYOEfKTyt7LGRB6"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["PHxAnl3U3uLijQFi", "nhYz26Ccjo6hnYNq", "0gXpd6rJmCCCU1Ms"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'iHxBlWiYDmIGLcHa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 't9R6mHbK3jQALgcc' \
    --body '{"file_type": "agSBZS8qRg3D4a9D", "is_public": false, "key": "UmDz92HL7MvSF8sy"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'RpQRQGoiq2ZJwnYk' \
    --limit '47' \
    --offset '39' \
    --tags '["177kW5SaJjkf7D6M", "XOurXSfqjlbmPO0I", "sMnyHYzK049e7w2T"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fpHetGDstdgOcNer' \
    --body '{"keys": ["qI9wuChmLnO0JlGS", "Xk5pPs9XH4uqkPa0", "cjoWfzxgdNMryq4G"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '2a20onSIhzqkL8eB' \
    --namespace $AB_NAMESPACE \
    --userId 'BvvCaYrnmZOg2RHG' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'wIHTItKnoHf52GfW' \
    --namespace $AB_NAMESPACE \
    --userId '3CyoxiULT6pjSJZW' \
    --body '{"content_type": "ouElCAymEe8rfBu2", "file_location": "Giz42dImxB3GX5rd"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'VAZKYNaouWBuBzMf' \
    --namespace $AB_NAMESPACE \
    --userId 'dpqJiTkln1Ag7prt' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Fio5X250ZZ0ElYVH' \
    --namespace $AB_NAMESPACE \
    --userId 'TiHuuPeNf8jg4V7s' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'C5ao6UcRNuXBfas7' \
    --namespace $AB_NAMESPACE \
    --userId 'NvW6mAIx2oaKXuYH' \
    --body '{"file_type": "XjvmbTjuCfGVUarM"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'a0QCbXjPhTpdydt6' \
    --namespace $AB_NAMESPACE \
    --userId 'Eo0nfGNNz3Cj7z60' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'W8NGvG486eDRDajv' \
    --namespace $AB_NAMESPACE \
    --userId 'da1IUHKQaa6QRtaw' \
    --responseBody 'true' \
    --body '{"updatedAt": "1974-02-25T00:00:00Z", "value": {"EKZtMDcXWLi5Z4US": {}, "3X1YuUYSTcjRaMtS": {}, "B8eSlPc5Zb2tuR2R": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'b1XKXaCg0EhZzEAH' \
    --namespace $AB_NAMESPACE \
    --userId 'HzrzOPSnyoX1vVvM' \
    --responseBody 'true' \
    --body '{"updatedAt": "1985-06-29T00:00:00Z", "value": {"LPVpQveX6sq5k0UC": {}, "3vamtsyYen3uxpzc": {}, "G4MLJ4Y6jY6oEwvW": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MATragHEfCbc7jNo' \
    --limit '94' \
    --offset '65' \
    --tags '["SRNV5kHT6KlDYMSo", "m6T4EdMT4MheBl9F", "0Av801lOZR2du5wM"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZHv30IyJLTBil919' \
    --body '{"keys": ["WqNujuRM7MEN8nca", "11MGu0RWltfxiD1T", "aQZqde34gCL7APmW"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'PUjuhrYrVST2wgzU' \
    --namespace $AB_NAMESPACE \
    --userId 'tfGOrihEWSKN3HRz' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'IJhA6HSx2GWyiAbT' \
    --namespace $AB_NAMESPACE \
    --userId 'UF233ZTcJ683le8g' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'JO6cQ9k2eI0NGfoJ' \
    --namespace $AB_NAMESPACE \
    --userId 'Szw9LdVTH9RElLdK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 't8UugEsNxjLDmFEz' \
    --namespace $AB_NAMESPACE \
    --userId 'sFSuUB1jaEqcB5AS' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'TfMfB2OGHcz1V2fR' \
    --namespace $AB_NAMESPACE \
    --userId '33c4cR0BgAXQlEjz' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'GBzWDXvdB6j0g0Pi' \
    --namespace $AB_NAMESPACE \
    --userId 'JKQ4snSt5ak69Adx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '9wNXRkrTAB8PrpfG' \
    --namespace $AB_NAMESPACE \
    --userId 'xNfiHpTzoR3Na12m' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE