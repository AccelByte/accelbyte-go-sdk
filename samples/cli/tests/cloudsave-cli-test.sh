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
    --limit '23' \
    --offset '72' \
    --query '8h84N1kKDcWPe8AZ' \
    --tags '["8tzyQUlaxLx5bW1S", "kEo3Os9ZMs2lXdOL", "zOyYhLwy6lnH0AUu"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["GCItcqbF9vXj7m7F", "wFiiqDqmaKzN1fmw", "NohDDf6HbUm0YSGk"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'qGh1AMcQBEFziJfv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'kvLd0HAI2LvSDQ3Z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'Vv88ifau9rOq2I7z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'QkPschcXvF378J6C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key '8fiiNa59LZ5cXlsl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '47' \
    --query 'axv8xfgDuwCcWELC' \
    --tags '["R83HkcxLmFc4RHZU", "uvaBRmaaYFwIzqHl", "qB33FmbpSoxztiXt"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "5I4CiwwznkCCpq8S", "key": "7hIaY62iDgPPODve", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1990-04-21T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'XZUKqXV08K270Col' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'g4hKeCTnSjLNQUr6' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "9SHyF5YpyVOYzXUX", "file_location": "fSiIBrJNKiQb12yR"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'YndsVYOVaQIBo9xL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'ZQVYhf2hPU0R4zNU' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["ZhsY1qvXr8BL3VPD", "jdJiAHMGaSwLp4NI", "NOdy5dzEBvTjt9AC"], "ttl_config": {"action": "DELETE", "expires_at": "1989-09-02T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'C8qrA2Lq6Nhk5uDh' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "CZD3gbfyaGCT6ie8"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'kPUcaAa2vw4cWhnP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'gP7grr4uccysRdGF' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["dto8xeBi8rf7TPuM", "o1YjMPjulu1DM6JZ", "2b9cQaWST7dFacAP"], "ttl_config": {"action": "DELETE", "expires_at": "1992-09-11T00:00:00Z"}, "updatedAt": "1984-05-17T00:00:00Z", "value": {"3tq5nqKM0Dj3fTS0": {}, "1hNDh0g0c6bnvlwf": {}, "iQKiENXjNEZS7vCG": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'csjtY6sM1PP7Pu8R' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["MTcNUamZUFZnvuOH", "b7Z71DGnEDP1rIuv", "LtpcFqoJqcCHaCO7"], "ttl_config": {"action": "DELETE", "expires_at": "1972-02-13T00:00:00Z"}, "updatedAt": "1979-09-26T00:00:00Z", "value": {"whlUKEnN1hHxHNDU": {}, "cDjhP6N1h9QAXMIU": {}, "5hwpkry0hoNCjZoD": {}}}' \
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
    --body '{"appConfig": {"appName": "knz2GkDZxD9vlxXr"}, "customConfig": {"GRPCAddress": "BjS4xGSQXR4VEzBf"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "ICqeoBVF1g2H4Usy"}, "customConfig": {"GRPCAddress": "mUp77s1CsWva3dkf"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'pGbU7F01RCCviSQi' \
    --tags '["K634x9dPb181nJan", "sRVWaETtXpleEPju", "vnrxw8rbjwRmxN4K"]' \
    --limit '98' \
    --offset '82' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'm4aDbnfkAuyAUya0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key '3moqKQZGSqUnQRQC' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'kGT0xlwGPd98hkun' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'uJkBab5tHIsXjOJF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key '2ARkw4uWLgLp6KQO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '27' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "qPaVdXblbOq3HPPA"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'pIwgtXAtI1j9FduM' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'QU6IhfpnwI8kd5zA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["stOeSLJgrv6NcP9Z", "VTAzIsOtpJN15iki", "Mne1EUjt70iH6IIv"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["cJh66LSB2ruWiUNQ", "0JbhOSwAu26Xg09u", "xFhg14Anh3KssyPA"], "user_id": "tSj4sYpppW9UGVrD"}, {"keys": ["TUBoZ4mqWIO0x3J6", "FwTNbFqyZPyww6CZ", "hE66c49CigiDAOVN"], "user_id": "HDF693gTHET0Zdzi"}, {"keys": ["rZIgnr0hHuFpov4r", "VGEFIz509PIH3MV8", "k8Lda5mTBuUUO3OC"], "user_id": "0b10RLCC83mTwddg"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'zeUwrFYtcvJIpRQa' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "gJPNIKGKjS8ZNBAD", "value": {"cCuUbgo72RBi6WlZ": {}, "r2SgzEposupfyzXU": {}, "daBA7teikIibVEbw": {}}}, {"user_id": "sbGcxcMY92igBzXT", "value": {"HYn5k8CeXkNYrf43": {}, "Sy6JuzmKgbh21tnz": {}, "DHDPqJ1601K7w947": {}}}, {"user_id": "p0vEboWEBzcxOiqk", "value": {"ZZYtGwxUTfcLC2Vr": {}, "jWzsZfAPauCM2b1D": {}, "EkNbYf6wX03D1CsX": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'jkC0THK5UGAeW2YL' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["b677AxthNSPbnSlF", "SQc5KoQXDYSZQNMR", "r7G4SGBRpB2HLLIM"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '3seagjOnAI9RY38q' \
    --limit '47' \
    --offset '53' \
    --query 'RL80t5AHkvEwtRAH' \
    --tags '["1r21is0Tsqt8FBtN", "oRqTUIJtlrPVobXs", "glFsJMn6o6q9tEHt"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'nPMHJGa0gL2bmoNo' \
    --body '{"keys": ["8F8trkkHOEXwO60I", "aeaiB90RaoTngrtg", "uWy103JC7LnToumh"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'EEiybTHtAIzTPHRq' \
    --namespace $AB_NAMESPACE \
    --userId 'CWcAJ7MksfORq3vj' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'fC43lBhPAG7zkswm' \
    --namespace $AB_NAMESPACE \
    --userId 'HD4vCbDIexsgjf4F' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'FGqB0JKer5MucQJX' \
    --namespace $AB_NAMESPACE \
    --userId '5KrNppku3g2mhC4G' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'AIfn4N933fkeEBnG' \
    --namespace $AB_NAMESPACE \
    --userId 'tQITFhzIPIgHZBVj' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '3l6D11D9Nb37GXAM' \
    --limit '93' \
    --offset '98' \
    --query 'U681ekltRHSkvZug' \
    --tags '["7mew68Tfys3IDl6M", "biJ5DgLkhlVIPqah", "jr9QSE53FVHthVYt"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wHKNAr14gmDHEJ2R' \
    --body '{"file_type": "LbrezH8mR2GHWikp", "is_public": false, "key": "hkx5u9svlIEcgmen", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'wB09A6A72WhhY3qh' \
    --namespace $AB_NAMESPACE \
    --userId '4fsMf9RPRkgkgKVJ' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'R3zuLpBvNC37brH5' \
    --namespace $AB_NAMESPACE \
    --userId 'ZvFN2WWwOoRrR9ed' \
    --body '{"content_type": "4SiScwZfvrddfTi0", "file_location": "J8y49hmwDsRKO1MJ"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'saTNhw4gow2F4jO8' \
    --namespace $AB_NAMESPACE \
    --userId 'pRxtfR5tMgAKZwdQ' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'XF9KjWAaJ2eBQzOd' \
    --namespace $AB_NAMESPACE \
    --userId 'TfiXw2KsAHxEL9JM' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["XjzdaaUfjy3MHdIx", "GnkTf7ZlTaPHH2yG", "H4XXjPfdCxryvjzi"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'JoG9dBaDFs7RWz3Y' \
    --namespace $AB_NAMESPACE \
    --userId 'GgDp3HUuHeK2LhU6' \
    --body '{"file_type": "611SxD9fhFYKwwLW"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'WcpWdnY55F2yvT9J' \
    --namespace $AB_NAMESPACE \
    --userId 'xjLMab0JUfdyKRt0' \
    --responseBody 'false' \
    --body '{"tags": ["ahIU4cxma6RgNuzh", "obfU8hjlVWBmpSMj", "DnScy8S2Y4ppVVYM"], "updatedAt": "1971-09-23T00:00:00Z", "value": {"EGUit775cMaWzWCs": {}, "IFMTv8SOImFglRna": {}, "d8EIEreo0kptWyHR": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'DRZDEuP9DOxBj5D8' \
    --namespace $AB_NAMESPACE \
    --userId 'NmpY0fi83VqurV3M' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["dFBt9izDLGhv7eRB", "xfFHJwfSVCUGWXJB", "SySi4ovwJ4lBzfeZ"], "ttl_config": {"action": "DELETE", "expires_at": "1986-01-15T00:00:00Z"}, "updatedAt": "1997-12-18T00:00:00Z", "value": {"B1WfsebLcr5dot1X": {}, "tiqhU0VPnb5qdoew": {}, "WnY50xk0SjgPT45L": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'fwEBObjg5vr6TC42' \
    --namespace $AB_NAMESPACE \
    --userId 'ZeptN99aFuI4OvI0' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["HdGv8ZvttlQZXnZQ", "fxKaGa3eZ4rGSPrk", "2unGX9VTKbwsZoVU"], "ttl_config": {"action": "DELETE", "expires_at": "1996-03-30T00:00:00Z"}, "updatedAt": "1983-07-03T00:00:00Z", "value": {"A8ktNOkWuf0xgZvN": {}, "AD6wgqGKczaYHQ5q": {}, "zMQJAbCy4PEDuDYb": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'fduhhf5HoLbpLPaf' \
    --limit '91' \
    --offset '41' \
    --query 'EueeQCYcwoEwg9SY' \
    --tags '["eCBbYO6bOGVjmOht", "8F1cnIVHDsqqgp22", "DjxRIixF9ePAYy0n"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'grxyXsONLaW6n0Nh' \
    --body '{"data": [{"key": "Yl5XLQmaymSGvYRM", "value": {"lTT7MGSxGLRz7KGs": {}, "CfYK7NCwp7H7ZJ6o": {}, "NGr3KwtsNourNV19": {}}}, {"key": "lEg2wdMj2YhnIy6k", "value": {"OaOVQLPaezfwxtQU": {}, "fK382d897ZcQv2KS": {}, "bTdyvE5nx7sqrNeQ": {}}}, {"key": "2iVFJXbcsJvgyVGK", "value": {"JKJWcxDKh2reeabJ": {}, "0sgJU9EzhuF03Rj6": {}, "j1bzAnaqI0sSNahW": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gmN7Im6hWfKEZ9z2' \
    --body '{"keys": ["LGLew4IN2d9Vem1t", "yyM97ABTuscgsUoB", "Qu8580CahW26c6H6"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'pcMkpyPXyMZc9gRn' \
    --namespace $AB_NAMESPACE \
    --userId 'HLZTapfEBSNpnCnf' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'dg6erLADLDRzekJk' \
    --namespace $AB_NAMESPACE \
    --userId 'KqfJdb8zIxb4snxr' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '5OTY46x4XqHFLxgl' \
    --namespace $AB_NAMESPACE \
    --userId 'Lf8jDw3jEMJS85ih' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'i7FytltG1hyboZ16' \
    --namespace $AB_NAMESPACE \
    --userId 'oGoncFhiLRzKLh1m' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'G8GQTZoajEVY5E1y' \
    --namespace $AB_NAMESPACE \
    --userId 'ihGqkq4vodB2sd6m' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '4d4kdKxyyqUy0knO' \
    --namespace $AB_NAMESPACE \
    --userId '7iuZWTRmVkYjapGB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'Z1fgiB0TsTMAho9T' \
    --namespace $AB_NAMESPACE \
    --userId '7rainu4YdmIqZFtc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'u5AIAjWbwaWU3Lnf' \
    --namespace $AB_NAMESPACE \
    --userId '19DldeV3fIIaCmsA' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'LS04zahRKXADvo8W' \
    --namespace $AB_NAMESPACE \
    --userId 'MG8HhUCef4zSFzia' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '7' \
    --query 'V1ZP3XDBgSO1DaLf' \
    --tags '["FE1Hn1kjbIi715G4", "kE5HapRatuIoIqEC", "HAyN6GGVBjn8CnMT"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ffvM3AdLtve6ssBL", "key": "CL24XYw6eIXPhx7l"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["OcZ6XrRQM8HnBfeE", "squfIOfWJYVFCtFD", "GT4Yu5JhbsWyHuYS"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'Nph4vx40lHLEHEEG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'NQTSopS0l1whNnFO' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "9rs27KQPaPAcWIxr", "file_location": "xkZU9pdYrXOZOw81"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'KV35x348OHsUxhD3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'dskcacWRBcua17d5' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "eWbe4ZXHrqh4E3yx"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'wBjukZhxCYUKXh6N' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1997-10-26T00:00:00Z", "value": {"R1AHtuYUuUen0lz6": {}, "q6TD0SX9X5deXt7n": {}, "e7iC5Pgq1bCTIXoX": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["8zkUST854mfSSurV", "q8sogXWlr0c5sfYM", "ZUQOaVvLPCzb2X9b"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'weIoVd7KegEYr8Lb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'nrkTZXndzwMuCh3W' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'uaOiHZxTKhZq5FTH' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'J2CDcnnUiR2f8885' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'GFtwhX4RVayTL340' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ZBHzQ0IxmeCQLNFX", "vKKNL7K0y6IUmG9u", "kxISNCahge4w7fGC"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'Ondm3r5keaDtEtve' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Fprg5Rflq880S4DH", "Xy9ZtJfwx7dGLw7Y", "wR5CkNw2AO0hLyvo"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '43' \
    --query 'q1QmTHZLQHCDa27v' \
    --tags '["NavwbsA2Jfhw8Ffl", "MvSMKH3hQGbNRKnG", "D4oia5L4jq6vatRt"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["zRj2gW5Y2n5Uyp8G", "rPjASylmdzLMZPR8", "2LTA8iIvthKnxGi4"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '65' \
    --offset '25' \
    --tags '["1Yp6ubnefW2f08pm", "QqhmJ7qMRV1jxqSO", "INuaTkgqwKgMpU2Y"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["bnaDoR4SsZBXuvAN", "xB3UGd2YAiChHTfD", "RdbSci02OTiqdoGu"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'AA5LrZG12sdXVQi4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'LtI40Yg1g36rN184' \
    --body '{"file_type": "SLWpVty5CWQhaooL", "is_public": true, "key": "hw3MqT6tBOIR9AlB"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '6Q32uXb6Tvd1OWFE' \
    --limit '60' \
    --offset '5' \
    --tags '["dpJFQQlnXAKsYcAr", "6RHTcGj0lQtZeuzR", "f42r793seWC4u58I"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'y1NxvTgYY5JcRLex' \
    --body '{"keys": ["80V126kLsI6CZTr6", "M3ItBCa40BHQTZF5", "x9nnU9e4grXiuzEk"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'xKfZ6zSUBsmKoKHS' \
    --namespace $AB_NAMESPACE \
    --userId 'e2URIGpaA35b8XFV' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key '69fYVXjsTHA7ZpaH' \
    --namespace $AB_NAMESPACE \
    --userId 'qfWTpJZq0REKtPFd' \
    --body '{"content_type": "2kz6opSOa8eEaCzY", "file_location": "shW6Zsxv4UHIKa83"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'gcfZiGFwXaS5Ly0m' \
    --namespace $AB_NAMESPACE \
    --userId 'QNFwhVWaL8KL3ABa' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Cl2F7QIhL61IyF8P' \
    --namespace $AB_NAMESPACE \
    --userId 'gJHbYBSP1h6WbzLA' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'zpsajU00sO8BNNeX' \
    --namespace $AB_NAMESPACE \
    --userId 'uBe9RTxYebuV7gYC' \
    --body '{"file_type": "Q2c3crCw00LxrTx0"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'KK39aP6bdJiAhWaN' \
    --namespace $AB_NAMESPACE \
    --userId 'pr92KZYDi2HghWGZ' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'lWSR78kSg2gc757Y' \
    --namespace $AB_NAMESPACE \
    --userId '1jIxKLfEfvYOwguX' \
    --responseBody 'true' \
    --body '{"updatedAt": "1974-11-30T00:00:00Z", "value": {"onmk5zYq6x3TuFg8": {}, "hQx6TWp1p95TCtLS": {}, "J6tD6fWsCWFl8Gnf": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'E6IiY8xWRKxIoHnw' \
    --namespace $AB_NAMESPACE \
    --userId 'V6W5oprUtPanVRIH' \
    --responseBody 'false' \
    --body '{"updatedAt": "1986-08-25T00:00:00Z", "value": {"qTL4bCKnBq5bHfPM": {}, "UfrhEaZ7V1L3Kk2B": {}, "77Tk3FaSXWRLkSGm": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '8mEqrVkMo8zQWTyR' \
    --limit '57' \
    --offset '28' \
    --tags '["zNsphlYqfu4ex3tk", "5pzapsdS5T0zixLE", "nJBlU8jZa0keOnza"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wfUmQfmYtx22GOBP' \
    --body '{"keys": ["vO0pE8AJUA3wt5OO", "T6EHCjcjjjbv8APR", "F8htU7aF6GTLWaT4"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '3PvIZ2fc31AUMyM5' \
    --namespace $AB_NAMESPACE \
    --userId 'KBzXizTg18ZN0wae' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'w5eSiXQIeoTiSj9d' \
    --namespace $AB_NAMESPACE \
    --userId 'gkMGAlr6EQlJORCT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'DQJb5euWQysPGzLV' \
    --namespace $AB_NAMESPACE \
    --userId 'GdGxOGHusXjnNeu7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'faUP3Gkeb0bg1ncT' \
    --namespace $AB_NAMESPACE \
    --userId 'LKrBrey0jCpdlkWo' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'NLphJ3AeASVV9XZq' \
    --namespace $AB_NAMESPACE \
    --userId '2ulway9VnkSYx74D' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'pSbdtTbdUvkoL6ao' \
    --namespace $AB_NAMESPACE \
    --userId 'wf38879X6p26nS0w' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'G1YHthAbKeJQhPkZ' \
    --namespace $AB_NAMESPACE \
    --userId 'oVuqSmAGx4TNP7TZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE