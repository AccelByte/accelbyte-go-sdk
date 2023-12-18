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
    --limit '26' \
    --offset '9' \
    --query '3yWDFdxH3mlL7l5D' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["d66PuburdKzx9jM2", "BrX6J57QzAMKCi4w", "ngvwQPQMsFAxdymM"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'CWBFWbKZjAaQIZYF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'sYoFwrRRmp3IN7gj' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'RRcXDctgQWvrt3vG' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'ZDIpwqvVV6ZNkZAK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '99' \
    --query 'NlbO4S9cfdj9aWwl' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "8f2OAivv7UlXN8CS", "key": "ZQe9SyGIl0SzjNdj", "set_by": "KU76f3zlha2skeTp"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'Re6rXpcTm7b4P6oG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'A110g2cvbJ9dwkKc' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "fbKFHe2YlZ0VY0QN", "file_location": "NqoYi35N5FYZUw1C"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'c3gtbIHr6BxHNmhW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '5Z69dDaGXUkeNCWZ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "pFTDuG5MnT2EgKdR"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'hdnSXFvtEWCHCzdJ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "kHtThBt9UqAuVHzs"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'WAz1nkFZWvdNCL06' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "qHKwxnAdUz7y37R6", "value": {"seapcyzLFtKkQay5": {}, "rSZJ3kGqMbKEGSfZ": {}, "HKTcWWDSVrMdEEkC": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'ZtNuAU9DNsZSXDgZ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "1g6SBxvQb7uzamMo", "updatedAt": "85Aa9HiviP5hpR5Q", "value": {"fESIzTAlEwArljqa": {}, "BgLfRVO0lD5E5wrw": {}, "V5sF0hAhH18geCss": {}}}' \
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
    --body '{"appConfig": {"appName": "DfFQrLx0ZLfPVQ68"}, "customConfig": {"GRPCAddress": "4kh3HFdIrWqQC9Zj"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "LvYXV29hiDPLh3MF"}, "customConfig": {"GRPCAddress": "lmUYJyk0idENu8Ms"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '3ELV9L9L5eiDVOhz' \
    --limit '37' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key '37oripqQqCYeQAI7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'PXSGFZKf9F6y4xun' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'oYkTclZc7NgPNwxw' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '2pDRP6HyYJW7JHlL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'PoUnjCx5sRnzj84t' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Yic6lIIX8EvOboJZ", "nZgASRjF92vwLoYw", "blJsBf7Xrwi62KgG"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["3z8eDEqGYS6czNnb", "QsOnsrNd0fg5bhpe", "0TIBsWFjoiscbjm3"], "user_id": "g89hm4dgmTED31b7"}, {"keys": ["n6VjaqWlDx4dkUVf", "zOqr2rEmzKZXdmsM", "oKtDH0Banxg97bm8"], "user_id": "WbYTBMCfiU3E2hMk"}, {"keys": ["F8bjGv1cZAMzu55f", "JIAFSiTKGszJUxMr", "FeSOJpRD6EdifHqt"], "user_id": "8sNkhPBrcA1ldhqB"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eSUMA7lHZEruL3io' \
    --limit '91' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '5iSfLsXFwzxL1J2M' \
    --body '{"keys": ["6mdANUU7btJ03tjh", "JH2KunZSFwbswwle", "wMQgZfbTdNr63lHH"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'v5YQsxahsFIXyaSs' \
    --namespace $AB_NAMESPACE \
    --userId 'xLYbw55DuinHpfNL' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key '9xinRXb96dVJhc74' \
    --namespace $AB_NAMESPACE \
    --userId 'd5jiimBVc9P5Ajc5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'XzKU9MoHvl2kBWJF' \
    --namespace $AB_NAMESPACE \
    --userId 'KSXntHjjlslpxo5o' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'wlazr3DhCFHC0STr' \
    --namespace $AB_NAMESPACE \
    --userId 'FQv3DNHIQpvsbAFd' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'KVgiXWyrprDCAdDk' \
    --limit '76' \
    --offset '43' \
    --query 'WYqhyjCiT5hy3SO6' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'acrorquYlyaGJ9Bn' \
    --body '{"file_type": "nUZRew0HpVoJsDiX", "is_public": false, "key": "twaNMLjvKsgdhipo", "set_by": "TrQwulq8lGfOReTx"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'B2gmlEBmJ3gYHQTs' \
    --namespace $AB_NAMESPACE \
    --userId 'OUPF51Wt3qqMXNgy' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'YgKp3NvHEHF6mLjf' \
    --namespace $AB_NAMESPACE \
    --userId 'WHGto8yxwUI5Y91t' \
    --body '{"content_type": "XiXTWFd1ejj8BR6L", "file_location": "0a2YOOxUtX0Co3kD"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'XvtWfFuXOzahp2Ms' \
    --namespace $AB_NAMESPACE \
    --userId 'qXY19iHBoyOKEKzS' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'nXmcKCCui1XPhAPy' \
    --namespace $AB_NAMESPACE \
    --userId 'X0rWgPNzVINA7vXd' \
    --body '{"is_public": false, "set_by": "rYR3FJO0Kej5ZfIS"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'sdKJcR09ApcOFDRB' \
    --namespace $AB_NAMESPACE \
    --userId 'QCqvgYJkrlH8g3BR' \
    --body '{"file_type": "fqMSoXcj9UFj6VZ6"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'VLag8MRizuFRJv3s' \
    --namespace $AB_NAMESPACE \
    --userId '7vto5qYbFgx9Ag0s' \
    --responseBody 'true' \
    --body '{"updatedAt": "unR2E6puRgK49FQQ", "value": {"NZaA3wJ9vAoyfQDk": {}, "KjQz6N6Vf2eOxMKb": {}, "Xrib1DzDV04isuCW": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'TVMqXVL9UtejsNGk' \
    --namespace $AB_NAMESPACE \
    --userId 'MuSpqnnHr7lBnryK' \
    --responseBody 'false' \
    --body '{"set_by": "Qm73m8zWSmIOADtK", "updatedAt": "wGhUyjl7p4SiRQcp", "value": {"Hd5JP8XI7PI2IBn7": {}, "sEuByGLWLxUJj3X6": {}, "jeBUjXHqVkuxpRU6": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'NSeMsG2SuMIrXq8j' \
    --namespace $AB_NAMESPACE \
    --userId '78XaA2odd35Tq3ya' \
    --responseBody 'false' \
    --body '{"set_by": "VeSDeXT2TbvuBBpe", "updatedAt": "roOjgE9KkzQf6PTS", "value": {"gzyPlkGeY8StRbGc": {}, "pYnsLMyvNTkcwu3F": {}, "OV2SKNH7PjQyBZ3o": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'OiIMc0yDJFIhbzWf' \
    --limit '1' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gTijHkCqv7dBb02I' \
    --body '{"data": [{"key": "VYwoKMwxNYp8Erby", "value": {"ljECh2nvIIGjZf1S": {}, "EZGiaU40wGXAl6J4": {}, "qL0ybk1dWbY8qCmV": {}}}, {"key": "ThUeI1cRPNWoeSL0", "value": {"f9cFls7yPR13zJY6": {}, "2D5qTCGXkd2B9t5t": {}, "YS2Vt0ByaCH7vqp9": {}}}, {"key": "eBcvdBMATsqF20YJ", "value": {"c8gLHJRv0ncMxih4": {}, "x50oKz62166SQnEw": {}, "QuKYOBF7vY88hem5": {}}}]}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'uJSW8fJ8Y7dXIpGs' \
    --body '{"keys": ["ANej9yEFDei1pvhm", "lu2IKfwQdrUzdS1X", "VLXWVzY3qM7naCrq"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '0HJmeAlPwpojYoaE' \
    --namespace $AB_NAMESPACE \
    --userId 'mZo7qTNBWhGJExDe' \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'OrMTV33gUr60MKKK' \
    --namespace $AB_NAMESPACE \
    --userId 'qtcoI29ebTlayjKE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'yy2s5aYy34bnFX7J' \
    --namespace $AB_NAMESPACE \
    --userId 'Ih5DhMqFefWQtaOx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'ijB8R6STN4SjMWbf' \
    --namespace $AB_NAMESPACE \
    --userId 'U1G7NdpWiMlbipnB' \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'XmAjLkQWxIuTizNu' \
    --namespace $AB_NAMESPACE \
    --userId 'H1arlln0aq012VCr' \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'kWEhdwg4uHtsXoBN' \
    --namespace $AB_NAMESPACE \
    --userId 'h3yFlCvVIbBA64Ss' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '4L3EnwRUYvDfUgFY' \
    --namespace $AB_NAMESPACE \
    --userId 'ml8vzyXwao9ZZLrI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'nY5keQe38hPcKfCD' \
    --namespace $AB_NAMESPACE \
    --userId '9UD8wdiBnqzfY71R' \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'CHVxMhIH17B67huo' \
    --namespace $AB_NAMESPACE \
    --userId 'R0FtOeRZySr0quWt' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 57 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '45' \
    --query 'B6Fal0h9GqR5OixE' \
    > test.out 2>&1
eval_tap $? 57 'ListGameBinaryRecordsV1' test.out

#- 58 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "XODVEVA41Mwv6AWw", "key": "9VGyjMeYJBfEPYsk"}' \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["XmmPSCtux2n01ymt", "ZwIzzUtdHTcTvl81", "qLmDUtUSgZY4Q5D0"]}' \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'eqbmBuAOSPaJkZlg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'aQuSlg90Id61SVks' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "hI85A4jUA6lCIZuW", "file_location": "zxdohcfhfelqbMZW"}' \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'LAWCdyhc5fEjLZOC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'XPAz67lZqpRzEj1y' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "TMjztid8oYsTn0Su"}' \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '2D0Go5MN4JfiD4LO' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "S7j1wELuT2Np673D", "value": {"JNC6Z92ggjbGom15": {}, "nH4tg6OL7CM0Kftf": {}, "rW8wpVoRhQq1rtYw": {}}}' \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["O4VEWSvLBr8L6udA", "BGopMbclR7lMwR7k", "Uv1bCj0jzvD91SR2"]}' \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'CTbiAxcWi0gsS4Rk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '0vc3wZUXc0V9rDMU' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'h5795NC7p57bvJ6x' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'yabYZpFZYSyEpmMm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '0ckEFJqOHXWxbkWe' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["QPAxoO0OCJwkgREE", "mZ7HhySOPItWT4oz", "mAsElt7ZRK0Ce4JG"]}' \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'WHgkXR7O1NbyfBL5' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["D8rLTHSuPavnMwtU", "7mh7GHyL7OpXVNhS", "YGxJPlodfyaoPaSD"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 72 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '41' \
    --query 'PsUzSzbGB2pUWg0c' \
    > test.out 2>&1
eval_tap $? 72 'ListMyBinaryRecordsV1' test.out

#- 73 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["cVzJvTEhkIQ8qyIg", "7DDfRRdwHs3j7Mi0", "jfsMmG8qiuAJJ9IX"]}' \
    > test.out 2>&1
eval_tap $? 73 'BulkGetMyBinaryRecordV1' test.out

#- 74 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '4' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 74 'RetrievePlayerRecords' test.out

#- 75 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["CSRW1WsRRniabZzU", "uYhR0hEfwNzkW3g3", "9olABocis1VQWSaD"]}' \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'HPylMEFfEyFoJNkb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WH86iOrHOUfuAb4p' \
    --body '{"file_type": "Y5UMHsTujrMys2jy", "is_public": false, "key": "E2L98vN1cJ9PxAN1"}' \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ftmiYuvoiCoi7Hrx' \
    --limit '27' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '3ly4Bsdw5r8Oad2p' \
    --body '{"keys": ["oB1xfK5VkfD4IGyL", "x69k61FhyJxGEYWU", "5DcIB0xARxV8tEmy"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key '7OFBOUn7M4hBFW2q' \
    --namespace $AB_NAMESPACE \
    --userId 'TKtRVnHQAagOKI3o' \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 't8QScD9WN4XGgCZ2' \
    --namespace $AB_NAMESPACE \
    --userId 'OISAySjBNmjp6gBt' \
    --body '{"content_type": "21TApJFryEIADUnE", "file_location": "RbTsWHpbCZRYqoq9"}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'SxpDX4thXBjBepUv' \
    --namespace $AB_NAMESPACE \
    --userId 'juFjA3W52GhEnrOt' \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Z3Ofzc8s7CeOnItI' \
    --namespace $AB_NAMESPACE \
    --userId 'qFZNcDYQd4vIrfiL' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'Gd2yCThk0OgSZpJ5' \
    --namespace $AB_NAMESPACE \
    --userId 'nOOd1i5ZgLbljP10' \
    --body '{"file_type": "SEq4eL4Bmj7lkyYL"}' \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '3eKGhaLUlbTeeAre' \
    --namespace $AB_NAMESPACE \
    --userId 'lLaqxNoTCKB9CVYK' \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '1vErDY92Z2aSacL3' \
    --namespace $AB_NAMESPACE \
    --userId 'r1Y6cv9CLKruF2rE' \
    --responseBody 'true' \
    --body '{"updatedAt": "1af0owcCmurVKFcZ", "value": {"KxLCIdbKGYTl9pyq": {}, "x3xGVM1THnRL9Cjp": {}, "kH22eghQcz32uW65": {}}}' \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '2NTWgCYZSzHxinVA' \
    --namespace $AB_NAMESPACE \
    --userId 'mfAAINNJmbjVXKma' \
    --responseBody 'true' \
    --body '{"updatedAt": "tF3eYZzRcfL75u5S", "value": {"A1QUx5CX2ikj7t1P": {}, "pjw2XguNlh5FDrfb": {}, "h9C79RaPfojB6KvK": {}}}' \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '9Unf1V3JJmFYOEaQ' \
    --limit '60' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Dw6ZgzlBN4waPZsu' \
    --body '{"keys": ["oA8XzpjKfrxt6I3h", "3S7psJ2J4OgZya3y", "9FpujZhTXG1iWPKa"]}' \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'oUXJqLxFP3yK5cSq' \
    --namespace $AB_NAMESPACE \
    --userId 'WeE7gj0ceHhxN4an' \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'slKMl5QfmzRqJIAu' \
    --namespace $AB_NAMESPACE \
    --userId 'YdrTxuoQB4EZdNmX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'f0AespQR5WQe3TSh' \
    --namespace $AB_NAMESPACE \
    --userId 'jNSH2Ym5RT8IBecy' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'b6x7Tvs8fIq2EMH5' \
    --namespace $AB_NAMESPACE \
    --userId 'jp4vq476knhwslwq' \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'uAFGVNW3zoMFpAun' \
    --namespace $AB_NAMESPACE \
    --userId 'Wd5JEHjduhnzIbzv' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'NLhgJ1Tct3mw6IQH' \
    --namespace $AB_NAMESPACE \
    --userId 'e6Crhnt9BZBL6M6N' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'yrCyeFzgUpe0ktCK' \
    --namespace $AB_NAMESPACE \
    --userId 'RML7z4LRjffNc9ae' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE