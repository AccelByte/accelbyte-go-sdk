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
    --limit '11' \
    --offset '66' \
    --query 'buWbaf9EXtEHhF6x' \
    --tags '["pLUdMoTlibCYNd6w", "CkRs0zgbsHlsEFnt", "Sl0FeQqvNEn1swtb"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["G3HVcbflscH57cF2", "11E3mBnedWyL3l6P", "UEZ07TKV1JAlVnoj"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'CppA6PnlK3b5OJTL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'a1qVYBvyGv2952LY' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'v7EQSZdcJAHn60j2' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'fFzEzgCnqFtaSXuk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'a08dLS6SG9RNpjzO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '87' \
    --offset '96' \
    --query '9sVPDSXvqyefZaUR' \
    --tags '["pjFcdyapZCZbiQZ7", "m4bVi6iEGSYYbncu", "QuufsfUWb8ZtlWje"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "RXM3yy1E3dKIlKzl", "key": "uk3fj4lFkiP5nkNW", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1985-07-19T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '769Ey7JudCRTycdb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'NaLEBMJZ67OWPmd7' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "IeM4BKofDsWnQoEA", "file_location": "dYwkO7N4mnQICRtE"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'I9PhODHFMDJ2jHtO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'h0PHoQnWGUaoNrAT' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["axFrMV1EidVxcd4C", "ZR3TRICxEiVJM5Mq", "YtYI875kKJZKJyRu"], "ttl_config": {"action": "DELETE", "expires_at": "1980-02-14T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'm659eidTe15Y0AIw' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "XVzQMHSvHUfKOsxc"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '6FnZxoIinMyAjE2j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'PJKgiMuIgeLH2C9T' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["CwIW8LdSlxf8ruGw", "g2sAv6YzpNiKyKou", "jG0EWQsjD1YuHI5h"], "ttl_config": {"action": "DELETE", "expires_at": "1981-06-20T00:00:00Z"}, "updatedAt": "1974-11-22T00:00:00Z", "value": {"j00PJzUL0OkBvCfq": {}, "50CFxqIi5sGZSg2Z": {}, "7XDCzpIkPE9wWrPm": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key '00Rbg7SduRhzWqfB' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["j6itWNbx3pDo72V2", "fO27ULzw6nUyaXwy", "VBEEjVzvIFLZ7PU5"], "ttl_config": {"action": "DELETE", "expires_at": "1978-08-21T00:00:00Z"}, "updatedAt": "1978-02-02T00:00:00Z", "value": {"oWAvoJCIi2RewscG": {}, "JpeCBDw3XYkMWdf4": {}, "mglRrLg4k0T0ce1Y": {}}}' \
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
    --body '{"appConfig": {"appName": "QrarQFPY4UHvbsxJ"}, "customConfig": {"GRPCAddress": "ttbOKLvA9qPJxeII"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "RC5XYFot9ZI19Ti2"}, "customConfig": {"GRPCAddress": "eI6eaNBWY5gEAjQr"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'RJHClFfhT4Q6lT3f' \
    --tags '["CaiGXwy91JiMWNX5", "lnJIHLPQgCzLxrLH", "xIDn8SMacTPI8kif"]' \
    --limit '68' \
    --offset '86' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'mUrdukgDGn8E1c8l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'f6HMd6ReMNAE2psv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'RHJajtsK3D5bcYeG' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'cJFjfYje16naCGAL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'ZGEUh0c4zZHdd4VT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '98' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "eoscSe2csvxJZLV1"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'ohI23dTpjWKP8TXH' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'rqpnVZ1xCHkgIa7p' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zRPYlCGY9gvkrnuZ", "tX0rd4iH4axARMLE", "ub5u92A4GhNgA4JM"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["P1gaqV7hfxVJwjrO", "iwXJC0HTpebGt5pg", "xfDR8rDFPZK2hAI0"], "user_id": "mmaG9ODtYZBmQpP4"}, {"keys": ["Kb30jlZIqcZygDWX", "cxxOQYs3OxebVJU5", "FIF2fl8HZkoktZDj"], "user_id": "tFtT26jHMMGcNUxk"}, {"keys": ["4rsuF2OpS5PNfyrz", "9vV90ul4iLzfQUyE", "EPfDgEuu059xr8NU"], "user_id": "Rw1baGCPwpAulKOp"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'W1EB3P8cuAp5uX3I' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "46QLI8X7HdKRBmup", "value": {"PEeAtGqo06e3dYCu": {}, "Cx8mTpKRKvNxQFro": {}, "8ji86beUy5UnizOt": {}}}, {"user_id": "dPdi7AQ7pe8i9wyh", "value": {"hZw2jsGYZo1cRLPi": {}, "pUuDNYbaF8sBjqT7": {}, "FRleOLTUGk4VUnhj": {}}}, {"user_id": "XdNd0gneSHWlpmSP", "value": {"STp3p2gIDuL3bslT": {}, "A6xLl01oJu6sQlX4": {}, "bTluLE6QTnjrisB2": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'AEd8wPFTadHXgyhT' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["E6xrPzL21blUCy9F", "juFLykH01mJVAyMh", "L46RVWB4t2Ul5SnQ"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xXVg0qZGAbwRp5jN' \
    --limit '30' \
    --offset '58' \
    --query 'LbnTLVZ4c54qUezp' \
    --tags '["a3cgZkG32d8fepTf", "kxDicKPiK0zXLRnM", "97Kc099rYwyBGjOI"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fiu8RhB3KOtmzRMd' \
    --body '{"keys": ["HfEbD6s7eCFf1lEw", "IE7WqEL2dQBplMX6", "sTgSNCc8Plk7Vk5n"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'OVgMptvF1iu8MuQn' \
    --namespace $AB_NAMESPACE \
    --userId 'tnFBs77NkY7Wxq6L' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'N1hkEmnGYV79ab0E' \
    --namespace $AB_NAMESPACE \
    --userId 'a3qyrhbNeENBji7D' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'psnv2ERmIhw5Psig' \
    --namespace $AB_NAMESPACE \
    --userId 'JvMtYcaxMeCxTS5z' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'KgA2WkknNTyv3mJe' \
    --namespace $AB_NAMESPACE \
    --userId 'PhqRBv18EKvjiWEu' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HKcOLoTPk7BLVlLJ' \
    --limit '55' \
    --offset '98' \
    --query 'C7Q401BhONbczf68' \
    --tags '["P2M3X0cquZCEoOB1", "rF46l7YymUpTIRh6", "LEaJInzalnY36gn2"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '9PNCa6F2EQ4UaiIS' \
    --body '{"file_type": "zR44wkiIWyNlqXGd", "is_public": true, "key": "gDgiG0NEEyYk61FC", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'oiG1PL3391TQbGyK' \
    --namespace $AB_NAMESPACE \
    --userId 'PySqhsHkgaXE1zJx' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'L5v8FM0GUEMfarVM' \
    --namespace $AB_NAMESPACE \
    --userId 'rkGy2S7vIxBddY43' \
    --body '{"content_type": "Lpbvt8sLDPtpAClR", "file_location": "tFyNen15cAZurVa1"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'oCfzoTHWGKTHP3aq' \
    --namespace $AB_NAMESPACE \
    --userId 'uzuNfVQwXTgSyWhf' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'vmYkOmgZi8g8XUwG' \
    --namespace $AB_NAMESPACE \
    --userId 'YkjtOTZM6lRgSJoI' \
    --body '{"is_public": true, "set_by": "CLIENT", "tags": ["BIRTTwSBNLFvtT0o", "Qe0fRWovIghQnHQy", "jBNvulU6N9gc9wMz"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'lS5rDI8VrZmtW96Q' \
    --namespace $AB_NAMESPACE \
    --userId 'ybd3epsORICbPNTQ' \
    --body '{"file_type": "sM7j2yhT19eij2lj"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'kPBNDMMOrYyC6R5b' \
    --namespace $AB_NAMESPACE \
    --userId 'H81rxUPdIUwNHMjc' \
    --responseBody 'false' \
    --body '{"tags": ["VCQVrjaqNl4YVbTK", "bGb6rdsf5spx72Xx", "x3NLPnLwo2sE1i83"], "updatedAt": "1981-11-05T00:00:00Z", "value": {"39IjTLWikJI9JW77": {}, "rxQCMJQDEzQrjD0H": {}, "CgayD8WtY5kC4PrH": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'LBT5pK8iXSgk37EC' \
    --namespace $AB_NAMESPACE \
    --userId 'EmLKx6gZCF6XnWu7' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["viUO5T9y4NqbXTXk", "GlVQtNviP7d74TF6", "wdhk85FAakVRanoY"], "ttl_config": {"action": "DELETE", "expires_at": "1984-04-03T00:00:00Z"}, "updatedAt": "1999-06-20T00:00:00Z", "value": {"dVhpTOBB8Bybl7ar": {}, "LhReejThTFWz7Hzv": {}, "9WWdRiWQdeOuKBnz": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'tiMvgImDFgY13ZFM' \
    --namespace $AB_NAMESPACE \
    --userId '3cwJVZsQ2HG3icqo' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["otFEOVj8xcwLXrc3", "26Zoq4Iqe7JBEBx1", "L4KUUhdYKlBeBhO2"], "ttl_config": {"action": "DELETE", "expires_at": "1984-12-31T00:00:00Z"}, "updatedAt": "1976-09-22T00:00:00Z", "value": {"oHQkuYolpjo1slDl": {}, "ih6LUPIqne33Ckz0": {}, "TLW6bim76DC17f7k": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'nMCBba3U0gxM4pIc' \
    --limit '32' \
    --offset '45' \
    --query 'YxtoIyTZCRocz7hL' \
    --tags '["6I8tQi7jel9GUQ0H", "OsYA02mz260g4zLN", "w3IGEh0MsZ5pIYt3"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '2Y0rn44Jk21X4a26' \
    --body '{"data": [{"key": "fMyiqNQ5X088Cq00", "value": {"tmp5QNfIL7Bl1hGg": {}, "mQqWlYAYds7CkQNS": {}, "nJGPJhwEHebTBKJo": {}}}, {"key": "cp8dGTfqSdfqGveD", "value": {"UXmXaY8uS9FP7X0i": {}, "WoELS6c9ezY97oOS": {}, "it91HVmC7vWSrzLG": {}}}, {"key": "zAbWH2FonNgRx1DM", "value": {"lvdDyRnmIKwRBAzN": {}, "qsm2fYNq2Qzm7mIu": {}, "ltb3fTSnniJU8HZy": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Dxk6gtcbq4yKRlFb' \
    --body '{"keys": ["6tAUnHlMA7OmQ4Jx", "F6arhBwBKfIvXVYd", "MDJzJ3AzG9t1vUoB"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'GxpDcxnao6ovFpPW' \
    --namespace $AB_NAMESPACE \
    --userId 'mXOn6jzOIX6clupu' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'MISpU6QmzxMIjZw0' \
    --namespace $AB_NAMESPACE \
    --userId 'tGKQeNArUlY6LJoq' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'nRXfGVBmTCQjtqxQ' \
    --namespace $AB_NAMESPACE \
    --userId '8qCHpvqLDyULJ5V5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'QpbJyk4OqFRMHH3X' \
    --namespace $AB_NAMESPACE \
    --userId 'NPYV6rbx4MdUQLam' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'oEzadrHrqfxMP0UK' \
    --namespace $AB_NAMESPACE \
    --userId 'UYmRIcJf0lbflBtn' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'SmGcKCg5lbTPqcKD' \
    --namespace $AB_NAMESPACE \
    --userId 'Hp0qXbt5DlhR3WEk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'zK6Y7aRoLCwtf8h3' \
    --namespace $AB_NAMESPACE \
    --userId 'CqCA7WiwlZKVw3eT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key '95Ha16zRubJvpeu0' \
    --namespace $AB_NAMESPACE \
    --userId 'N2Udjq4rR0iCJn0E' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'Z6AJa0NS5Mbr65rF' \
    --namespace $AB_NAMESPACE \
    --userId '3TGi2di40x8yjz4L' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '50' \
    --query 'tAKHAFpUY4YPsqFz' \
    --tags '["1syDo9nxocgIcN8p", "Wiv43jQiQ6FY4snP", "3UyrC3nWB4dqDeNn"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "RTHqhIVYmkFQAnv4", "key": "Je3PvOt4W01VXzY6"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["tIB7VXbLqLoej7VN", "kmq16hsXQc0w8ihq", "kIyjqa9PjqH57tLi"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'BHEAFEoNvTkrvnlL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'ZNQW0PeuQhC8YBdO' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "x2fxvL9AeXtoLGXW", "file_location": "lPy8XH2eSlieddj8"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'dpPXHILEFkQbfcB7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'EzHkvwaWDjQ2i9kJ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "2fnSMuXHSkpug1qS"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'frcpB6oVtR7veguM' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1972-11-13T00:00:00Z", "value": {"BSvSrWnB8dfaX2O7": {}, "ctceIQTJlemSpRbS": {}, "r2jKAHlXvkTybaKe": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["elOJtB3eW47jAj4S", "pJnLNDzrFEJhAySR", "p5OKSYLkMyheH5ts"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '9oPDMVIqaz0WcJIv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'UuQkEtBaFxxSuamq' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'T4r3poOwKpDQmVht' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'dZef9iJxpd3F8cSU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '66' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '5bkiCZNuedrDITLx' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Sb6xKbT4TGP18Bcu", "n9vPnmfKQRQNFejO", "nAtkPEE7kDXnTGzr"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'CYxn1cuUuAMuMqze' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zfuoTBGsPsP4Y2BQ", "p9Y64DnIxH8bQZNB", "0K9D5BLwBKuGr2PS"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '92' \
    --offset '71' \
    --query 'EEHGCOSfNDONYoEd' \
    --tags '["gUBB8XCFPV3I0s7X", "HaqoeUt5qETF44HA", "C30dfg2IVVl0nDpj"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["V0ZI45I5ICxBVlXb", "8jC5wt3sAbMRnQfk", "vrAVGwy3bceMzKjO"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '86' \
    --offset '31' \
    --tags '["6jsgIKgJ0vHUQLF3", "cWL3Ssf9alNgyEP9", "UsGetcGCZ7s4HhNh"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["uPI83s0Jxh54xG58", "gKzwBMIqvsI1lfBT", "BBYQgcMTPBOKjLJm"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'UsW3ecz3xno66Zum' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sEWzEiSWa5rcyZgq' \
    --body '{"file_type": "x6BbiQkcxPdsXV3O", "is_public": false, "key": "mZGlfdCg7aL1tnlX"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '4k1TRr9z4wmeYpiu' \
    --limit '71' \
    --offset '63' \
    --tags '["TMW4XrsjHCOrNA1R", "HTIKqnIudQ9IvXrR", "BAktgqHJhdFM3o2F"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '7g05ieSX7xufmR2E' \
    --body '{"keys": ["HAXVTQD9nUdH3QzL", "mg4JMBePssMu5dID", "Tf9alk40eOZYY2iS"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'lffAoQjdHeLLP0oM' \
    --namespace $AB_NAMESPACE \
    --userId 'KGrjTwDthMjYEVs0' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'dzprQ5FCees4ZyhM' \
    --namespace $AB_NAMESPACE \
    --userId 'qltehfgnJUOv0kIz' \
    --body '{"content_type": "Aknc8XaA6lOrAjZk", "file_location": "1zXkm8D88gHxErZG"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'K0kiAQI5F6PkkbRq' \
    --namespace $AB_NAMESPACE \
    --userId 'YR9JGSmOgZp6rRAi' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'fCgjF6pTUKdc901c' \
    --namespace $AB_NAMESPACE \
    --userId 'h1qeL6pg4I4ErWzm' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'ole2ZmQtUU0Mkiwy' \
    --namespace $AB_NAMESPACE \
    --userId 'UYzcbqOunlqBKfkb' \
    --body '{"file_type": "xW42QefePrdxXerp"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'lmtbyjWBFmyBojcY' \
    --namespace $AB_NAMESPACE \
    --userId 'lGIhRAwrMVRzfu0W' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'CQU8YQw2wGrixZTS' \
    --namespace $AB_NAMESPACE \
    --userId 'aKuMf31COEOiaOvb' \
    --responseBody 'false' \
    --body '{"updatedAt": "1976-01-16T00:00:00Z", "value": {"h0Qi83vyGR5UpWAu": {}, "UQRKZMChJ2Jm1Lct": {}, "07DFC3x2FYaGj23G": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '954LiuS6ni22FVuY' \
    --namespace $AB_NAMESPACE \
    --userId 'TYRcVvzPgkXHiYUJ' \
    --responseBody 'true' \
    --body '{"updatedAt": "1994-06-26T00:00:00Z", "value": {"PObhwJCxlaLLmjEi": {}, "39U7pNvVWo9av467": {}, "PScnkxThPYVCSKFe": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '0PPJUoMEvJDf1heM' \
    --limit '10' \
    --offset '32' \
    --tags '["PiUOktV1J6WrSYJy", "sm4oh6RC4S3Ejprr", "uuOKjJiF9mCmu42h"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'l5CrCkb9MBpr263w' \
    --body '{"keys": ["KqcyqXREfDwVi2kv", "ZldEG3JHxpdSjvem", "nokVqSNkjpWr71GK"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'LwlW1TRoNkjHtCTR' \
    --namespace $AB_NAMESPACE \
    --userId 'zXl20iRrebg1pOJY' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'Z6EE2mInXlmDBUj6' \
    --namespace $AB_NAMESPACE \
    --userId 'CqfNGff7isCVWkW6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'HiI5MQweHgziLR91' \
    --namespace $AB_NAMESPACE \
    --userId 'RjbTE7hMVbQhPju5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'kHXndw6R1y5TcY2v' \
    --namespace $AB_NAMESPACE \
    --userId 'iyoyRLMUQUQJ3qBQ' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'Oxnt4LIqFJwiAE38' \
    --namespace $AB_NAMESPACE \
    --userId 'EMEAmkYdpvWMrfcG' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'ftOWc1f0VeSeCjCs' \
    --namespace $AB_NAMESPACE \
    --userId 'LIRgM1ZLyGddD94E' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'qMB3R7WgMy4MHR9P' \
    --namespace $AB_NAMESPACE \
    --userId 'ITGej9NEoA1YkUvC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE