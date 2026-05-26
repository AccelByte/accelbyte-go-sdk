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
    --limit '83' \
    --offset '62' \
    --query '3ZFwwoPuuJgAwiqd' \
    --tags '["27PZ9fi9yccbaupm", "dX1rbVI1v9wDTTxv", "NYSqnxDRzFkQgjdh"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["OkH5hM7dasq9ygwU", "hzrrfMKuEgfKllGR", "6UpXVXSognLL3hiZ"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'AQpt6rOpIMJO3y4C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'dpCcyRV1gXxj2Jkq' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'rbWxOzxL5prJvLvy' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'QMeLorW7W5zBCP1l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'D0knxStZvB9dXa70' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '28' \
    --offset '33' \
    --query 'KuWcGaarfNrLiDwO' \
    --tags '["AI7N5SAaf7gxEt5h", "sJhW9pWLR2jxRCqM", "oDMKW1rWMydrvXpU"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "OG7ORE4620CpIhoo", "key": "4uWhF7nHVBH42u7P", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1980-12-12T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'i4vZdyDri1p2CeyI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'NkXJ6gFDC8VxIVaa' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "8xesScZa8H5O780R", "file_location": "0VEsyjV5PJIWTdjG"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'lZZE1uSTGmDx8PVR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'i54bJMaC9NrFfSwC' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["vajgE5xuvwtQgM5F", "1t8Zx1ES7TskJCRd", "9ymsj98LNN60bK8B"], "ttl_config": {"action": "DELETE", "expires_at": "1976-09-15T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'sPP5Qc6CQidgFBHn' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "swmIbTwI89eYDTq7"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'KiNsLHiKHmUHOCEF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'dgHTehclaDMHQT0L' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["qomhMgDW7VnD2Vki", "h6ZIx9MgE6uu9ntM", "ctjs29Mfn3tLVCYp"], "ttl_config": {"action": "DELETE", "expires_at": "1991-10-07T00:00:00Z"}, "updatedAt": "1981-04-06T00:00:00Z", "value": {"mm6Bcw0sUAOq2GBj": {}, "kNp0JJBH77w71ApC": {}, "pewkVu9I3LVpnuOs": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'SseU9VoI5UUHhATf' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["FxVVvp5xyj9ISLXl", "osH2WzuK4QCrkHtg", "4GwrDS9weoGdSQxb"], "ttl_config": {"action": "DELETE", "expires_at": "1980-01-27T00:00:00Z"}, "updatedAt": "1988-11-24T00:00:00Z", "value": {"vUMk6eMPcd3cK8PI": {}, "KlrslYGD3mldmo3p": {}, "RQOj5HJPygnaol7Y": {}}}' \
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
    --body '{"appConfig": {"appName": "jwqxMHfawI0iCKnW"}, "customConfig": {"GRPCAddress": "zee3dCGQbEdmSqzs"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "wc9nzykLWsntnEp9"}, "customConfig": {"GRPCAddress": "szbw7ZeiI2nkdxuX"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'EXaSosr3h4LTwLud' \
    --tags '["tXl1m5w6DXr2m8hM", "GyDM5rkCgPaB5Cwx", "sxYjDVj057QvduPU"]' \
    --limit '31' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'KaUiWnICuSfwpY1t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'OkkkCj6q0p2O5rbp' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'ABJqoO8WbpsO0srf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'piFcTVfRxqIOVcNv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'N84pQxnKBbABL4TL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '69' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "FPHHnUI1mLqQRjox"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'pFKwpXzYX92L6fXz' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'gErECB7PsJ7bOsQo' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Wm4y21VjcJX5NCq2", "Q8bEAqi164s6m3PK", "WF6bZvssye7I41DV"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["ZKBm7TpBFW1bPiGC", "v1DSf5sd4yM6Uax7", "r4wjRm6goTkh3tVa"], "user_id": "UVtbY9p6dedNOdtX"}, {"keys": ["xku0UHAeLbs35FQg", "APge5oopHbmdNh05", "CCpmkjrawor1K1LP"], "user_id": "MvGYyLmQutmzvkS7"}, {"keys": ["4ziR9zD4TxceHdbk", "ETBAPIQWH0gvp7kE", "yuTgxwtgDFE4yB54"], "user_id": "vD8LxjIQUf8HE5Ai"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'KV0SkcxEka4VEFqh' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "fg2Ah40c10lVPGGO", "value": {"H8tUreUkWLbYRNRq": {}, "dQPyezD5t5FtA3vv": {}, "Q0fqVSI8tQcf4CMr": {}}}, {"user_id": "WoTFjhSNAqxzPf2I", "value": {"5pHlhCQawkH5daVC": {}, "pHIXj7uQzKoS6640": {}, "JjmANvazzXIDvASp": {}}}, {"user_id": "Mbkvzu0HeFAMsNn9", "value": {"A8hJNmkGWNiokiqw": {}, "6PyRKnuJzXadktXH": {}, "ZtdnM15UxDunVNrW": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'vIqEzCxYVapllHay' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KR5U15GHthIweBh4", "SYQgEAfbMw98GHrv", "NohBtGWlueFnQZEh"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eVrTkN7J5ujYLzpk' \
    --limit '39' \
    --offset '2' \
    --query '3tRVaFPiuHCxiVel' \
    --tags '["PveeRV3igwDXAjiA", "7hsJwt7R5OQLSArb", "pNrXQyml2G2MB6SO"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QBp44FeMriuQcEpX' \
    --body '{"keys": ["cMD6bmIB6HUTBsMi", "rwZeBBcgH4LTdcTA", "dihDcdD0bfkzrBRl"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'D2Uvo7CJorzwA2KR' \
    --namespace $AB_NAMESPACE \
    --userId 'lHgFmHvHRTPodwOK' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'spJbH1NZFfUygm0o' \
    --namespace $AB_NAMESPACE \
    --userId 'vCSzZm4jknCknaqR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'MXma3xmg5kfcFqyO' \
    --namespace $AB_NAMESPACE \
    --userId 'WFOar9VRmrvUffqX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'jxHGlyZLi7ZtoVSL' \
    --namespace $AB_NAMESPACE \
    --userId '7AtwzvBCawFTs9eP' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r0uzbAVASkTOPQWv' \
    --limit '69' \
    --offset '99' \
    --query 'LsT37HGe5VG7wxVK' \
    --tags '["5z2BeeAJ3B7h0RBr", "Y5lz22P4YrJS4Jcn", "WoT6RFo9UVbXtMjn"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'csxls2XMBHi8kPuX' \
    --body '{"file_type": "7ftSgkf8mPIUzAAZ", "is_public": true, "key": "viFP9zuMOM5Xtpz5", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'TcueB3Z0VI8NKwum' \
    --namespace $AB_NAMESPACE \
    --userId 'TviEkchPLwz9n3ri' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'gCliaRBNIi1ADBwl' \
    --namespace $AB_NAMESPACE \
    --userId '7siWDOCESlzuzC18' \
    --body '{"content_type": "OYDOWTLlVlB8xpuc", "file_location": "a9XewzneWlbGTd6M"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'XBZQtvDB5LgqngEv' \
    --namespace $AB_NAMESPACE \
    --userId '5jgnreOyxofvzwMp' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '5dmwosVR5pKOn5wD' \
    --namespace $AB_NAMESPACE \
    --userId 'v4HXI4rNNiRNKk2B' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["SVp48jySTP4b5smo", "IXfvJfQtsPHAOD96", "WrwRL8HppEfMeBpM"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'RcLdzHC3sCC5VlLx' \
    --namespace $AB_NAMESPACE \
    --userId '9q6SxWkWHRCVThCM' \
    --body '{"file_type": "XqbhQXNj6oPskh95"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'zt0m1uG24atrugGc' \
    --namespace $AB_NAMESPACE \
    --userId 'adpQ94WSBuePWvC1' \
    --responseBody 'false' \
    --body '{"tags": ["hvQSIYEFV0DQaXEV", "PAkRsB4cihuN5J7D", "foILO3vHcvfAPaD2"], "updatedAt": "1985-06-25T00:00:00Z", "value": {"hDfvY7g24Qog9Uq6": {}, "SAkUcchu6nT7yZu5": {}, "6fnAX8fgUuhJqJH3": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'gn930qDiV4XgxC0U' \
    --namespace $AB_NAMESPACE \
    --userId 'nVH0GaYno1QHlNfW' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["5pzOJyELjHHkELfb", "jvqvBXWL5flRA64e", "RsGAvzEUgfMWJSnG"], "ttl_config": {"action": "DELETE", "expires_at": "1993-03-22T00:00:00Z"}, "updatedAt": "1984-12-05T00:00:00Z", "value": {"CImbJRxHMMN2dZoA": {}, "37nMbC9x05vDUicY": {}, "GRZItoCYj3Hyc0uk": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'fkJaww6Vw7kL7ORw' \
    --namespace $AB_NAMESPACE \
    --userId 'yPEqTXLXo9UUc4aE' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["ozENI0edgS8vJXUX", "oVGEq1TU1JKVezZZ", "kmOhkcYZavL0PPcn"], "ttl_config": {"action": "DELETE", "expires_at": "1980-05-02T00:00:00Z"}, "updatedAt": "1996-06-17T00:00:00Z", "value": {"KtsNpfC4UXXkxOTt": {}, "c7BT5i23bJkbV4ox": {}, "JWCxLEk4Ds4f2cco": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'dT34uiiLXLTRJhCG' \
    --limit '76' \
    --offset '82' \
    --query 'w3VaHT58WTl1C5Qi' \
    --tags '["AlcALYCgGp2OGMPD", "qODfwk38DNd2EN08", "d78P7yOVIq1TkuY4"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MXvoRok7IK8tc4Wh' \
    --body '{"data": [{"key": "sS8t11J3MNvuaNLj", "value": {"CUgTrzUAO7vSGCrc": {}, "pd26mwhnF5Ci3xet": {}, "YGZ23TFoXsOmgQk8": {}}}, {"key": "K7cDkI7Em9mZXJTg", "value": {"QEV3OZfGGlU8vqx1": {}, "nAVvEbbbRaSy9Jx8": {}, "dsNRyp0b8zEd5B6N": {}}}, {"key": "WrqAsg0NyNqFqxos", "value": {"Vbojg8db4jfgTJLh": {}, "tiFxPobLrNLZSOb6": {}, "oFDsEmF9CHurTYD5": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '06Je8xet8ezNLxOB' \
    --body '{"keys": ["DypjWTLpQ0ii16v3", "kNvRiDj75YO4UcEN", "og29EYCG6KFSwOs7"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'rXlNl81MINywgeBt' \
    --namespace $AB_NAMESPACE \
    --userId 'fMvL3Dsch42weWQw' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'OcjJYzb1Ip8nYJCG' \
    --namespace $AB_NAMESPACE \
    --userId 'm1Teakz2TqJrXEDu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'qC2It5BK2fyktNEl' \
    --namespace $AB_NAMESPACE \
    --userId 'ywwIwmI3eHKNwaum' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'uzOx1atmXX3LQJHC' \
    --namespace $AB_NAMESPACE \
    --userId 'ujEr38vOOEOy55DG' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'BprGaEnamwCaEJD7' \
    --namespace $AB_NAMESPACE \
    --userId 'FkY8aEYbYpYkxigL' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '0yxlZKohI4dmL5fy' \
    --namespace $AB_NAMESPACE \
    --userId 'JSRDLKZVUN1G5azQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'RZZubcjN5BiCz3sk' \
    --namespace $AB_NAMESPACE \
    --userId 'SOeupAl9NQ1rtTqp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'DWH5oIbTeQoP9TZ1' \
    --namespace $AB_NAMESPACE \
    --userId 'JroYvJcBFuLHl4AP' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'IypcHrU6birpvol7' \
    --namespace $AB_NAMESPACE \
    --userId 'ACmuDX2j7if8Te6s' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '82' \
    --query 'uxfW1Eg8AfGC862p' \
    --tags '["tFPYBnIalIytWTbd", "4KtVab7TFJRm2Ntp", "a3qT1YuYsQKUGsNy"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "7cNPQZX8voknqB1L", "key": "iUNTx0QCScUhuIlT"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["38U6qWUxn61hWVkY", "aFK5Jle4oPOCUWLs", "igW7J3uFGBDuyqQ4"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'Isqrdswv3OSpa6lJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '8O43u9hsKvXeZDuK' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "OyjUw0qVxKMo4478", "file_location": "ce4jqEp91talI3aw"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'i1av3C0vjrngCaWa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key '2VolIKMIKiT0oNaH' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "5FBYyDJWJgDqKv7t"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'AVOBGMnHJzlTRqf4' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1985-07-09T00:00:00Z", "value": {"CST4GqjPexjJGhr0": {}, "2Njt4jXcZ6rY33Xm": {}, "WDJIOVwieTsQz7vs": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["QprK8eZNcv4j4aJq", "1skEr1GTwTZYN97J", "vckKJfF6r1SY0fW0"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'YpIMEMY8XzbytzEW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'JMCTvU0IPNgoMGW9' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'K4qgM2zpszcmJcPu' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'iONf5Z2EW5AkaP5V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'AIkSzAEUxI7BYzZw' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["abV3GMxloVZ0CUT3", "Sm73jKBJzuJQuZ4z", "F18hRUOITHtYja73"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'CN6kojg6j0yN7Ctt' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["rUCTTU6r49uDQCbN", "kpFTiR2Hl8ytB0EC", "QU4vD6wxKveoVNWN"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '91' \
    --offset '55' \
    --query 'AgebrsBQivf9brcQ' \
    --tags '["RT6fGYOOlVi560sY", "IFsYGHqibyZlA1Bs", "lYQKb7yWea4Bllpq"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["eoffJ1v3OPwStSLd", "Jg5WDTSuia9CWdsC", "ieXkCqAOYWKnwcaI"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '42' \
    --tags '["ChoiIExU8F32C4Ds", "J8PskFBNcY9sccxH", "6AzkDYXd2P6iZZJ4"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["0cAjxB4vwuLHpiEj", "ODuxhraNlJXo9SsB", "KZ3c1eG4rQDu2HvV"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '6KSuvAcb3CFbMRnZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fhJ9HBqnchRxG2jE' \
    --body '{"file_type": "FaIWmfuRSyrpfIvA", "is_public": false, "key": "Icemg8GVx7kohCYH"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eflr8nPdad7ejdpm' \
    --limit '18' \
    --offset '76' \
    --tags '["QCbtqLmY38bpZCWK", "tEwoTN8lG98QE5PN", "VpFMmj7FlIHgy5eI"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'G5NrZkYRr0C3JrTP' \
    --body '{"keys": ["QIj5ITmkQ8N0PVBg", "R1hqBUdRvfraIddN", "M8X8U0pplJyZipQd"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'xJk9E2Q5rVXwdi98' \
    --namespace $AB_NAMESPACE \
    --userId 'nQwMKeyPYKnRpUTU' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'jXVyaFEshhLuDrBe' \
    --namespace $AB_NAMESPACE \
    --userId 'cC4D2gLAhiTvcBnf' \
    --body '{"content_type": "4Ow74vPUbNd740tN", "file_location": "eC5bT9ZPtKnmDt7F"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'jA93HmDtDsERh4TE' \
    --namespace $AB_NAMESPACE \
    --userId 'gi2DRbBPN7UEWAdq' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'xAor1ztEt8qRhy9f' \
    --namespace $AB_NAMESPACE \
    --userId 'LgMSNEzAWNoVT2hY' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'rzRrjdyZEiqZqLX7' \
    --namespace $AB_NAMESPACE \
    --userId 'rPxdkyccJPbsuJpy' \
    --body '{"file_type": "hCI9yq8NYw2OCdFi"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'Ndl7E5rvgRwZGjsT' \
    --namespace $AB_NAMESPACE \
    --userId 'wPRFLOlr8bdmYYU2' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'GBI5oSfGuww970wT' \
    --namespace $AB_NAMESPACE \
    --userId 'Qh7cS9PA1sIJwsIM' \
    --responseBody 'true' \
    --body '{"updatedAt": "1988-07-05T00:00:00Z", "value": {"E3p2oMW2J79X7RCL": {}, "76IVSVpKvR6bXmmo": {}, "mx2NQUnkansB6BIw": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'scssHd1Hrv7phM4G' \
    --namespace $AB_NAMESPACE \
    --userId 'z1AoRdhWUijZw7YB' \
    --responseBody 'true' \
    --body '{"updatedAt": "1991-09-28T00:00:00Z", "value": {"AsGR1891b9LeCjaJ": {}, "hoWTgRrAAfwdXxVo": {}, "T1xvIgcVsYa50CNt": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'P4oYeHHTD5l4lPBo' \
    --limit '76' \
    --offset '54' \
    --tags '["qU3Aix0gSwZO6Sjr", "V58VCbA9TXpnPm2t", "ai4VX1UUjbdCtEMP"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hnZ7sJ2loMw3d8MY' \
    --body '{"keys": ["128h2r7fk3uiMsGg", "IrxXAFL0ztgECDDI", "UxWk6GEMZqCHbhS0"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '34MKDnquYe6faddY' \
    --namespace $AB_NAMESPACE \
    --userId 'Bh3k2u8x5WDn2dIW' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'FzFIz9OMek1g7CzV' \
    --namespace $AB_NAMESPACE \
    --userId 'eGfAfnrBmZCqi0Rz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'hKrkZMuBRz8T4YYA' \
    --namespace $AB_NAMESPACE \
    --userId '6yyWlYBBrHsFOoZd' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Fstq5FG1mMLdNwE4' \
    --namespace $AB_NAMESPACE \
    --userId 'cDxST6lbrhBBSi3f' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'wTgoCMqfcMYJDolv' \
    --namespace $AB_NAMESPACE \
    --userId 'h3fv7e1QiKJeb7Zr' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'NFiOb50MRWAcAyic' \
    --namespace $AB_NAMESPACE \
    --userId 'UOrt5R4tWlBEmntu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'aWg4RPd4IteVTAlO' \
    --namespace $AB_NAMESPACE \
    --userId 'uiJuOTQXAdrOwHLI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE