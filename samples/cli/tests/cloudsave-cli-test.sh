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
    --limit '53' \
    --offset '60' \
    --query 'aJSMXKaYFk3d5LK8' \
    --tags '["N93MHODmX0atlpQ0", "2MQgentLT0UkY0SV", "AVhNWyEZaTUqslT5"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["389XLjlU6lbApahb", "QMKkW5kS6BFVqRa7", "nrUmZ10XJcSzHKlb"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'IVDqKLZr9IbRTyHR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'PI3RcId1Y7k7QBAs' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'eqJ5Y9fy7HNN6nie' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'FxbkrOUhlkemJS6R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'MGcZDdV4MyEAPeoh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '45' \
    --query 'WldrkPIsYsqiXOCr' \
    --tags '["Z5qbBp9dDBevKzaH", "fW1rXipYGYg3Df4x", "PDZNGjIZ0c1RZkte"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "4x8sQBWMNZoOaEtM", "key": "YR8bjz0jIfbFQQnu", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1995-02-08T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'jmuMfYT81jHWF8gI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'hI7Nc6BljChqJbIJ' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "WKiRw0aY8Aw4tnW4", "file_location": "4Ejjlpq5rK8mSwC8"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'sAnUhBVHJD3a6KXS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'g0H8DaEkFjqhUev5' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["loQlNlqPpETldWoT", "XJB0lDWm9Gxjg03i", "HxDUpJQrQwhAEvor"], "ttl_config": {"action": "DELETE", "expires_at": "1972-01-18T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'twUpU4VElgFK8VZL' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "jsRMBtgWUXKBL6dc"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'GuTCDFK5hStBqZlw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'S4msMU9XedPxxBWr' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["eeX4YQIP273ETPX6", "9wPBbDj4NiwJWGWn", "VMxWWZF8xMKBLHp4"], "ttl_config": {"action": "DELETE", "expires_at": "1997-12-27T00:00:00Z"}, "updatedAt": "1971-09-26T00:00:00Z", "value": {"SEgPPtSEPraAloi8": {}, "sq3AdMiSY5529pC7": {}, "XLDkmAgsX7TPjMRO": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'CrjAjT8V23CLnjni' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["TqNHKqVawgRkwkV7", "0QPyiw8JNTg97BFt", "1Avfhw9Nu81CMUz4"], "ttl_config": {"action": "DELETE", "expires_at": "1975-02-24T00:00:00Z"}, "updatedAt": "1978-04-18T00:00:00Z", "value": {"GTDFvK4JVnKYLx0g": {}, "8u3uxFkwnPkwTCEN": {}, "DhOmDT63cJDIibjB": {}}}' \
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
    --body '{"appConfig": {"appName": "xxWhcANgKQpxWwV9"}, "customConfig": {"GRPCAddress": "VNeig6hOJBTt316E"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "7ja4AviMrQEhvGTh"}, "customConfig": {"GRPCAddress": "kGyca1jyyp4UjlEE"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '0qRmCJAiH9H9UTT1' \
    --tags '["1in95NVzwu8gAwDf", "KikSE7QGOZ2skki3", "6HsrTsLGXvnWKD9c"]' \
    --limit '25' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'jcuhzW4vOQwX0lA1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'ht5w19xZEF9VmFvY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '0xm3ZoXW8N60eQqL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'f2ujT4lUE22gp2dC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'jQp0biaawLmYb5xD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "gIbaGTWWo3NN77pg"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'nSn2IWDBv6EqvChc' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'E4Pj7CPv3cwzIJvX' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PylPviPELfX6s5CD", "B9f1Mw4JHtNSejTy", "4sxIp9OXvHWzrJQz"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["ECc9R6CtTy12Imbk", "s2ybDOw4fBmuInPF", "zUe89NNK2zKY6V5q"], "user_id": "H2B5uD4b6808Y8or"}, {"keys": ["aol68vF7IaVPg0ph", "MOWfUrBevXs8BAty", "qXsScr1tu1RDgZRG"], "user_id": "oyL64OVhEEDHEQL6"}, {"keys": ["d8cdNyjVtCsBh5JE", "TiHDdLSgeQ2uYbtH", "g4S4R7Pm7dsg7L29"], "user_id": "soXIe2gqqMSMdxuT"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'oBR5C3jUXNJe1VRP' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "uvjyrEqcXJPCg3Ez", "value": {"Loy3ywuHkKhzSvbs": {}, "ifBXPVLplAxAe5qZ": {}, "3FbhmZIBUR9A3Pbb": {}}}, {"user_id": "V6bjiesObIIn3q2V", "value": {"vP91BWzXuPTEgGn4": {}, "zLu50TtrfQOw7hRR": {}, "lA39xKGzpvw81FEh": {}}}, {"user_id": "KrTJ4z7omXkndRbP", "value": {"j9m4U4YYHeX4j5rr": {}, "Rz23PwcdWTBcqSoq": {}, "hKEJ4lEvOA52Vjd8": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'IdiaAjT7IhXWCmG0' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ZNE2YxnUTpcgAI9x", "on1V8lJxactxHgyz", "1ZU8SgGQtVbSkrD4"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IWV3GDL0bwfD75KJ' \
    --limit '97' \
    --offset '68' \
    --query 'C4CNEx1TcITRkMnL' \
    --tags '["Ec5vdVTPpYvTb04J", "4zwSbgAsJGXox4qn", "Pa7cjZdEJitOOfEz"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mzYBQAkCLDV1lSRj' \
    --body '{"keys": ["sVcsRNe9AAC97w6L", "iJKERdSfFmP6ztoS", "geRfH7Bz89p6wo67"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '6dWNaeqvgEtKyc0K' \
    --namespace $AB_NAMESPACE \
    --userId '53yNQoT9YIZFNubn' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'Nqu7OI1vOvzAvcxt' \
    --namespace $AB_NAMESPACE \
    --userId 'FpKQp2B6GfUfJ0Fe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'fZ9EFVK9OMBpP61K' \
    --namespace $AB_NAMESPACE \
    --userId 'HUDo43z3p0AybJaK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'etuNcc2I7a070h4K' \
    --namespace $AB_NAMESPACE \
    --userId 'jDvYBqoiB4aXci0a' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'D4KvAPD5gUt2Zr14' \
    --limit '23' \
    --offset '71' \
    --query 'v1zUvAtofucJpoyy' \
    --tags '["r9szUAuu9UYd363E", "6IfVgCP8pmiQYiiO", "MhscGY5nFXc0VBEg"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ybs8vH1WCx0rbspP' \
    --body '{"file_type": "K8gFx4dvcSvpw0a5", "is_public": true, "key": "fpkIpIPBG8NZNoqp", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'GGnygrsvE7O1ZCmm' \
    --namespace $AB_NAMESPACE \
    --userId 'xBJl6GrrIzRhlDtL' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'ZGOsiUHVSkflToC4' \
    --namespace $AB_NAMESPACE \
    --userId '004DtnImcRM1O9v8' \
    --body '{"content_type": "FWh3uQVeFA9xFUxO", "file_location": "RsENM6nyFfxoNcy3"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'B8ZHvdBuWkKXmGab' \
    --namespace $AB_NAMESPACE \
    --userId 'KwrLqcU3Dxp5j8K7' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'GYAGNErSmFPygyne' \
    --namespace $AB_NAMESPACE \
    --userId '4D62w3J8DUQdiwEy' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["KtIMZqzYPkZLPWdz", "22UIa8X8BzAn8GW0", "DaRubnMHzZrL1RJ6"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'uI0ZaYwYCUZX6AlH' \
    --namespace $AB_NAMESPACE \
    --userId 'nL3tIc42yXFYahUM' \
    --body '{"file_type": "sDZJ6bm03ZBEmT4R"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'aYGfpJOMNQWQqTiT' \
    --namespace $AB_NAMESPACE \
    --userId 'cwm9lG38gznWMiI4' \
    --responseBody 'true' \
    --body '{"tags": ["qStginX6Pi3iOhfd", "rkk1VV4El8VRib2L", "4ud6U5Jb2OqrTJUo"], "updatedAt": "1972-01-29T00:00:00Z", "value": {"wSjrG23gcrJJ3cfZ": {}, "SsVi0kfqtzR1XNQd": {}, "oSdqrtX0zSO98P72": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'wmKrZ2nSZ0IF5OzE' \
    --namespace $AB_NAMESPACE \
    --userId 'DoHY5jMZIDHo7kIE' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["mOCyDHrGvZ8PwKik", "f68a7ChUpSwsL81e", "suHfLTDDexV32VLA"], "ttl_config": {"action": "DELETE", "expires_at": "1998-04-06T00:00:00Z"}, "updatedAt": "1985-05-22T00:00:00Z", "value": {"vpcWyOHjlm4m6hZW": {}, "VoTh8yPd1naacSLy": {}, "uz05X6viYI96UIk4": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '1s3fyztUtZOriZnY' \
    --namespace $AB_NAMESPACE \
    --userId '0il0EoVOrl8wviIy' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["K5VZZR4Enwa612VR", "Qsz1kQ0uBSKtP1Hy", "zpZSFGRdbr1pwiJp"], "ttl_config": {"action": "DELETE", "expires_at": "1978-11-02T00:00:00Z"}, "updatedAt": "1984-04-24T00:00:00Z", "value": {"5cWwlfa817hNMh9S": {}, "qJd463Fxiy6k4JxS": {}, "xWrdXrR58YsDrHwk": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'ts92DkUcSmQwcmjF' \
    --limit '79' \
    --offset '85' \
    --query '3LJZuiVp5N3SElAj' \
    --tags '["H6POJGCFLlcB6WG5", "dOcE98DpvUllyZ6s", "yfZUHDWvR8nZFaG9"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '6WyfywP7xLhJgF56' \
    --body '{"data": [{"key": "ZebjK0jsTjECEMby", "value": {"9Y4QBnlVA4oXgZPz": {}, "IcDAoBLE946txsbm": {}, "XJ1vpjCODM5UrAF4": {}}}, {"key": "NUumz1Mwv3Fj3a9S", "value": {"dsIpl6CwDtPuK4DF": {}, "sCFAF3wUn7JvXi44": {}, "VJL0yAiKUrNquDRa": {}}}, {"key": "oqv7dKVjMMuhcvYM", "value": {"f50wiapqbx9JciDM": {}, "Uu0rMRFHOlT3XX69": {}, "fI9yDstlSWFgoSsZ": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '43WQ6S6mzf5CR6K4' \
    --body '{"keys": ["MjovOzcHm3GJkaE2", "LIeVp3AhlR4rZ6bH", "7jbWYD5UDxEIY8Rv"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'NXzAtSn0HVceapPp' \
    --namespace $AB_NAMESPACE \
    --userId 'BHyRJCpivMOwR9zc' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'y1aHJfTS6iwnKdid' \
    --namespace $AB_NAMESPACE \
    --userId 'njloKgsyWXHRk4gr' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'cjsElNvNcEDL9yCR' \
    --namespace $AB_NAMESPACE \
    --userId 'QvgQruRH2nNWNwFR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'uCKZ223vDtXfroSi' \
    --namespace $AB_NAMESPACE \
    --userId 'w5hlzTQoYw3cR17H' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'dal7cdw9C72aQxtw' \
    --namespace $AB_NAMESPACE \
    --userId 'Q2WoyiHkGbEoc6sF' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '08PhLAQccGCY8spZ' \
    --namespace $AB_NAMESPACE \
    --userId 'eG4QzkfEWAIf8I8p' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'venbwYog2k24YW3k' \
    --namespace $AB_NAMESPACE \
    --userId 'm94v8m1469sRcDfP' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'ek7UMEtFrdpfIh8G' \
    --namespace $AB_NAMESPACE \
    --userId 'qstR4fG3XHoo8qos' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'DegnYBFyc0Z0iJbL' \
    --namespace $AB_NAMESPACE \
    --userId '4BsSe8WjId0MJRmz' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '92' \
    --query 'FHPl9tm2QVXAwNYA' \
    --tags '["RmqivXeRDZsOJFYp", "qRWiUuqKqi5hlGcN", "ImgrNqRWSXUrGrcb"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "zrhuElwNzJDrLDGS", "key": "8ZGqj02cNkul0O1E"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["PUpVnsfWPoXD1vLZ", "HoDicZLA5unQTE91", "snRSnKt94Bzkc6KM"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'n8mEXhk6Std4kmw0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 't7eDRITWbYdMBCEJ' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "wbwXYlkwwEZhNNrZ", "file_location": "Zh6bevdMkDdT5iHO"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '1oWfLy0G38jmzumz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'm3C76fexn7e2LgLx' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "C45cvTNoTFA5Ymy7"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'HbcuWMkwCaO3OrHh' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1978-12-19T00:00:00Z", "value": {"50Dlbed4aKKyEjvJ": {}, "RDbt7msh6CVD0tFQ": {}, "SHdAscswr11K6p0r": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["vCrWYdKTahcjEDo1", "Jk7WZpt7U5LCcI35", "Uu7pljD6u81ppRp6"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'FAAPHpQNeAUHesCc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'hpWPIgErv1IDMX3w' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'b7jsrAvZ8GK61rcc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'lRdwXX4YJe6dvArG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '72' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'OHoFABlqkF5Mikze' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MAoEEO9Z5o8dnYZn", "dGLrBvKYZtG873Aw", "Ym9xIM1dUitbiFnM"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '2Hz7jKq0Zf4uS2Fg' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bVGbcnLFxTLlFTSN", "ASnzgNIEfp1vutI5", "NLYbYOwNNOUmhyn6"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '42' \
    --query 'trqbioOCZGVNPnda' \
    --tags '["ehIUg6y6DD1sfe3B", "bY4VAe2JkXFd2LGU", "OTGw2Aujr6Xlkljz"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["20qfLQOkhEyugAlZ", "sfuIHDdndVMuUm6Z", "l0CfhdlFkEG2EYBW"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '42' \
    --tags '["N037rjGkqPcMrIok", "1meLPhm66ngYFWik", "9PdP5uI7EtKw1ZZj"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["NoUWJ4Zuy3qWaIXx", "XsmJY6Ta3XLxBFDZ", "bhqjH13dYJ2wvNrc"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'SjirDEZh17OqyDuQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uXIIWPsdeQ0eowLH' \
    --body '{"file_type": "E6sWUizDnGbgaauR", "is_public": true, "key": "0K1Z7xisvos8wSCS"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '93iotVmEAzjQmZ1G' \
    --limit '64' \
    --offset '24' \
    --tags '["UXvFrqa9u82pUzsJ", "66kkkfI55w7AOjUM", "EygCCN76gxkKYbZx"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LlLMzSzmUfxrRc9Q' \
    --body '{"keys": ["mxRhAhzwQbF96pPn", "d0wasujJIChumA7f", "3V9h6B7gInoPVV5c"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'ZhNuNngZUSPJwrhU' \
    --namespace $AB_NAMESPACE \
    --userId 'Dbyz1VEcV7xLRUva' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'QPLNBcMqF5QTh152' \
    --namespace $AB_NAMESPACE \
    --userId 'c8yG8RaQCu7JhShO' \
    --body '{"content_type": "cmcBwX1w6A374csO", "file_location": "nabHdfQ2rYOu2f14"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'hft0hfjAzsE92Gzs' \
    --namespace $AB_NAMESPACE \
    --userId 'oh6MilGp7LojXzuR' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'b4C3YSexXTEUoM6W' \
    --namespace $AB_NAMESPACE \
    --userId 'rL1mnqw5BJUGo0Bc' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'O9n6NRDKCHj6BT0p' \
    --namespace $AB_NAMESPACE \
    --userId '2IIjQfZWKYtzeDtm' \
    --body '{"file_type": "BXvAMCP9RPoPwMzv"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'GUsH6TcE7BYyp6sH' \
    --namespace $AB_NAMESPACE \
    --userId 'ssqVRc931lqkWjbs' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'kkAmRGNrIW5DPV5Q' \
    --namespace $AB_NAMESPACE \
    --userId 'F4mzQ4UhHNjzB7aC' \
    --responseBody 'false' \
    --body '{"updatedAt": "1993-05-25T00:00:00Z", "value": {"4m0Z3p18jXG8oHwj": {}, "8kyl0DjGedDRVJHd": {}, "4ocN8w8x6ldRkh3U": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'xF0GMyfjFIUUzh65' \
    --namespace $AB_NAMESPACE \
    --userId 'V8Ei2iI8wTmdK4wX' \
    --responseBody 'true' \
    --body '{"updatedAt": "1990-12-24T00:00:00Z", "value": {"Me589YvulKynw89K": {}, "OtQFkSRusbkV1Ppt": {}, "KeZ8zG9x9VCtUUF4": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aLw3Q0i8XowbvzPu' \
    --limit '28' \
    --offset '52' \
    --tags '["dklDZEV9is0GH6Mi", "SYJmW5Q2N3rGqDmj", "jF0ijKuqtFBchoGq"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GTSilzqpjfmx13y5' \
    --body '{"keys": ["hhlzCBDo5akPKGF0", "q7ukZIHJXk21OSWP", "ySh4LVcTvyZmH0Ts"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'CtC6sGV9ms86NpDf' \
    --namespace $AB_NAMESPACE \
    --userId 'mSvoAH1ecxNndsFU' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'IvI4k6kRLokf10e2' \
    --namespace $AB_NAMESPACE \
    --userId '8xAKwmImsPJ5BCKf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'EiS4DNlHJP1erjYg' \
    --namespace $AB_NAMESPACE \
    --userId '0Q4vFfsJyf9S1OVx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'pDNlYQhrArrZ7fvP' \
    --namespace $AB_NAMESPACE \
    --userId 'tvZu6Bp1roesUnki' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'lk0v5Z0UJK9Jwmy0' \
    --namespace $AB_NAMESPACE \
    --userId 'uhzpKp2GdvDPu1QI' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'skmaWEYALMBpQIul' \
    --namespace $AB_NAMESPACE \
    --userId 'TTdvCMH3o3Z92TZ1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '8Jj6Kz36vU1O3E4s' \
    --namespace $AB_NAMESPACE \
    --userId '3DKiUS1wEEXibGlZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE