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
    --limit '94' \
    --offset '56' \
    --query 'ntcA9FQ9FfLH5ieq' \
    --tags '["1U9N5F5lAOFNCoCY", "RHPFrMZuAKpy3MmA", "s2i8xMMN7fZRAztZ"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8HJZC2SCjCQF9LRw", "6uR2Wmx37JKpJhPS", "hRokQDaFAP63XXvH"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'xpFxJP6rRNyQpuze' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'aWXHfXhPOTV4l7lL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'W4AP8gkRjsfI7img' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'uNtlakfMUg92I0RB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '70' \
    --query 'UqMXtnWt4CU6AUPM' \
    --tags '["N2l1fNXE8dpmvupS", "ZF7xE8gJgs9KG0Us", "MXtRxUzk3x1S6h6R"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "tVyyvElSlAetlr8F", "key": "vNuzpDJc30GyrI1b", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1971-11-26T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'vomDekHzM46jnPpg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'iKDEsMIXkDG5QaLT' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "045NS5fKVuZr0dy4", "file_location": "o87sOsuIy4GYjBRn"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'dWS3kQIMZl9y7fHg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'Spflw4n7DcV1VYcY' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["MyUYzl8e0FbXDgUR", "5aZiMpj5SzRFideI", "P7Mk7b9aRk0JhPsY"], "ttl_config": {"action": "DELETE", "expires_at": "1983-10-17T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'HNzr2qEaZQ2frGpe' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "A5QKWJbkK2w5SY9U"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'hDmO9XKgl039vBuo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key '4QoCdq6r9OQDIj9I' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["ZVJOVFKsi3viuCaN", "8uDQuObQSKwADzMJ", "X4OAdqytmfUQcgpl"], "updatedAt": "2Pbc9ISEl5ESgnjd", "value": {"5LuPtfEC4jncNl8B": {}, "DaISW3LelhoNsiQB": {}, "p3OMaXkjTEtfIqPh": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'US3uaBq48ipNP6ST' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["Xx53e6ADmYw5kgR4", "qAadsQA6zi2JQRV6", "dpPQ15BmnxbtRHpR"], "ttl_config": {"action": "DELETE", "expires_at": "1975-03-08T00:00:00Z"}, "updatedAt": "Dol8cwxuMX2k9Mk9", "value": {"LLcrjyyD0GZUvhja": {}, "z9h5ykgRRGyYcqdl": {}, "acOBUxAMDAWHmIIX": {}}}' \
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
    --body '{"appConfig": {"appName": "7RmDFy54EHsga0r9"}, "customConfig": {"GRPCAddress": "NBdkQ0rbcaMu4UGV"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "vtW88tq8Ri4jFkXS"}, "customConfig": {"GRPCAddress": "Tiny3dqjPdEttbyV"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '6jiDDmHdImyB5c5Q' \
    --tags '["9fsukh4S5ShAHCi2", "yqpThza9TAVQGuRd", "fq8xhrsRQe1ZqDnG"]' \
    --limit '5' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '40yclfg5bKzdyv4d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'O8lHiyCb6CKv0upG' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'XieTnb9iT2DZqeCf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'ggIye1qzCgdaeC8f' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'sNivNIWyVkzJCMOD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "sb2kb73dhn26dqBx"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag '8qsQY4GI14mNWstO' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'pOYR2g5QvXIVX5YS' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["e0eKAE7LAERAENTt", "prrIzzpCKHKbWn9y", "cZE7qNHfOoi84hOm"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["Gq4RUCB1l5VMetHk", "iZ158vRhVCJhtNZZ", "myNJTwaP7cMVMA7X"], "user_id": "y2X1nnsWy2HcXRSJ"}, {"keys": ["mbmG2ch6Yr5EgzgV", "Q5D1UHZ1lDxD29u1", "ud2bJ9pbvUPeJIbQ"], "user_id": "OgN6Ex68eh9ZQO4J"}, {"keys": ["rtOHWob64o3e306u", "otWu6g9SHCDjsPzm", "Cbr03GsuqDO9vFYH"], "user_id": "e02OHuGU1Pf84rW4"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'nULhxdctqB8hqhvy' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "e5uaAZ4MAG1IVYst", "value": {"WkFEZJpwXD1xdDT0": {}, "wDzYkLfCF5y51uz2": {}, "cp8HaX0SdTFXxoS8": {}}}, {"user_id": "puSlriWnRfL6Y6gj", "value": {"uKQheAosqEQGd5ae": {}, "3FjL9Kct8jdHT6Cu": {}, "bhNok7CRD5KRQdmQ": {}}}, {"user_id": "oN2S21UEFj7AyIX7", "value": {"B1ADc0keSVRGbBUE": {}, "gbGh3IlYwU9uBu6T": {}, "KSwbkIYVhS9ehR82": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key '3GIYJRhW752cAVaA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["dFWAnwLxCNnUjIdv", "31omVif09eV5GhAq", "uO9tnojxa2D56gU1"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ail8mENa0mYxoKHa' \
    --limit '1' \
    --offset '23' \
    --query 'pGK6tM8JdQcD52Em' \
    --tags '["wWXDwdux3pKi5kG6", "ARqZnM9LpMSS0PsD", "jb8GF3Q3FoFZjadU"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '4kZtSwinxhcr3k2j' \
    --body '{"keys": ["lkqIpQbyOcsRGpHv", "5uIMvc7uQBHWTcSG", "i9qLYi2xxU7DhuFp"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'WcFYIVyXUNAUkuGA' \
    --namespace $AB_NAMESPACE \
    --userId 'yMVdh4hxTlBAFoR0' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'PwM2EeSyvh3luFRI' \
    --namespace $AB_NAMESPACE \
    --userId 'S0yRS2SrZ6Rv5A5W' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key '6QwECprPppcu34Eq' \
    --namespace $AB_NAMESPACE \
    --userId 'IDE9yJU7oOAi9aEQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'Eq6GRCtDZwJD58Ze' \
    --namespace $AB_NAMESPACE \
    --userId '72oFfUFt6zb8sKmR' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QjrEJj0vriXtxFNV' \
    --limit '56' \
    --offset '83' \
    --query 'HK3oPsatEX0EUGbM' \
    --tags '["ve9U0QlzBtTVBdP0", "ppzsYUMehAeaSsLZ", "LvEEWLCShnnGKHt0"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'heQ49ASar1ANV0vE' \
    --body '{"file_type": "6h5LZZFETZdGy3BQ", "is_public": false, "key": "6HKl8bqTN9Q8wFEa", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'R0cnyClJlOjsOT6z' \
    --namespace $AB_NAMESPACE \
    --userId 'E9KLCo7tjyJAEPp1' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'mbSKhDtCARdaHT08' \
    --namespace $AB_NAMESPACE \
    --userId '44IeSk69P2w5EFNg' \
    --body '{"content_type": "8mLyUBMCspjbjldq", "file_location": "bdaqm8f2y9ZHSTw6"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '3hAL0VKnBM5I1dLy' \
    --namespace $AB_NAMESPACE \
    --userId 'WV2E8kmcwnat6lUj' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'n4QXX8aWNC7m4Qy0' \
    --namespace $AB_NAMESPACE \
    --userId 'RAXmze4VJMqI4h9j' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["Pc2esGpvZQZTszGf", "H6TvwFR41w2199VP", "Ycn1c5bGzsQ6rh34"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '5l2rEBVnI6upKtkz' \
    --namespace $AB_NAMESPACE \
    --userId 'kEOK9Ek5J3yPqAZT' \
    --body '{"file_type": "mPbkYWAKh8HQtYMC"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '8DJA3GOSYgvfqRp2' \
    --namespace $AB_NAMESPACE \
    --userId 'yxyHQlwyI5tRlGmO' \
    --responseBody 'true' \
    --body '{"tags": ["wr9jPmrjN6LKKE5A", "EWioybntYq0ozqpN", "aeBXftfqq3MROMea"], "updatedAt": "msBEHHiAcdz1LhCS", "value": {"iHGxNfQ2sz2F9RPj": {}, "ZgqrqDuPCisnpRWC": {}, "b0We52RlEtKWjWxk": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'eJLGTtT5gvSmoZyx' \
    --namespace $AB_NAMESPACE \
    --userId '3Ro3y1QMK17e817f' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["yAbCP9dLXXRXLWKD", "A39qi4hbgzyOMzFY", "Ft4yuIH9xFZ4bkWp"], "ttl_config": {"action": "DELETE", "expires_at": "1977-08-01T00:00:00Z"}, "updatedAt": "b55q9CPbNYmTMROn", "value": {"ANyCQRrFHRO1QO7c": {}, "VMxCq0Nj9iOpQTIp": {}, "omgZ0x1Iu5NVBUKv": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'CdgxNkxj3WEpB9Qg' \
    --namespace $AB_NAMESPACE \
    --userId 'f4JPtxozhQzfhizz' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["K2fQpGJOeJfqtmEJ", "SCVx07Xwklzf1idu", "6UyjEnn1pryqWMLy"], "ttl_config": {"action": "DELETE", "expires_at": "1999-06-10T00:00:00Z"}, "updatedAt": "bEt0SusEqb03TRsw", "value": {"qDjZGU6H2ij628T1": {}, "IDe6Lv1jTD5gBQ6M": {}, "HKkvgTv9VEiji4ur": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'WbGP0drm8hd8CX8z' \
    --limit '85' \
    --offset '9' \
    --query 'UAfJeuMcKHKgn4CA' \
    --tags '["3yHA8mXZwDtwoHOe", "ZyB12oba82rBqpvm", "9UwybixZcxMgVeDl"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '4WucBl784fB2ZZzi' \
    --body '{"data": [{"key": "2ElI8cGeaw4wFMFH", "value": {"DWzlYWNe08vdVCHg": {}, "Z2WSdh7rUsrqJXp1": {}, "bidEsMizyZKYq33u": {}}}, {"key": "3Wb0eF80kFqsEdeu", "value": {"sxjq0gbJQyqTWkCV": {}, "VwnyrLOnUNFmegLH": {}, "CnpVlnZuOKJgmath": {}}}, {"key": "iK0CFltRktAZskKl", "value": {"1rC0NWDmz50fmc8J": {}, "qqUT6R7mV8N0wzn6": {}, "Bv2Elbv7UDmC0gVM": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TJ7BPgkus5k8ki6x' \
    --body '{"keys": ["tVJhj3Bxn8ve2V1S", "Fe6I974JfAkBWy2y", "CdzHAgUIVUYbRb8B"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'aSFpAISueCxX1BO8' \
    --namespace $AB_NAMESPACE \
    --userId 'GXzRiO1LLOyUbV8S' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'PgCa34eGIAIgjwku' \
    --namespace $AB_NAMESPACE \
    --userId 'oSzOnUwlpbpmM8B1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'vJUga3pafF9t67wb' \
    --namespace $AB_NAMESPACE \
    --userId 'KORPo0hHkDBvmYVg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'S4TqnWEGyhvgFcpF' \
    --namespace $AB_NAMESPACE \
    --userId 'Q8h0EJtdgsJlvJHM' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key '52vzHJ2X27Ywz53G' \
    --namespace $AB_NAMESPACE \
    --userId '0tvYj19rWr9LiEnR' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '7WH3I9tWgDmOqI0e' \
    --namespace $AB_NAMESPACE \
    --userId 'opfbyGiX6MgBbjBx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'H8R24tvUUWkbN7oH' \
    --namespace $AB_NAMESPACE \
    --userId 'GvJh5rGuhBuBJ6nD' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'fTo9rN4nyU6l8g78' \
    --namespace $AB_NAMESPACE \
    --userId 'zpcfra405V0Yj7zV' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'IADZM4xxVtawyLt5' \
    --namespace $AB_NAMESPACE \
    --userId '5fgvYFcnMUnL5XlB' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '49' \
    --query 'xvUk43RJAVWJxJC7' \
    --tags '["DqqmfpYuD0l3T5tj", "ZzAZfS0bK4Zr4fEK", "IFxMl89GDxwbZRgO"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "LitUl95APAz5YauW", "key": "PsmVeq7DnahyFIgK"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Rf4A2KgDGuuy0FU2", "JO61erV4swp4Y6b7", "k2dOheECNNHtwfVf"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'eIbugvnyhUVPV85Q' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'WYauHQwoGCbu73JM' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "ZQMes3GOjP8JGTB4", "file_location": "qGbFxzbU3QZ7Z8T4"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'J2doLXiS7Eb9w0Qz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'ZmIW9sr3PIpYK50E' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "6GDl3nqS1dxKZLM5"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'rmFTxRoS0KYx6lNy' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "Q5rmrIorWSRjtTvO", "value": {"bwC8kqROhkVkf1Iy": {}, "i4QtPuMeeTSllCyw": {}, "pULY3QE6zbapMc3U": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ceUmdYBTmOdIPrP0", "4peJd5eouUGKMLuM", "TmZ9wKRTqpOP4yh3"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'jl0qNcPXkddBW8Sf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'l38kGdSTeZk4vvXK' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '8oq7OiZrIPrmz0Ti' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'J028dYyLj9GPlY11' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '7' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'aS14yTKx5qP4iI1G' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["wwmqupGBh2mtVClp", "1DwT5g8tl1iUfOjS", "AHjqvcRodueOrEiO"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'xNimGo1VQwkjTeb1' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zfqTKageOzYldOdg", "6lwQt74FW78Snby2", "GveYIz1YPZ94XTN9"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '55' \
    --query 'cDWAO8PviPeFy3Ph' \
    --tags '["LagHI1xqTqVM9OrD", "EjvGx0irNUKa3tro", "5DXKdAt3vw98QSQc"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["0pwh9fMmiMrsp9jq", "hLX2IPbRErMt1df2", "JyyBjO224abxtE89"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '9' \
    --tags '["pioQWxkbZ0dJhlUS", "jCG5jWEuiUcCXR63", "AiV5Y9QFvYuDJR2V"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["3CkNtsyhQUQwVzGJ", "W4u20GYZLJ3gZIsN", "GR9fGIrI7iF5aNeu"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '86MOi1E2B8XAa4JV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0Qvgq2MeW5RDaAqc' \
    --body '{"file_type": "ZRXfT9sQG0oAVfkB", "is_public": true, "key": "pykLKFEGZJB0GyQR"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VLjJdw5CBNA6kQDX' \
    --limit '4' \
    --offset '54' \
    --tags '["sMLtx9zZtCx2V5Tx", "VL7nqvnFJ2uigVNB", "JpVUb1jqBkd5ZDRO"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'PrcwrIzy3cFhahCr' \
    --body '{"keys": ["MurcXnrX8FuWEx3F", "QPeCoVtK85CeYaPq", "lLtOR2rCRZHD3tPo"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'qqoE7TLBEhw84zdy' \
    --namespace $AB_NAMESPACE \
    --userId 'lHddYFiQojJDQzc7' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'zvYkVGCr2MJ081B8' \
    --namespace $AB_NAMESPACE \
    --userId 'RBVhvjWLiJmT5mbg' \
    --body '{"content_type": "jZoNTiMuJeCS0ndO", "file_location": "V9fddP4rJArP6vub"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'wgFp7buX4LphkG5h' \
    --namespace $AB_NAMESPACE \
    --userId '4CQ4PPQR2kYSEsVT' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'GiRwuqyaCn5WnPg5' \
    --namespace $AB_NAMESPACE \
    --userId '7r8jJ7o2ojA6Vz2e' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'BEcQWEXQqLNXbQ6Y' \
    --namespace $AB_NAMESPACE \
    --userId 'yXLNvMKcM008zQuZ' \
    --body '{"file_type": "WpXb4h1xUM4WSwuL"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'sPqhkhV7gAQQlHfX' \
    --namespace $AB_NAMESPACE \
    --userId '0aGl4AjtHNOABMx5' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'yJzUs08bZgpSzfuv' \
    --namespace $AB_NAMESPACE \
    --userId '1K83F8wosGyNpjZM' \
    --responseBody 'false' \
    --body '{"updatedAt": "xpiEEAnjb6AokUzp", "value": {"IkhLMgwZb0XQIh1s": {}, "mPKwdQGIJ2BDauMd": {}, "pxi7E2zgOFFXCpWC": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '9wrHxTdrkpT9nwtE' \
    --namespace $AB_NAMESPACE \
    --userId '5POjNqedq4TXGcka' \
    --responseBody 'true' \
    --body '{"updatedAt": "YcJlpmRbBwdFVqZI", "value": {"OQkMigTEBotWnWRa": {}, "7M0TtaoO8CIqmqSu": {}, "3WE5NZcqRC0wNOxh": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zutEZhJhLSIp9Adv' \
    --limit '84' \
    --offset '44' \
    --tags '["W0a8xyP6vvXeXKgD", "kctDulK9h4hjCblx", "VrakDbCMdrOSLawM"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '5zt4jQI1vBIqX8Sw' \
    --body '{"keys": ["sZQsUHJfQHWyGszw", "WixX6kK6zq4KvOFc", "CoKllwbJ2eGDT28Q"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'UBNDSH4GgAbZJPCk' \
    --namespace $AB_NAMESPACE \
    --userId 'zRuxwrSuEQS2Sapa' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'CS9humkQE63qGds9' \
    --namespace $AB_NAMESPACE \
    --userId 'XgfQg1hYgAShdLI9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'fJXwEq1yjKr7r98m' \
    --namespace $AB_NAMESPACE \
    --userId 'PyVCR305aG0ohhb5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'PErnknSDq2boKsHh' \
    --namespace $AB_NAMESPACE \
    --userId 's7fvYvHVuEcEd5E3' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'wku2kfub7XghEZak' \
    --namespace $AB_NAMESPACE \
    --userId 'PzW3ieDbYDpYi7zb' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'lrkmfN5wnxSfFaP4' \
    --namespace $AB_NAMESPACE \
    --userId '4GWr3UxUiRQ24ggj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'X3372EEiFJzI98OL' \
    --namespace $AB_NAMESPACE \
    --userId 'dw41OkJXeZ0NXEx4' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE