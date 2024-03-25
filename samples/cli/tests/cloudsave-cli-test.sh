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
    --limit '16' \
    --offset '51' \
    --query '64PBWPLqKZDoFbgE' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["jobYE9489AyZPoXH", "WZuMKy58BNRrbQFE", "tBeZhLT5snenQx0Y"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'mlgHzMalGAsl9Ixl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'PUNn2F1sTsW4xct2' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'JNtNpwmz2Qw8snXY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'zcTOWNODcEG2cDZS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '60' \
    --query '4Q2PZe0PJg0F3aBa' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "0sbsXWF3msRrWCnd", "key": "0muAiMlXvqfLgczF", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1988-04-01T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '95OhTQkh5DbDO1ir' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'O9EYHUv48iJ0rYT3' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Wvs8kViq69Hua9pp", "file_location": "zAMaD7W2BhIQyqji"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'rsVo1oqTnaQNnVdz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'MGq64d1oXwejjyY1' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["Sm2i40q5yYCyJ5PM", "LqqfFB7L1mLb4WU5", "3sbFzpJT82n37cB5"], "ttl_config": {"action": "DELETE", "expires_at": "1985-12-18T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'o2MyNwlCBHiE17Gx' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "a1AHFAvhKlgBF3LT"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'deoAVqTeNsKEGyeC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'uBPhHEqIOp9E7ke6' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["UGQg6867a7MxgIkm", "0C8bJEjhxyAsvEa5", "M0jFDSyAvAszhDHH"], "updatedAt": "u2T65rNdKw9uCCv7", "value": {"0GrfwNqf78KiFxQ2": {}, "fUZwBpyEPMK4HhI8": {}, "tFggOwa4mD4HzzkD": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'Fd9ycX6XuGvAZq02' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["qosSVxCMfyhycMEa", "GkolRBazO0pQU0XE", "MeSXFa1h39yOtLYN"], "ttl_config": {"action": "DELETE", "expires_at": "1973-10-21T00:00:00Z"}, "updatedAt": "BFdg7Xxt0VklqT7U", "value": {"xgvsQpjtcRKwcRsR": {}, "hOKz1TQLnqhGwohx": {}, "i56CPz0rn4oL30wV": {}}}' \
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
    --body '{"appConfig": {"appName": "EOCT1mllqhD2uByY"}, "customConfig": {"GRPCAddress": "MSWUzGLjp4KRWnUE"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "MziyZi1xLrflyQy8"}, "customConfig": {"GRPCAddress": "fTpbDl96lyTDwxoc"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'PUERXmlTl6qHkBXd' \
    --limit '81' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'c3mALLCiEbTQUyod' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'QaMlB7GLzrVdYCf2' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'jGfgfzYyY2i2jpcm' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'YP6HihVWcJyCRsu5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'BCgoSdugxbv6oPii' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '83' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "69EQ6bRhcP61WBeK"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'UKfTUMiDvhaJcD9T' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'LHh1Kz3UBmf8YvzT' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["J1NV3yWDsELuSFzO", "p3XyLTa8RvgQEGH7", "nebRPIac9MaijiS5"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["6neDXQjRqQABmdKL", "UhnYuwZ89TmTtj4C", "6bdb5o5XMiOHGVfq"], "user_id": "ETFrIJyXJEgROJ5B"}, {"keys": ["SpChokQsSF8yF3mw", "8iJL2odzOMrPLTvv", "JqawGo4HIzpfGNae"], "user_id": "96iHpoQvSsGa4via"}, {"keys": ["1WqGN1fDKMO68ggH", "LlsmxXk6z8oz2YNc", "dnwRw0viEbAZX8qC"], "user_id": "YCVawH7aFUCT1KMb"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'g9ttRrNYmiNT4igu' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "JBEce765wuokhz3Y", "value": {"T5sUxkUwyolj2ryi": {}, "MAXRjJqH7NgSfdZw": {}, "mDnXtSdWsfn5D2Xu": {}}}, {"user_id": "nOk5EioBiy30Aoi5", "value": {"SPV6SmUReJ3beKG1": {}, "b4Qae0x6h9gQk5id": {}, "DpFQi5Fcx5fE4SGt": {}}}, {"user_id": "nk55slcOijlpN4bb", "value": {"KLrqkGmTNk18Auvn": {}, "gTCzicCpn68sHIXW": {}, "qRNndVtzh0gMznI8": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'AzosHCYfuRhQ9P4l' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GOe2xN5CIUBwFbGi", "G0TT2lvFXkXSFUSL", "7VW7ZtGDn0IufU7H"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TjCmaZyGM4y7g4nZ' \
    --limit '59' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'R5iRqxEGz0rL4GQS' \
    --body '{"keys": ["CGxnxd6Nv2bDlcQx", "NLzTXc9Xu24pYTce", "mfNYD86KPkbulBEB"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'UangTflIRSRjoOg2' \
    --namespace $AB_NAMESPACE \
    --userId 'kxcJzNgqUpzANBMW' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'glSUh63evFN5ropE' \
    --namespace $AB_NAMESPACE \
    --userId 'wagacCpHsusXyTiB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'Ep9se6HIflZOGgeb' \
    --namespace $AB_NAMESPACE \
    --userId '5DR3qb5Cb4sRZhXB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'AxC5hlQZsL88BMeL' \
    --namespace $AB_NAMESPACE \
    --userId 'Rx2qZ9OaLXaOK1Li' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ctn5vVxwwBxkcnZ0' \
    --limit '79' \
    --offset '48' \
    --query 'JVxXTMrq3rru0FxO' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TxDpMtTAeZ4nt33I' \
    --body '{"file_type": "OAbweXaJcp3G6L2T", "is_public": false, "key": "RF0LhjdKxYohhtNC", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key '9FVCtkgolD5RPu4s' \
    --namespace $AB_NAMESPACE \
    --userId 'eNdeLjvCtqsEwRxG' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '7cD4uw8RD6wxFUKK' \
    --namespace $AB_NAMESPACE \
    --userId 'Er5InH6TZlRabwDj' \
    --body '{"content_type": "VsT5LfKcawlbvMrw", "file_location": "JFhKy4j4h8FAgzII"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '4hXHGU1uJfD81pm2' \
    --namespace $AB_NAMESPACE \
    --userId 'o1JNEd9WnWnbFSgd' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '7xW04GodLh2pEe0D' \
    --namespace $AB_NAMESPACE \
    --userId 'bawcJnggjjkfSUfX' \
    --body '{"is_public": true, "set_by": "CLIENT", "tags": ["c210fwEXebWNKdLw", "6ttLco2UovIr65VT", "29kGvZLvfNua7HJM"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'plQBIpQM4IDzNTWx' \
    --namespace $AB_NAMESPACE \
    --userId 'to3a7glKmUg7rXAe' \
    --body '{"file_type": "3dR6RXmTgICBcZxw"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'p2wO0IQSZevDBCNt' \
    --namespace $AB_NAMESPACE \
    --userId 'uqOUYLdCdblaQisD' \
    --responseBody 'true' \
    --body '{"tags": ["aMnh4mWAQAwuqNff", "mbfjpXXlUbFNQsD9", "1aoq4ea1G3qQRvDE"], "updatedAt": "iUFEADcmeVTtR1j3", "value": {"mm5UKCDzWwv5xqOD": {}, "h77Gw1OOabYBt4YW": {}, "JkPS8FsRXCGM2Yaq": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'nXqgoJuYqVHFAIGe' \
    --namespace $AB_NAMESPACE \
    --userId 'eZFoCQRhWbDdLU4L' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["QZNobKKpu46HMTSp", "rvxu448T58m135NJ", "plg8VnY8jwwp9qQb"], "ttl_config": {"action": "DELETE", "expires_at": "1995-08-20T00:00:00Z"}, "updatedAt": "qH5J2V7Pcd4fKEvV", "value": {"Cc2Phm5Qy2cZ55H7": {}, "FOEdwLwPNKohOc5r": {}, "dfTN7NbYXv1yPxrn": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'pIJt1TGpFkOyM7MT' \
    --namespace $AB_NAMESPACE \
    --userId 'kYVR7ClIiJ6Ls8ul' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["QhG1SHlw5zd2HdcH", "SWTjllt4MqAjydOk", "2pXdcLiLbjkL5015"], "ttl_config": {"action": "DELETE", "expires_at": "1979-01-09T00:00:00Z"}, "updatedAt": "6riRSPJGdZ8TMG9F", "value": {"pRmgBuUWFy9R9naV": {}, "owlGDlKSu2RUQGVJ": {}, "ynXRgfHzrFL6lukw": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'jIFOgqkTtub6GmcI' \
    --limit '0' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'E8kpm6Vz2WWDcQGl' \
    --body '{"data": [{"key": "myJ5nWdrQyX9z4Za", "value": {"rGWVli0b8KMpfgk6": {}, "jyPKKzkCeglJHZ0H": {}, "Um7vU6S8luGaH6oZ": {}}}, {"key": "bscmbvyQoyiEryFC", "value": {"pUEhr0PJHUTQMbaD": {}, "cEr9IAE2Zu15DaRh": {}, "ntZZjTLUH3RyTiwh": {}}}, {"key": "T4Olp9FDOJ3011TK", "value": {"EtaTEDsBuj6TIIYZ": {}, "uTVSydJTe8dJLTSA": {}, "nO4MTjYRb3eipxxO": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '61UbuhlhdvrPOgsf' \
    --body '{"keys": ["dSsQ1y2IClpOxh4z", "pa0RRcHtMNvFW9u0", "ojBab2eA9d5PGaqj"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'OUyTAzuS11Hxwg5M' \
    --namespace $AB_NAMESPACE \
    --userId 'PvjlOd1kEMZg4e3C' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'nfA6lOwkSv0xGelb' \
    --namespace $AB_NAMESPACE \
    --userId 'tKh836aqkzLHq2MV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '7j0hEn0AnScQmWsm' \
    --namespace $AB_NAMESPACE \
    --userId 'cipPoIc06v1aK65W' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '1jWW6h9iKsaM3B17' \
    --namespace $AB_NAMESPACE \
    --userId '7YANKFMC42qJujQe' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'c0vRTZY2rMaIUrQB' \
    --namespace $AB_NAMESPACE \
    --userId 'gGntJXi4oCwLwBfy' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'Fy4DWVNhrNYPUO2P' \
    --namespace $AB_NAMESPACE \
    --userId 'iUDQ7mSTkSTob4iq' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'HOFMBuyS7WlQDpf7' \
    --namespace $AB_NAMESPACE \
    --userId 'Aw2hJ3tbq72LeLzu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'DVLnG3nthsqpZaHD' \
    --namespace $AB_NAMESPACE \
    --userId 'LIaeJkWftyLV4RLm' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '25DC2HibDtFvqR8Z' \
    --namespace $AB_NAMESPACE \
    --userId 'AeJV2J4oQzvbGW5e' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '8' \
    --offset '37' \
    --query 'Xakiy73SSdwpooPa' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "1U7N0wNwDwQrFWVv", "key": "iE1aNP9Mq45dNpjl"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["BPJN5Xw2ISLiwAbt", "ChwmiITGuDXhFPui", "Z4VLGgBdTG1yf4Ce"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'qaM3rcH2N81PMQK4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'HEZaJmKH0KqVaRNT' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "EQlZc2aO1zFidEKV", "file_location": "s7SYD19P6nd4qxKt"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'bbL9QdLo2PvDTs0H' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'CBrgjBdcj6kySgiF' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "wO81UYlnVKAMwdun"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'ZHu5UdjsjznJZ3Xd' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "TZghgP1rgrkg7Znu", "value": {"cnIIclrROI2N9iF4": {}, "ZN9HRjlsgEjuTm51": {}, "0D8R61RrWXw4WWjb": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["d1b8fTmgN9NMwTY7", "rMDFAOoet2hqRJT1", "wJUg5350Q51ih4sa"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'FebEWoiFSyR2tUlm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'QGhxULFXcBu5NOU8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'eUcHQqXxxygzW4XY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'fLSPOO7haUzgVnR1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'CWTwaNlG4iQ1xAT5' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["oZgp7LNjWrJDcjZh", "mrOh6OFROO5uEIXD", "ckjSBeQKmcsre7yL"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'uBKKDqfR9brys8B8' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["nIqjEfQf9BdhxJ0R", "vFOZ8xdjnX5T2eVS", "klUyqlHX8RnJDbc3"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '59' \
    --query 'Z0VqboFyQRcV0hkD' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["LXyjNOATwXutRt9E", "QivKm2sJA0QdxaTa", "l4yxJ4hsVSeffqI6"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["MHxXsb7TVp7KvcTY", "GXb8H3OUKWpATbO5", "aLt4PFIDbSuhhI55"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'I2UsUqk7bV98FeKn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wCodv4siEDgYVnUR' \
    --body '{"file_type": "xJ0zlhx56BfSaIyy", "is_public": true, "key": "DEeWYwWca3l9tuh4"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ovpT7SXjmN2SDFmc' \
    --limit '59' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Pl1I11U4A0z5r7Nd' \
    --body '{"keys": ["FMJsJLU36OwFsGSk", "Fxlh6wN7RytaVVWP", "dIMjMeRJi2phIKf1"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'ZSr9AmdalIfAKzFT' \
    --namespace $AB_NAMESPACE \
    --userId 'qcvPcZRt0kub6BVM' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'VO89n5v9mdvpbTYO' \
    --namespace $AB_NAMESPACE \
    --userId 'x9F7cHQRWah4WItZ' \
    --body '{"content_type": "K07rbtvgYvKWiHwY", "file_location": "pWkasfS0EZ0ZLCMD"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'DOyNXJodmzFMmizT' \
    --namespace $AB_NAMESPACE \
    --userId '6alq94pKm0PGPDtL' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'xE4H2D6UqBa1WQOl' \
    --namespace $AB_NAMESPACE \
    --userId 'nYiK9zC3D0lgpoRb' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'DFXauIGgL10ZFicr' \
    --namespace $AB_NAMESPACE \
    --userId 'cHYaLV0vmgb3cqcS' \
    --body '{"file_type": "svcPyelyskSWgAtA"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'wNndeJDN0rkqm3hD' \
    --namespace $AB_NAMESPACE \
    --userId 'hSW69sndEoQNhSXK' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '45pbMO8OV2RiINRm' \
    --namespace $AB_NAMESPACE \
    --userId 'sSDEQ11668FBeIbI' \
    --responseBody 'true' \
    --body '{"updatedAt": "fFyU17LXqwAzafSu", "value": {"Mq1OOI4HrxwVCSdR": {}, "yfRPifmQcpBQXQvg": {}, "qbx39GvG9YnmqySf": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'FvlabY9YgStjCehH' \
    --namespace $AB_NAMESPACE \
    --userId 'SsSSdzKxa9cwlD5b' \
    --responseBody 'false' \
    --body '{"updatedAt": "Jbgw4XPUcU7o7ysW", "value": {"l7d281CmSLu6OR1w": {}, "lNGl4Ad7WLmcZTUZ": {}, "uvYB3ZNRMZXZYkiB": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HTl2uoQKb3i68FQ4' \
    --limit '40' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '1hQJphj1dfe19ETb' \
    --body '{"keys": ["nMWo77KwBy43RSaM", "zxEPGBMzystj6yyP", "yBQbL0W9lS4J32lL"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'aJoZmKVtYwJ2lWHe' \
    --namespace $AB_NAMESPACE \
    --userId 'yKY3uKshH4aOOy1n' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'xiCFeqyeHdoOjUrn' \
    --namespace $AB_NAMESPACE \
    --userId 'xZ0VxFTRmELg2hT6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key '6wAgAwmc1IIZJdq7' \
    --namespace $AB_NAMESPACE \
    --userId 'EaLA9Q5Tmuz0lj6c' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'fZxroZl63AKyrGWK' \
    --namespace $AB_NAMESPACE \
    --userId 'fpHuLS5U1v7ZeHZR' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'BrQWLtQ0BMQY8M8O' \
    --namespace $AB_NAMESPACE \
    --userId '34YgfNwjQCH1L9EO' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'ri3GNLdRysKu9eoA' \
    --namespace $AB_NAMESPACE \
    --userId '4oiAB29gzrnkAwx0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '3wMacV2AzLGApz6j' \
    --namespace $AB_NAMESPACE \
    --userId '5WJSaDiheaIJn9jq' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE