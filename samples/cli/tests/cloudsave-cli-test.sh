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
    --limit '59' \
    --offset '14' \
    --query 'VGKMDVBpHZnJmp0U' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TK54JkEyojM3vUTF", "fjiWp8WRCRVkUCVm", "3mHab56gXaeCmvkz"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Rz6boVksTWeojMF2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 't8U5fEkDO2Qv1vwh' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'MekErpwMvb3A0m8u' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'C0FWi1TpPYf5bZKt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '7' \
    --query 'lWfzCXYzbcondvoW' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "hG40EhVmwsZmT9K6", "key": "QpqFXunMAeidGD6O", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1980-02-16T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '32nEYeM08qy8eQkz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'I9uh4ksqbe3Lu3Op' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "5NS3txAWNVaU2vDr", "file_location": "7knJ2Rh1GDz4JJTw"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'rFt5SBqkltF4njWh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'kpPGL3xcgeGvL0Ic' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1993-09-14T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key '5DPUPkf0oGx50U9b' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "4navXiBIVJ9iW8cW"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'ByfkWDMwNdAy5Dx8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'er3pCMv5Bunb60Rk' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "xKGpGvXy8FpQXM3q", "value": {"CGcOOiytirss2mJz": {}, "AT5ZBZ7FSPPvw0A2": {}, "C0egsiLmBfrQPhGj": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'UlGe6rDlW2liwdp9' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1989-03-02T00:00:00Z"}, "updatedAt": "QX1iNTx5WfKVUNBR", "value": {"2NrNJUcfhzMmW8LL": {}, "isJ2IeCQJRp4mdcA": {}, "hSxvSdFxtzcO2oXx": {}}}' \
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
    --body '{"appConfig": {"appName": "RihvzxwjrSrlglM4"}, "customConfig": {"GRPCAddress": "ZwQPdsO6YJDDm7Yt"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "CXgqxBLJdrqbytGA"}, "customConfig": {"GRPCAddress": "8cTDVjBCvkG6Va4Q"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '0XSRBA1qsP96zDnT' \
    --limit '37' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'v7PaZPGEoplwsIGh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'GKSCcB3BP0pdloI9' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'dR7tWMVIMGTj27ZJ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'ueVWIR0d1BpR7hQr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'KjCggifDkJoq3BBT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '29' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "o0uMpK4WOZoiIbbA"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'GAue58HasObzMQrw' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '3FagUw7sadi2gkvd' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bxzEhzNOqFTQ9TYy", "NwoqJKrAGVHIh1Qp", "1BWIR2aS5HdwEhIP"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["bo7sKwtyJtk6z9SG", "EDhfqyxPuiApEOSa", "ftlB8toPk2PLFggB"], "user_id": "XPVSJewHU74y9j04"}, {"keys": ["VDLzgCfHDnBGUA4C", "d3NV0QYeGm9PjAWx", "E3pdQ7IK9YRaLOCm"], "user_id": "SwYLZ3dHcFgUj0yY"}, {"keys": ["oSXbrKpauSgXkgHQ", "DCbu712y6oJOadR4", "NBB1i9kZJXJkf2VO"], "user_id": "YXlsSEWtTI1uPGrL"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PF3YI3vcTl6SC5sy' \
    --limit '5' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 34 'AdminListAdminUserRecordsV1' test.out

#- 35 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wr4vqJXCyXtpfaLT' \
    --body '{"keys": ["xgg1BPtYTKKP7hyv", "kcxpMa90akKLeb7p", "YY8qZLro4e6ugNrp"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 36 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'qJoxC8cEdX1xdJhg' \
    --namespace $AB_NAMESPACE \
    --userId 'i26WlOmUshpMHMtb' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetAdminPlayerRecordV1' test.out

#- 37 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'BZ3hA5Ovc8crmWiU' \
    --namespace $AB_NAMESPACE \
    --userId 'DOne1JqgGgOOKawS' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'AdminPutAdminPlayerRecordV1' test.out

#- 38 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'gGIoHU5BcfskJhSY' \
    --namespace $AB_NAMESPACE \
    --userId '7TkmnFCCqexCaUzO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerAdminRecordV1' test.out

#- 39 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'fVixjE8BCmpmPOX1' \
    --namespace $AB_NAMESPACE \
    --userId 'ldc70EuzQpGC9clK' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAdminPlayerRecordV1' test.out

#- 40 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rSLUo1fscIFauIG1' \
    --limit '62' \
    --offset '94' \
    --query 'pKmm4Dl4aydqRP8l' \
    > test.out 2>&1
eval_tap $? 40 'AdminListPlayerBinaryRecordsV1' test.out

#- 41 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LotQrnvcetLb6r8R' \
    --body '{"file_type": "gBvgO7d1I1bZ0ahO", "is_public": false, "key": "R7N9GjhjNy8l4WRL", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryRecordV1' test.out

#- 42 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key '8Lt5TLuHl7h05UFc' \
    --namespace $AB_NAMESPACE \
    --userId 'KiGAayYlCPxjjHRm' \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerBinaryRecordV1' test.out

#- 43 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'VpAOsMasCzIYFNV0' \
    --namespace $AB_NAMESPACE \
    --userId 'nrowo0kk7VTviEZD' \
    --body '{"content_type": "5apAgZtd8ygXujhM", "file_location": "uVxNTdefyMwuVQrU"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerBinaryRecordV1' test.out

#- 44 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '6AMCNVETVw1OktnN' \
    --namespace $AB_NAMESPACE \
    --userId 'DmB4jPuNRpocgHUJ' \
    > test.out 2>&1
eval_tap $? 44 'AdminDeletePlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'qNevOOR9Kzjy3eT9' \
    --namespace $AB_NAMESPACE \
    --userId 'NYdO8sMAmfuBtp9h' \
    --body '{"is_public": true, "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 46 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'l7cRmqR4qXFGxtCk' \
    --namespace $AB_NAMESPACE \
    --userId 'VwMhHlGRSsmdrdJv' \
    --body '{"file_type": "Kt4ks1rxmGOE1XVC"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 47 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'DlxFUybvvILZOo0G' \
    --namespace $AB_NAMESPACE \
    --userId 'b3CU0ts0L3PgEpcZ' \
    --responseBody 'false' \
    --body '{"updatedAt": "awoGKNRCWzF89hQe", "value": {"9csYntSTRPRRDnv4": {}, "sBU3WlRTq2yEn1AK": {}, "HsaTHsPUf9ou6CuY": {}}}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 48 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '07kwyuaxeeV52lHg' \
    --namespace $AB_NAMESPACE \
    --userId 'rtgTG1VedOckmI9P' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1988-11-11T00:00:00Z"}, "updatedAt": "hKMO8ZzVBI991VeJ", "value": {"Cql5uP92IW3rwZwk": {}, "MeJGZcgBKFxA3PS2": {}, "8mfsiPiVtf966cU1": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 49 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'dYkEscs721xPlS7j' \
    --namespace $AB_NAMESPACE \
    --userId 'bzJ0mnUGk9XRdV8C' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1974-05-12T00:00:00Z"}, "updatedAt": "qx11XhZxYr53JYia", "value": {"0GbnpSw8T7UihSKj": {}, "qZD00AoEwf4wUL4l": {}, "fjPZQo1ri9JmHKCe": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 50 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'O4ZUPMV3gm3T9VnL' \
    --limit '42' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 50 'AdminRetrievePlayerRecords' test.out

#- 51 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '5Yf5FTnNZmiWn6xL' \
    --body '{"data": [{"key": "CvpPjDYHx6KiMyrD", "value": {"GX2XZXg24tBbLTpg": {}, "dmnkETQ3o9Ostc4X": {}, "71rQ6ofdvBmxqEOG": {}}}, {"key": "EXK7ynbyAeiJ5VKS", "value": {"kDbsX39cIQAc5cBO": {}, "qrvytRDr9nABxdj0": {}, "mk6zCXeAnTkb1ESD": {}}}, {"key": "ZDjP4QQatQxLa6sQ", "value": {"YLc5pYYIk7XN3e6k": {}, "lBtokQqDGllct2IW": {}, "jZTQIQBoMBFLN8ti": {}}}]}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordsHandlerV1' test.out

#- 52 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'XVbkf23YaPuSE99w' \
    --body '{"keys": ["LBzUQICTALEH93z6", "DUZe44KDUOATOTsq", "x4rBMd8so7aqOrWz"]}' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerRecordsHandlerV1' test.out

#- 53 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'fPkqEkTnBJ8kXs8Q' \
    --namespace $AB_NAMESPACE \
    --userId 'W79LtqLLydsoWhqD' \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerRecordHandlerV1' test.out

#- 54 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '5mL8UXc3XzwaQgxg' \
    --namespace $AB_NAMESPACE \
    --userId 'PqoUBGbCFFOssTfx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordHandlerV1' test.out

#- 55 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'L1zXHkjKh6BXuhW5' \
    --namespace $AB_NAMESPACE \
    --userId '5VlMxdmqpMH3kcp1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 55 'AdminPostPlayerRecordHandlerV1' test.out

#- 56 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'I1eTsm5wqW7zvcOk' \
    --namespace $AB_NAMESPACE \
    --userId 'nJCuDoL7llyQFXho' \
    > test.out 2>&1
eval_tap $? 56 'AdminDeletePlayerRecordHandlerV1' test.out

#- 57 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'hPR0iECSKdqkkKrP' \
    --namespace $AB_NAMESPACE \
    --userId 'xRDKX4mTYqY3ppl1' \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 58 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'V6qDpnMntav3eyZf' \
    --namespace $AB_NAMESPACE \
    --userId 'rPaSBuNXo7OxmR4u' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 59 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'GfsZQCuUbN0HlkXS' \
    --namespace $AB_NAMESPACE \
    --userId 'IfR5aIB2IOGqCo1h' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 59 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 60 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'jnxi4wanKS8ZSVUB' \
    --namespace $AB_NAMESPACE \
    --userId 'kthMNOgH1SKzhMHY' \
    > test.out 2>&1
eval_tap $? 60 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 61 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'pXt9gpWFHdRcceLF' \
    --namespace $AB_NAMESPACE \
    --userId 'f1I6q0ZRJVAWbsmO' \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 62 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '56' \
    --offset '50' \
    --query '1vLELQ4XQVltJTav' \
    > test.out 2>&1
eval_tap $? 62 'ListGameBinaryRecordsV1' test.out

#- 63 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "GsORHmWBG02A3xRu", "key": "FaieJ6ANLGpOCXLL"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryRecordV1' test.out

#- 64 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["QzfABtiUUdcFkq8q", "C5LXNZhwVwnAFFA6", "9WYemrSpFGXsQTES"]}' \
    > test.out 2>&1
eval_tap $? 64 'BulkGetGameBinaryRecordV1' test.out

#- 65 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'jDmBYKIo5dC16ss0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 65 'GetGameBinaryRecordV1' test.out

#- 66 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '2X7uDJJsUe1H9n47' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "0XFPtJovCLZBMlXJ", "file_location": "fjnugZEXxUSst4HQ"}' \
    > test.out 2>&1
eval_tap $? 66 'PutGameBinaryRecordV1' test.out

#- 67 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'fDDObJfWkHfwh0S6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameBinaryRecordV1' test.out

#- 68 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'wzn3wlTsvqriw1Yq' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "mazEOXavkDalCH6n"}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameBinaryPresignedURLV1' test.out

#- 69 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'YXFj5H5ahqcQ7WWX' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "m08XtYaTjxzdPhWS", "value": {"nL3AtdsZY391496m": {}, "h7mPUNapDjzsHeOj": {}, "HdRLiQpfZNPawF1w": {}}}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameRecordConcurrentHandlerV1' test.out

#- 70 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["nq3I0XZF3VEtOOvj", "Zd0aHi1loTSqSWI2", "mRHFSKpPwMrhXsNv"]}' \
    > test.out 2>&1
eval_tap $? 70 'GetGameRecordsBulk' test.out

#- 71 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'XOHYGZnExQaE2il5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 71 'GetGameRecordHandlerV1' test.out

#- 72 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'PgmvJh8U63ZmBOio' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordHandlerV1' test.out

#- 73 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'sGkZQBszzXmdI7Gb' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 73 'PostGameRecordHandlerV1' test.out

#- 74 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '1hMaDwi3WQ5el1y6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'DeleteGameRecordHandlerV1' test.out

#- 75 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 75 'PublicListTagsHandlerV1' test.out

#- 76 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'SDwDXeFPXrTXzoRq' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["arnPZVBFJNIJOXve", "OyfBnwgIvXYquKg9", "RJqeaYw8bh5MTMOt"]}' \
    > test.out 2>&1
eval_tap $? 76 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'UwpK76i4mmwrA8mG' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8nyG5CsZBtiON9Xc", "gZOa4S8IZhRsVoQN", "6mQ3ZNw90cF6srJF"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 78 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '16' \
    --query 'ileeElSjiqU4RNCN' \
    > test.out 2>&1
eval_tap $? 78 'ListMyBinaryRecordsV1' test.out

#- 79 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ZYiyCTDlpvJrlElr", "3A0Q1lRaU7iz8MWb", "Iwk2o8MyWs7dqV9u"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetMyBinaryRecordV1' test.out

#- 80 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 80 'RetrievePlayerRecords' test.out

#- 81 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["gV4u34B3LBpYRhDV", "taoO09tw5prW7CeW", "bMPjro0S0VGTOadG"]}' \
    > test.out 2>&1
eval_tap $? 81 'GetPlayerRecordsBulkHandlerV1' test.out

#- 82 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'JMOJhKEGWin1BWkj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 82 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 83 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JiXQgq3WcfFnoMwa' \
    --body '{"file_type": "0XTgdIg3BMCSBLpJ", "is_public": false, "key": "y3DYEOfTJ35uWfYW"}' \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryRecordV1' test.out

#- 84 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uiHJ2j7WCoOmFFCZ' \
    --limit '14' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 84 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 85 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '9XP4vUh9tkXvmh4O' \
    --body '{"keys": ["KfJGKVAPNTjyoIig", "hzQZlScj5a3tzHhM", "olazEAeIqFhGluQ7"]}' \
    > test.out 2>&1
eval_tap $? 85 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 86 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'n65QfldW4mYMGuMd' \
    --namespace $AB_NAMESPACE \
    --userId 'eMKnErikduGKkThQ' \
    > test.out 2>&1
eval_tap $? 86 'GetPlayerBinaryRecordV1' test.out

#- 87 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'OtlUpkUxYNW5SiPO' \
    --namespace $AB_NAMESPACE \
    --userId 'cqOEcJuLp007FCOF' \
    --body '{"content_type": "pcg2TpkxTdWQTngB", "file_location": "ZrZFi51gjA64DYAv"}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerBinaryRecordV1' test.out

#- 88 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'CC5pbLibcsDlnW9J' \
    --namespace $AB_NAMESPACE \
    --userId '29VnJMVnQT1psqBp' \
    > test.out 2>&1
eval_tap $? 88 'DeletePlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key '6nD3GygvaTEBQ9RI' \
    --namespace $AB_NAMESPACE \
    --userId 'jCmWGjIJr7qsiOKz' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecorMetadataV1' test.out

#- 90 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'yDEsXM3x951yQCXR' \
    --namespace $AB_NAMESPACE \
    --userId 'XdwnldkfIiRLtEZf' \
    --body '{"file_type": "Kn9o6Hep584G9RF7"}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerBinaryPresignedURLV1' test.out

#- 91 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'ajxScek6XGyaaUkx' \
    --namespace $AB_NAMESPACE \
    --userId 'F4zFSFKsq2MmJTBe' \
    > test.out 2>&1
eval_tap $? 91 'GetPlayerPublicBinaryRecordsV1' test.out

#- 92 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '1Bqx3nab5qEfbn3p' \
    --namespace $AB_NAMESPACE \
    --userId 'dEBKPoGIBDD8a3nS' \
    --responseBody 'false' \
    --body '{"updatedAt": "YJTT1ZER0ze1eKDf", "value": {"DKBl0ysssYizsl2G": {}, "ElC48p53e6lKBUph": {}, "ilgMwmVg1iTzlWQJ": {}}}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 93 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'UU5NOHR5jBX6fn1J' \
    --namespace $AB_NAMESPACE \
    --userId 'ZOSWydiCNoKZsb1R' \
    --responseBody 'false' \
    --body '{"updatedAt": "HX4g3HJv5jcyQFV6", "value": {"AApcLMZhqHsgZK7G": {}, "USGO7FvRoWfLvTic": {}, "LxAaDy0UFUYpH7JQ": {}}}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 94 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sj8G6ocjfhsV2IWd' \
    --limit '66' \
    --offset '48' \
    > test.out 2>&1
eval_tap $? 94 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 95 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dMBYax3FJdeKqIhe' \
    --body '{"keys": ["Zx82rHxVgKIcQWr3", "ge2xnbGXj0UxbT2g", "L0xMzxdWnXvHv5Ib"]}' \
    > test.out 2>&1
eval_tap $? 95 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 96 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'jwjt3qYEVB4gyIGQ' \
    --namespace $AB_NAMESPACE \
    --userId 'qbxLiYlLtdBKbczZ' \
    > test.out 2>&1
eval_tap $? 96 'GetPlayerRecordHandlerV1' test.out

#- 97 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'QYUPeL3BkM8xwgQ0' \
    --namespace $AB_NAMESPACE \
    --userId 'HeiMNQxl7dOZrk1b' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 97 'PutPlayerRecordHandlerV1' test.out

#- 98 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'lQtyjOEJyy69uE8F' \
    --namespace $AB_NAMESPACE \
    --userId 'zqS9yABcTBZjuOrW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 98 'PostPlayerRecordHandlerV1' test.out

#- 99 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'TELZSyMA1gm4bTec' \
    --namespace $AB_NAMESPACE \
    --userId '5o7aSFhMdntZEJJr' \
    > test.out 2>&1
eval_tap $? 99 'DeletePlayerRecordHandlerV1' test.out

#- 100 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'J6guVKbJgqKx1HgF' \
    --namespace $AB_NAMESPACE \
    --userId 'QLaDCj2c3OS0y1kd' \
    > test.out 2>&1
eval_tap $? 100 'GetPlayerPublicRecordHandlerV1' test.out

#- 101 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'KbwS2VpcCTNc8aQh' \
    --namespace $AB_NAMESPACE \
    --userId 'riPoZZ3ZWi58Z7Pz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PutPlayerPublicRecordHandlerV1' test.out

#- 102 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'D0FxJTzgl7t3dTji' \
    --namespace $AB_NAMESPACE \
    --userId 'YmCc4pDP93SPYzSQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 102 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE