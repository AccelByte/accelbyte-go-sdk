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
    --limit '97' \
    --offset '19' \
    --query 'rt29Oa0g3OYu0L1F' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["fZmbell55VE93zYo", "kG5HL9XsAHEZ0oMV", "vay4kqZ3FRHUpLAf"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'rFdSz9wEbcZl5qJE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'aCqKVQWiG1ikA9mU' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '2SrYX37Pg0ooQwX8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'zXQJZYRDhJo4r62T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '58' \
    --query 'T7qjlZUyyBTOHgoN' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "1b0YPxQKhKPAHfGu", "key": "pfy9dqJn9LG0luCR", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '877kiOmugaE59WT5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'FkJnjZp8nMLgsDVD' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "i8AZCSk6Zqqk6P1v", "file_location": "EkvzQMn4EdQpEtVk"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'BoPfVlwLgf58AOUp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'fe7aSCFOA68Fqh9C' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'g84ay5nunsJCVnOX' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "PnR9BhOuqkgwno4B"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'bY6IL6MVQ2fvTaaJ' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "NlXqQXGCfexJgiF5", "value": {"M9BK69tZUYlOfOnD": {}, "d3bof6jD4wfiRM5h": {}, "WIFZ0xB0utrtoS2d": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '7iV7uQvyO33icZbz' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "updatedAt": "3jQzvH4HktRWMacu", "value": {"utoQTTvDOzK0SDr6": {}, "loeZGcHvxBNw5bGE": {}, "2YHE9z05fMs895fF": {}}}' \
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
    --body '{"appConfig": {"appName": "yUS5by4wWu7kVcga"}, "customConfig": {"GRPCAddress": "E91yVO9xndocL3Iv"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "NU2taezhW8HntCBy"}, "customConfig": {"GRPCAddress": "1ho0xIsuYulRri6b"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'w43s9wK3GnzhhSvT' \
    --limit '22' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'vlZ0uICLIOPWiCwS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'MLFlTrSihBY5COdV' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'eydTLrGZLNLcRGps' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'gg8RyAOaUZWEmlpN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '6z8Yu0kY6Ylw14PZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wvWXKkzewvRwL7sa", "9Z9UjbweRssKUro5", "etq59dgN9pNpWh08"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["UY0CfvPgQOO7nQUW", "bfvA5omxfhiOOAPk", "qE7d9ZNq5jIVcl2w"], "user_id": "jmIvW8PbVfYsA7qr"}, {"keys": ["FSn8TKJ2xBN98nI2", "c2gWK4XxHXdqpJpI", "jpGEgvA1sbGzZKg1"], "user_id": "KxCs6ogEgfxyz6Fw"}, {"keys": ["8UStIhti9x7DiEha", "otH04YUJ5lVRUZJv", "xyDW55DcggdJVsAp"], "user_id": "A14KF7rfaL9MK4Ae"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ckaYtDbrt1hglgyH' \
    --limit '1' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '7MoF51IFYtBRemuB' \
    --body '{"keys": ["ga3WNV4YNkhqDSFC", "mwiqkb7KwZbJqjR0", "3ifN6qcaYTwVCJ2v"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'gotv6y1igwibBm7e' \
    --namespace $AB_NAMESPACE \
    --userId 'D8SIz5yQanzhGxqE' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'JWOdadhSIDZ71lae' \
    --namespace $AB_NAMESPACE \
    --userId 'SUY6L34Jml7ylwW6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'gzTF1iu0paLa1vdf' \
    --namespace $AB_NAMESPACE \
    --userId '5w2Db9zW0viABBO1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'K3yDKrIZmAnolzO7' \
    --namespace $AB_NAMESPACE \
    --userId 'CZDQLKqy8n07alR0' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'mUdzRUN5swfcODzU' \
    --limit '55' \
    --offset '78' \
    --query '9PnO0wys12PkwlAZ' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '07ElZor1nOxvpUQQ' \
    --body '{"file_type": "ZBrPVKk8VEbYojlg", "is_public": true, "key": "5Dc4jaCfNbQofaPt", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'ucqPTx3DBp5kZsAR' \
    --namespace $AB_NAMESPACE \
    --userId 'wuLcYBvxqupOgUjh' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'O0U1s5fvfJOMOzWr' \
    --namespace $AB_NAMESPACE \
    --userId 'EFqC2dR8NOs1Y8vB' \
    --body '{"content_type": "10khGlzdJ5dBOxXX", "file_location": "jsEqm9CD1WVRWbyX"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'rgAUV1Swq8guJ6Tc' \
    --namespace $AB_NAMESPACE \
    --userId 'e8gaPxDtbCUSoWsG' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'jb0PjA5CS1lsTm3g' \
    --namespace $AB_NAMESPACE \
    --userId 'gONtp1knkEBD1gIR' \
    --body '{"is_public": false, "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'QrNGpYeI9gqkCsfx' \
    --namespace $AB_NAMESPACE \
    --userId 'K94zctLBGKxTMc2D' \
    --body '{"file_type": "fy6QLd66EdPGc2QH"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '8kMCln1tVh1WL5wG' \
    --namespace $AB_NAMESPACE \
    --userId 'fzwRo3Hs9m7mo5Ia' \
    --responseBody 'false' \
    --body '{"updatedAt": "xaY5mKs9LDDaOC4W", "value": {"zg01zibcGWQGjNLL": {}, "cASAfdKGPi3BAUT4": {}, "gXWwRUyN0XN2fBCz": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'kuqgboqZ3ReqJ1eP' \
    --namespace $AB_NAMESPACE \
    --userId 'HoJEPYklvR1HLaB3' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "updatedAt": "Dvhy4jbPgvTVpoAY", "value": {"fDmGRccFZ4pm2Bqh": {}, "VmyKkm5sL4K2Qlja": {}, "JnKNVIivr9til5e2": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'o0SR1haWYOQBoQDT' \
    --namespace $AB_NAMESPACE \
    --userId 'Bmsm36Zp7VvtB6pH' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "updatedAt": "Ve1WPgaiMmoIbm0N", "value": {"dyAExUGVQmvC8IW5": {}, "wVUWm2DXGtBfTrTT": {}, "FpJOB8UB1EGfqoUS": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'ZWEDtQJhaZnnc9Cw' \
    --limit '68' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r00W0cTVZKhhjIR3' \
    --body '{"data": [{"key": "1dR2Zv4xcoDHZwqw", "value": {"YNVyyKzOKCvnBFHg": {}, "8NHbQ6dPiyPuac0P": {}, "xM0oce9GAmX6qKyf": {}}}, {"key": "NCPTGeSZd6HPeYol", "value": {"gQVr1riSG2sIOw3E": {}, "I2T9lsDVjEqYqgxE": {}, "nZeJWdy9xFLazZQN": {}}}, {"key": "idCLjTtWyWGv6dKi", "value": {"bXcODW7j49jiYJDN": {}, "9nsNXMZorx07B6TB": {}, "IhUbpYKrOftDCOQC": {}}}]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tZloQNf84mxv6O5t' \
    --body '{"keys": ["x9XsOS5RCXw48QgX", "34DGlu9puvaT9r4i", "HPZUTnrB0AOM80Jc"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '9zSwTUIdfDjXed7g' \
    --namespace $AB_NAMESPACE \
    --userId '9ej4hgvquCEDf8L1' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'z9OMiT2FTcynX9io' \
    --namespace $AB_NAMESPACE \
    --userId 'IUmu3FW5VqlKkubj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '3Ml3W0M0sUVAo1xY' \
    --namespace $AB_NAMESPACE \
    --userId 'RnIEWEaWgnnylpy4' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'MjDnMLwDf0ZEvlz1' \
    --namespace $AB_NAMESPACE \
    --userId 'gXiG4vKBZ7ORz5iF' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'xR5VAxO87XQVAE10' \
    --namespace $AB_NAMESPACE \
    --userId 'SbpVw1Urh5SqnK9s' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'VN9KgZFZmKRrtiiR' \
    --namespace $AB_NAMESPACE \
    --userId 'MxloPw9BJjb8j8rE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'ecXLMaC42Tkga7nH' \
    --namespace $AB_NAMESPACE \
    --userId 'C6dwbgfxAHj6oEH3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'La33Gq3bFwpucFOy' \
    --namespace $AB_NAMESPACE \
    --userId 'qzejJ6iJgsCTud5v' \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'Y4Glx6Fy3TISjG8I' \
    --namespace $AB_NAMESPACE \
    --userId 'hmWNbvBHS9b7gGoO' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 57 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '87' \
    --query 'W5HKLTr9oCfh7zs7' \
    > test.out 2>&1
eval_tap $? 57 'ListGameBinaryRecordsV1' test.out

#- 58 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "FGlnvEQgXXjVKkSR", "key": "LahnbhzyXDLjsOUx"}' \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["NvP5AYQMIhqr3gvf", "g06ZCZhtjGl5mJWr", "7gyRwWw0R89fzKQj"]}' \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key '1PyXblPrIZN0boHS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '5FMkr3oFOUT6rM1G' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Nyodw4xppsnjKCEJ", "file_location": "pq4s1X0xFDuAlGRw"}' \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'bh48eQVFIim7oe6d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'w05bZHjBeYOv2vTM' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "acRX3adpknar4APD"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '967utKLfgNZjgRNS' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "pSxiDAHWv6si0CGX", "value": {"hAyMYCJ970YlrdIN": {}, "PzOa5eiUDhMq6sYL": {}, "zSeQ0Gw2kTrvoXEg": {}}}' \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["k8qE3fB1fNzvlDhu", "Ru4Oj6W4crvlPOEs", "4azBZ7KYm8wmZBPV"]}' \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 't6a1YhTbTanRNKEt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'rn6Nqu1hLzTFEnVv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '4oJVjW1GXrIwjYQd' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'vRSlHTv2kycFiPtF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'YVaM8baSBBJzHHOH' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["FrQpOu6YJb5D22HW", "Deu3VVXc4lbyGdMX", "V1m4WuhRtvYvGBk7"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'IZycYLZFCq931N6e' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Csx6QxxGjJKEmekT", "M6MgwdEChCDQKQep", "woOKz4a2GBysMkIj"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 72 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '57' \
    --query '604UStWPx9NXD2FC' \
    > test.out 2>&1
eval_tap $? 72 'ListMyBinaryRecordsV1' test.out

#- 73 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["40wv3IQL44NqEwoM", "f8PvvKC5QKm3IvSP", "3WS0EgUGDjeJxZj5"]}' \
    > test.out 2>&1
eval_tap $? 73 'BulkGetMyBinaryRecordV1' test.out

#- 74 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 74 'RetrievePlayerRecords' test.out

#- 75 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["RhkeCHwo6ezQAWgp", "eME2yYY3RMVIjFz8", "WHhgHlTfxLmnZL3B"]}' \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '6jB6F9NNGXQINzwN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '01K8iVnOri5uIEoa' \
    --body '{"file_type": "LkgJj2Uikgs6A2eD", "is_public": false, "key": "1V5LbhiHn492SjAT"}' \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OFLFuNfCqIizJxWR' \
    --limit '86' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'vmnn0kUSkJRZM1kP' \
    --body '{"keys": ["byRjumxEwdAbuBpX", "7d3bt0zVwMms2NZa", "htLf7YmynxEKRQaY"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'GcYzcquF7kMApvWX' \
    --namespace $AB_NAMESPACE \
    --userId 'kDWV2QNa1Vc1nvCw' \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'XceBcD4DSd9R7DOE' \
    --namespace $AB_NAMESPACE \
    --userId '5GTrDTMzRivxS0DK' \
    --body '{"content_type": "9py6xT4gAw9HoIh8", "file_location": "5NRxtVcxGB2WJA3S"}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '8fSEWZv6kiWXJwU3' \
    --namespace $AB_NAMESPACE \
    --userId 'OFmhOZ0u21XH8al5' \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'VTJqj4ctZ3iFiafw' \
    --namespace $AB_NAMESPACE \
    --userId 'awiWqHuCXgN6MfmC' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'Vnnq8ICuCJ6vTc2R' \
    --namespace $AB_NAMESPACE \
    --userId 'ZH50y224GMUZk6Qs' \
    --body '{"file_type": "9zR1QJqz2BEcCRoB"}' \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'aS5j2WEHnGUH3842' \
    --namespace $AB_NAMESPACE \
    --userId 'DqSrlg0WCYBkGGK3' \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '7eH5lVtLeqYNMzhJ' \
    --namespace $AB_NAMESPACE \
    --userId 'EkLHGsAxOJC176Wy' \
    --responseBody 'true' \
    --body '{"updatedAt": "kYdhHJFIFiZUoNLg", "value": {"LR5p6xIMFlZCyZux": {}, "qyGeLsHdmUzG3IVD": {}, "fOVFPa06NfcJ8NxG": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'wQkcxx2jE16pWWYT' \
    --namespace $AB_NAMESPACE \
    --userId 'lJWacoGSvRq2FntA' \
    --responseBody 'true' \
    --body '{"updatedAt": "JgFblDXyMIvGK5cu", "value": {"I46ZdhtsfKbNAwjd": {}, "PuuW8sD04SVnbcK2": {}, "zkFkCKtVBH4Y8ufx": {}}}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LwAlOiDXvpXlRYQe' \
    --limit '64' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zZ2HT9RkWciBPcvv' \
    --body '{"keys": ["YZcn03NH1qd8rI3P", "7tOVE18PbGhPGRfd", "PYarUAKltVB2CO2U"]}' \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '0IPlLmrrYOTiQDfX' \
    --namespace $AB_NAMESPACE \
    --userId 'e5QW8xKOVoKLO5p1' \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '5w2U7OZSJhOqSDfE' \
    --namespace $AB_NAMESPACE \
    --userId 'DoIasn2A8FBNYJo8' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key '1Fm3WrM5FkV6gLfi' \
    --namespace $AB_NAMESPACE \
    --userId 'yFwSo3VtVMmAOv3D' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'pAsvzCv1hzvjbdtX' \
    --namespace $AB_NAMESPACE \
    --userId 'hej3Zx9ZLeD2LX8t' \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'AxCIzUAO9wnkSFhq' \
    --namespace $AB_NAMESPACE \
    --userId 'fT9LUff1hcvJEENX' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'dW5IbSPMr6R2inMT' \
    --namespace $AB_NAMESPACE \
    --userId 'u7Q1AZB97J5st6oN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '8Bs6AsRiafeb1J22' \
    --namespace $AB_NAMESPACE \
    --userId '54DrcCcdAhLDoGss' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE