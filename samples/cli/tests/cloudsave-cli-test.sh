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
echo "1..94"

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
    --limit '75' \
    --offset '54' \
    --query 'iCL4CXD7AyGODGsb' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["tmqyWWAtaJMJEHDq", "GgOwaQrgPHcYTfZm", "wf6kOq6q19Fx1guk"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'GTmtQitDR6voeck7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'n375Ayvx7HdQ5ZX3' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'OR9BSzyDKiLZFblN' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'PylB4pss4cIAl4wn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '21' \
    --offset '11' \
    --query 'UfydoLagvlWfzazE' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "KFgO65aC9Tk65EUS", "key": "0dXKVB2tH1KAgAid", "set_by": "LiBblPmWxh0XKoqV"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'DNIXZ8X4g3Hj3YNT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '60MKStedy0mqY82N' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "EVB2ypdqRXX86GhJ", "file_location": "i9BVFdqtmy5qLy5g"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '62O5rMQUeu0NXD8K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'oRZypMgAWyWbD6rs' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "8O9aJswOpdjWeeos"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'Dd9AJd3heSTY0BIc' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "RhhSzQaeJXzcaZWE"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'tm6ApA6IMFXY0kgY' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "uKJunlr7SFFNd33U", "value": {"6dFU2qJQCoQHTHP2": {}, "U8Z55IxUZ0b7si65": {}, "W2C6oTtEGuVg1Nd6": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'edtEox976LpUIkxp' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "g7T7rtR23sCPgmMU", "updatedAt": "tikL5Pw8cc5Ugomj", "value": {"P8ILvMSk6c9krJS0": {}, "q8zCw2WFcIMgnhjH": {}, "HQIy11xrpUuB5qxX": {}}}' \
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
    --body '{"appConfig": {"appName": "w0sm02q6BgwYlRXf"}, "customConfig": {"GRPCAddress": "EuO65jb6euhaJk90"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "oe0fEyUqGFa51zXF"}, "customConfig": {"GRPCAddress": "nHfUk5CNV82sfzr0"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '82VGBL1712lEFUnB' \
    --limit '5' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'jI1Iyzx8Q9bzgrri' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'Bmetdp4ZU7jAA5lv' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'y8CMltRP26osEVOc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'vlBQ0Z2c8EARpFbS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '4I04wkZXSMGAxgqw' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PRyXd9AmqeJqEDx6", "YX0OtgWMUDhsoUFK", "3thXXq6SUXt3paDl"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["CCCfEIQ4VNpub5Xq", "wzsSpfeFuntkNfqf", "1CtyNIm47o6h97sD"], "user_id": "nK5BANB6t9FXDzeN"}, {"keys": ["81ksAEBuWWBdRaIh", "s8BEItqdNbSXmZWh", "jIA6Dsc1KbrrtcSF"], "user_id": "hHopUtlU1GVofdgD"}, {"keys": ["bwsuapfoE80ewyAw", "rqi4N9rFoD3ZSN2l", "0cFNQIDH5MXi764n"], "user_id": "2peHAEODlxJdFcop"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'G99jPPejh4rmaKKs' \
    --limit '74' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0Yih5sRBZY0XZXol' \
    --body '{"keys": ["10LSPsqGbez9b53r", "2OGi5CkyyS5RtVlz", "A40qU0UpUImB5xsS"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'w3ocCitR0KE9YHLN' \
    --namespace $AB_NAMESPACE \
    --userId '69RKsQIVjWrmprBS' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'WOCR2gebuqVIFlnm' \
    --namespace $AB_NAMESPACE \
    --userId 'WW55qcH6Y46XN4Yz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'YAdHGQZv85Zq1KIc' \
    --namespace $AB_NAMESPACE \
    --userId 'HrlZ4kxQZG8PqWyg' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'pcYCX3SxRddZQhhW' \
    --namespace $AB_NAMESPACE \
    --userId 'QennW6VKuh6k58jx' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '7sKGrG6S82Q5zQol' \
    --limit '74' \
    --offset '57' \
    --query 'hLllThU2uwxwq9fo' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'krl3J1oOQCuaW2fl' \
    --body '{"file_type": "d7wh4jqlw2Wz2gPT", "is_public": false, "key": "V2ozphA1APjFVyl8", "set_by": "CSSfpA0S0XIKczRl"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'i5rxKSnHh9NBTB1Z' \
    --namespace $AB_NAMESPACE \
    --userId 'GDOqWhnAxGjGtiGl' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'aorSAQbcyRIq0lJ6' \
    --namespace $AB_NAMESPACE \
    --userId '4CruUmxhFxCNUYI0' \
    --body '{"content_type": "JYu4RwkDJLoo3IYt", "file_location": "jWAVFIvgpKOBiu41"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '8niMeCuUXpPKSHQC' \
    --namespace $AB_NAMESPACE \
    --userId 'TRIayEE6pRs5Yeb4' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'HkUqxapzJYoQcS2X' \
    --namespace $AB_NAMESPACE \
    --userId 'nlwgwMHLQEW1SHVn' \
    --body '{"is_public": true, "set_by": "mSo1comr3Q9vuZV2"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'vmzoLS7Jny91Tdqb' \
    --namespace $AB_NAMESPACE \
    --userId 'JIGMjeG2G74NO1vW' \
    --body '{"file_type": "jvzigLol7qL6dYKI"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'esklznHqVFkriwlv' \
    --namespace $AB_NAMESPACE \
    --userId 'HxUY6n9WQ7iYMo8f' \
    --body '{"updatedAt": "ybsss9LmBN7eGdtv", "value": {"4kCqk7MVonPTl5oi": {}, "sRY0NNo46fdokayP": {}, "niFn4W0RTurnooen": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'wG0RZHT6c4ZOIo0n' \
    --namespace $AB_NAMESPACE \
    --userId '9WUl9k77cNCw4sbL' \
    --body '{"set_by": "8Oulw3W6DeM2vQ0q", "updatedAt": "yjskTqnrqDLkHRwE", "value": {"0erCpOgjuNllUr8u": {}, "UDTjUNaihmPE7NU9": {}, "fG8ALcUSHGEnG4uw": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'JdrwFytKwVq52px6' \
    --namespace $AB_NAMESPACE \
    --userId 'FPiZQYUcLjZ4DnVm' \
    --body '{"set_by": "jucw26s3Qfo00pPO", "updatedAt": "QJffqs9YZaoTAmk8", "value": {"HfwZlpWkMe9ksJja": {}, "pjtB70Kfa1T17dEE": {}, "HDlj0S3RXYSBepGE": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'y9TKxB3hxAyTne5S' \
    --limit '78' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'LJUDyyZp3mGjkYsV' \
    --namespace $AB_NAMESPACE \
    --userId 'uAiRMTitAmKOUdL2' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'fLutIxddSByo03ll' \
    --namespace $AB_NAMESPACE \
    --userId 'PWOdc7H3yyqyib9t' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'NoyqpI8WLGhrzfgx' \
    --namespace $AB_NAMESPACE \
    --userId '0EnVIIfAV5EDqypY' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'sYnqZ7CnMlrISDJk' \
    --namespace $AB_NAMESPACE \
    --userId '2GduRd1oSOHxP1S8' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'BtF5T7i7rSn0sIdX' \
    --namespace $AB_NAMESPACE \
    --userId '6y6omQwR2HlhEHys' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'A4vM0bDhO33JsfCz' \
    --namespace $AB_NAMESPACE \
    --userId 'qJE3rQFBHYUpopd5' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'CHMOW9NJOJqf7IOO' \
    --namespace $AB_NAMESPACE \
    --userId 'VGDmWKIZDSDNH53z' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key '3uzteGb8yfhopKY2' \
    --namespace $AB_NAMESPACE \
    --userId 's1T6ssjafcFO4LLz' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'Z0OMYROHi0Pu8S7G' \
    --namespace $AB_NAMESPACE \
    --userId 'YMCKnsO5q5JFxvFB' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '76' \
    --offset '44' \
    --query 'zCF7jtdLvJgpwERd' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "XvCGhYrZoDADHEzs", "key": "dQpYxjKHAPWwXxtE"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["FLMFaVgLJayI4tRU", "Zkjwz7ujRSaZsmEi", "Z5b0wfK613wRM8LI"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'vt0JXb2L69d9IqhZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'GRs3xcyPVzzDZl9K' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "eY9C5V6zGwOKuFOo", "file_location": "VBsA2plOSyG4Pz7y"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'pBFmrBmDYvMHK5OI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key '7m5Gh8ZIEvEV3ERB' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "nyZylGFXCfo88YvK"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '64JrBovlkqEBWGn7' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "076AKYUaYqLomtah", "value": {"IQbusYR7W7Eah86C": {}, "2KvvhZONxAwOVp2G": {}, "WnwxCPz2NYwiLzvy": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7f92JuKDjUkNXWZp", "0ZW0i5HpwqgC2BAS", "olSUIDq5xMPXBEUq"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'cm2pyTUTYB77aH5d' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'vxjSlwTSBTVze6g7' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'b9TahiOs8sWxoDGO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key '372IkI1yeVGhi1YH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'gRkPzGgburGhrcqR' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["eZ1cM49jGHa9ABaK", "NQjTo7DliW1Ex6G4", "lF39sap0M5EnPFta"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'C9bCFjT03jFSafyH' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KXfwGaqIvJ3xYavH", "2VtnT2Tpte8ap1vE", "T3MA6fbKWEjrrVx6"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '43' \
    --offset '56' \
    --query 'PU6VKRvd7A5ZuZZD' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["PDpXe9s9GG328eFz", "AhU0RXwOSG8pAhs2", "uKxMvmc3V30nAqZD"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '72' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["o93kyLxCSeOz3xTL", "uOfE1ksvETDO3E4F", "gAusUizWKNxlCq4d"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'yGFpUP6VIbCwwNdI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Ae36JVZBVvb4jg4V' \
    --body '{"file_type": "pNXC3nmDEvqqcFzC", "is_public": false, "key": "AgCSeZ7wwsyfs3G2"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'jAWl2loK0lPhKMHv' \
    --limit '100' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xt0xI62ezgiVwTCm' \
    --body '{"keys": ["w1D3ygbd3o8jOIst", "VszGuQ4xYTYebK10", "vwdxXM9SpBa7aW9I"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'BMYWR86xmZYFojMB' \
    --namespace $AB_NAMESPACE \
    --userId '0UX3qfxLwXh2SmeA' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'GVmURUXGI9E9gH8q' \
    --namespace $AB_NAMESPACE \
    --userId 'ct7gogwNi3Xt1YU5' \
    --body '{"content_type": "LqEslHzoyM2ZhnDs", "file_location": "ZQM0RRAAulBx4IJm"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'mdJj7c43JN3PDerP' \
    --namespace $AB_NAMESPACE \
    --userId 'qq2nW3kh4C7cT4wR' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'XBeHKTq4P7fLzzjF' \
    --namespace $AB_NAMESPACE \
    --userId 'uvCAG6FCUmhNPznw' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '8XU9SWuMLEZR4gst' \
    --namespace $AB_NAMESPACE \
    --userId 'FrqbXO3wrlhoMDa3' \
    --body '{"file_type": "PXPWWXSpJq4G80Vj"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'WnUmKJuzQzXBhjdB' \
    --namespace $AB_NAMESPACE \
    --userId 'ZPTy5ztEl7sXD9Uo' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'YVM5HXMSwzOZngI3' \
    --namespace $AB_NAMESPACE \
    --userId 'GtERroj9KyqkH9pk' \
    --body '{"updatedAt": "f1zMwaYICzXsFmoS", "value": {"LHbTD0W9G9g7eGnf": {}, "6hIcWp2I6lQxInhz": {}, "PjubeVVMYPY67hx4": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'MrpLT2gBWxVnxslw' \
    --namespace $AB_NAMESPACE \
    --userId 'PqzHp0kgxgcsoH7V' \
    --body '{"updatedAt": "JE2OT0GbAB7kD3SD", "value": {"yWbviU2FpKUu4cUW": {}, "V9y4x6CodUnv0Gu0": {}, "XuwwJEy91XOK7uzM": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'VMpah2G3pd5HrISD' \
    --limit '81' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '8y5dCllxerjgX52L' \
    --body '{"keys": ["aoRK5UMhkphK1m0e", "LbCGIDbc5l9l9xdg", "tHZgeRNqjroAidDP"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'zHosZMLpuk2cFT29' \
    --namespace $AB_NAMESPACE \
    --userId 'gFYLsz6yEPPmumZW' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'sxHsru7jzK5NjoqK' \
    --namespace $AB_NAMESPACE \
    --userId '5KhytRVVQvAQObVW' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'd7v89DHDx7tHJob1' \
    --namespace $AB_NAMESPACE \
    --userId '0tyhhxSsM99PYqQF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'NZrOGNi3cWXyCUc9' \
    --namespace $AB_NAMESPACE \
    --userId 'BQw1Tq8uJwYMxNpK' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'WZa2EXr2KHH5ykY9' \
    --namespace $AB_NAMESPACE \
    --userId 'PrIL3lWVW3WRwDXL' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '7rE1bFafgODOfJiv' \
    --namespace $AB_NAMESPACE \
    --userId 'BhPBNZ5YauJrIVcA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'KChQA0nhMva3oQhi' \
    --namespace $AB_NAMESPACE \
    --userId 'bUfXk2T1oEkK6h55' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE