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
    --limit '4' \
    --offset '30' \
    --query 'KveL6dy0TNevP8Er' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["4b0eZXv7PHFUl8lE", "XokiAMyFUw6CAgHF", "6sdDgENhYCIsgWWi"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'gis0KDYf43dmH3bg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'vjR26TDjReCVwLVU' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'WE25ouFC7rsSd96R' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'vU4q9u8TUeD1dmXW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '31' \
    --query 'mQpGrRxtAzLI1b6A' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "iKMWX4LN6W0Kwcbx", "key": "e1FVyJT4LszxRWI1", "set_by": "6SlL5lVtukepNoCd"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'R7iSD1KLpKtmSbAm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'oelvkyd4ERufyLnn' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "uZ5a08KQxDGkW8H8", "file_location": "jznp3aiq6JgHIxP5"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'rlblJoojzAh51kc0' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'lA8BOez2wib4nkPf' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "XIQYW8CU5jhJI56q"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'Is8f1LBQn5WopEbQ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "G9FynA7nHNPm9dNZ"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'P4ZH3qb37YxNvZ2K' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "Sos2NRBO9jpDRmlW", "value": {"vToRvARdRDN2Eu7o": {}, "N6Egog6GW4Ew07EQ": {}, "DWIDmDyWOx7GS6Co": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'fOnZzxKEk7bIBTVQ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "IlHICbqKHUiELOgM", "updatedAt": "ss6VdX7rB1cY4JUX", "value": {"Pp0nWxA2bNEv45Dx": {}, "LlzTOOeMzBEV84DQ": {}, "VPkDcL96wGxSohNY": {}}}' \
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
    --body '{"appConfig": {"appName": "l5BNjAdc7cZ5xv6d"}, "customConfig": {"GRPCAddress": "WggeWHgbydfSe1KQ"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "TlEavpSYhB2Kw2mh"}, "customConfig": {"GRPCAddress": "AF4egMBrgHyWhmnI"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'd3zoUzHRBg6qFnxl' \
    --limit '97' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'lepqfxCqWctqTEkX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'fp2Luu5qczEqIC77' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '1oWwwg2UoHPJM4ME' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'CYeFtvktx8iKjFzX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'xcQIkrnJivaEeCPT' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["F8vgBIsjjNKccki1", "awpAKKBNXTK18P5L", "4jV8N9hSuMhFKuJV"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["uMAvMroXjKsrxZWo", "FBGb7g9HAPBRIHby", "qpAgWNUMfUuNiJ1X"], "user_id": "yxTXr2O6OfiLjyfA"}, {"keys": ["CVchIvXGEh45CK7k", "I8vMSLZr295swLue", "JnZQ2C44rCsmWYkQ"], "user_id": "1T0w3MuExM31y2v8"}, {"keys": ["qHMWDNrervWY0nQM", "5QKPXOMy6usDPfdg", "d2PSynYEconSgH2i"], "user_id": "VH5XKFfjEH4SaXlY"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'R4pEMEqhdBHnSzfb' \
    --limit '60' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Hwd6dltp34NY6Qdw' \
    --body '{"keys": ["mhgmpl4uu37Ck3SR", "zkjBBJmBMJBQ4ccQ", "kg91jDI6ubcj6bjB"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'xrGZPihpmfBI00cV' \
    --namespace $AB_NAMESPACE \
    --userId 'BfJd5qWaNL1clxtQ' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'z0AcWlGodoqBueNt' \
    --namespace $AB_NAMESPACE \
    --userId 'WgGnZFIo0tpCpgNH' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'lgmRNGJ9MpKYIefc' \
    --namespace $AB_NAMESPACE \
    --userId 'oUeUgzMIGfRJZ1cb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '21YJKd5LA5ddLFml' \
    --namespace $AB_NAMESPACE \
    --userId 'U54h9FltxzTpdzDE' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '88hZJ9j9DBmDig7I' \
    --limit '77' \
    --offset '4' \
    --query 'qa3nziGDGFroRubq' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HtiulhHfQuyk3gsZ' \
    --body '{"file_type": "yO3viCoTbuQ0pFAa", "is_public": false, "key": "oT5W9yJkL4ITftzC", "set_by": "CNl9GkWveP0aF1gG"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'mqt0z8aImeFmZmkq' \
    --namespace $AB_NAMESPACE \
    --userId 'mxLIoh5DcrTuDTwH' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'goliv2tXOyaDKvse' \
    --namespace $AB_NAMESPACE \
    --userId 'e6RlCVMS8qvy9W9f' \
    --body '{"content_type": "NklndreGhAQ3ZEC3", "file_location": "qWeHWVYNzKmc4zES"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '8QHh5YIKqEqdcP5k' \
    --namespace $AB_NAMESPACE \
    --userId 'Xw89RHeDU4D9DElU' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'THIOT2hZLtte2RLO' \
    --namespace $AB_NAMESPACE \
    --userId '3TVQildwO7VfpSmr' \
    --body '{"is_public": true, "set_by": "Gk7BG5CeuKVfqsX2"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'Y8y2CmexnPT0khiK' \
    --namespace $AB_NAMESPACE \
    --userId '2bfi3RRZiBdiy2ZE' \
    --body '{"file_type": "FmVkKqoQw9EA7G3M"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'Zj5W1fJhZuSQt2Mw' \
    --namespace $AB_NAMESPACE \
    --userId 'TiO8fjICrAdqJRKx' \
    --body '{"updatedAt": "iQMjtMt8ywisRelD", "value": {"qBrwSCNn1CoCUjp4": {}, "YMUiJGnosD4wLnWi": {}, "EFk1MQYpXDwxZMUe": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'i9RyHSWULVtNI4eY' \
    --namespace $AB_NAMESPACE \
    --userId 'kWFtKDvKsDIlcljY' \
    --body '{"set_by": "IDLccXP8qbeFZKCF", "updatedAt": "sTQqtBSnpMOi8IPK", "value": {"pxJoh7KKw5U9vMpg": {}, "zfwOB7oKV7hhLtlp": {}, "s3MR3NuPiOcH8x9W": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '9LkZEG2MH2fvAKs1' \
    --namespace $AB_NAMESPACE \
    --userId 'Ha87J0cvPH5AE3KP' \
    --body '{"set_by": "lLdsDEh6PtMUWZ4h", "updatedAt": "DTaCMxBrihXb93iV", "value": {"E7OsdFJJShupOM7N": {}, "bytrkX3DAvbgnOcU": {}, "68TKvq44d0eKuI6Q": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'y4BhNgW6IA0MlbXv' \
    --limit '6' \
    --offset '62' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'SKI5BnzLayeZDUXx' \
    --namespace $AB_NAMESPACE \
    --userId '8NGGKylyvuDgGj6n' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '8EyLkonvOZM65WQo' \
    --namespace $AB_NAMESPACE \
    --userId 'cVcvephiGKhRjVUC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'VNZnz8LENUe4ODj1' \
    --namespace $AB_NAMESPACE \
    --userId 'Z1rlzZU6pzr00BuF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'pq22dFtpRon2MSxd' \
    --namespace $AB_NAMESPACE \
    --userId 'IBDIdCIOVxphfI2D' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'mRQiT38MXxMbl9A9' \
    --namespace $AB_NAMESPACE \
    --userId 'Pf9lnaMK9LdgxaTS' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'vPOoD3hWvAf4Hbxa' \
    --namespace $AB_NAMESPACE \
    --userId 'FUuaHlwT6Qt1gPhO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'b2H7bo18jOAk2OSI' \
    --namespace $AB_NAMESPACE \
    --userId 'HZfX6zi7ojCJji0C' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'Stx0cLf3kAbYTmeJ' \
    --namespace $AB_NAMESPACE \
    --userId 'nQloQHlogktx66nW' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'AamQ3qr4YrMN4ELn' \
    --namespace $AB_NAMESPACE \
    --userId 'sUIC5muqeW4O6SO4' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '35' \
    --query 'tWM84wPPg3s7fjcW' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "mkSubwUJhpPWCntU", "key": "I68mIK0y2X1ozgFw"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["vIvMsUHauTInmIDr", "IdWtkIHBNFtAzSEN", "yZnwPa9MJBf9Iaae"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'pOrLFz6eMJKN3krj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'MAtgqT7GDibH3d6L' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "6FvOvwZvlFXOwVVe", "file_location": "xBZaMqAByudcYFbc"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'BfuaVhIYAoIapObO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'o3Vew3GHw0kpS4C9' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "hG7urk6eeoEZ8P6N"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'CW4YzcUCJcIQ5uEh' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "CBM2DsqyzPZnyvJN", "value": {"nMVdCgS2YrzFSbDL": {}, "CFFL30daw3chMAkQ": {}, "d5c82znWlIkoRm84": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["MXeK9AfSurZw5RR9", "tSL1C847ajsESFEj", "1y4c6d3kzqKdg5gk"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'sr7u6GcyCoB4p4Bf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '1xnIWyD6EnLHmcYb' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '8bNN2TSKFEnqyf01' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'h6hTdAIIrflZS7gC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '9qeAcQgWZtQQrSyg' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["K6nz2EtyDn1rItOP", "k0u99z6D9qJfYzgg", "m3MH7b7a2xtk3w8x"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'YTI4ZZqmftodCB2d' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lHkTgqSZiY6ZF2LP", "yBZjYimvX426yYCX", "9ZsGFKSHIzB9zZ26"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '6' \
    --query '7HNh1n2PLANmFZr7' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["lKZzXHRbgKfFimam", "Fr3hJNpQzwFYSPYh", "y0C7RvW4MG7saV0P"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["HMHQkGsQUwOSIF6j", "C4OyGwUlKqm8E5Q8", "VO15HmnGw5zsvfGs"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '3oitdLWYXHLMvlK9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pCeEcpeJW4XN9l7l' \
    --body '{"file_type": "1MO3ZEyZfB6scYj2", "is_public": false, "key": "fmlY6J3CW0XJdbrY"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '0A1Ny0LUrdvxZyW9' \
    --limit '4' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qRHoiSjYGbRJjVLB' \
    --body '{"keys": ["NfQSlEE7IpKNYpnb", "KsQcXOHdzL8oWpKb", "nQuqElQ1j135joCz"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'QjccIHvLcrbGi9g5' \
    --namespace $AB_NAMESPACE \
    --userId 'wQfLdOYTdavMaMv2' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'QKbsw1lt4gj1anEO' \
    --namespace $AB_NAMESPACE \
    --userId 'WjvekUe1UkyoN3sM' \
    --body '{"content_type": "wKOFEGAbigafuLt5", "file_location": "asdCAL4XIs4HmuEa"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key '8BA1RdSG3FLZbpSf' \
    --namespace $AB_NAMESPACE \
    --userId '1F5zGUBxfmKRgJES' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'NzKF4mfEDkdsyJAT' \
    --namespace $AB_NAMESPACE \
    --userId 'kx4v2m5opmhjQ8cO' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'WuedpeqNJBcxIMOD' \
    --namespace $AB_NAMESPACE \
    --userId '1QSQrSjFFMDn6PiY' \
    --body '{"file_type": "PP0oXpZd8y1zFq2g"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key '6iVOhpnctWmuOP9T' \
    --namespace $AB_NAMESPACE \
    --userId 'yoeKW2GtoQPs8urC' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'FN1OvGVDImhgGTGd' \
    --namespace $AB_NAMESPACE \
    --userId 'May3axtVkM4mSrHC' \
    --body '{"updatedAt": "6OyGwQPYlacheeN5", "value": {"74Md3nhMZeSbXlSy": {}, "GbvDF0Z7pMxXV4V9": {}, "E9kUavDLmKqVLpOf": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'wHmytlcmo5htFKKO' \
    --namespace $AB_NAMESPACE \
    --userId 'lgE4faVvXQRm8JbW' \
    --body '{"updatedAt": "F8G3hIpoFW3g20a4", "value": {"gSmpvhAUjCsPt2gS": {}, "3DljxBcjFCsRWldt": {}, "LooQCh0NdllXZR23": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Nn977FLaUWt5BU8A' \
    --limit '77' \
    --offset '17' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EgEaB3MyhgT6cz2n' \
    --body '{"keys": ["mxnTvT6EciTm20rS", "G1eEOxmUqUBEwt2s", "g4y3zljkJY0WInLM"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'zKo6adxOKJFsfZRO' \
    --namespace $AB_NAMESPACE \
    --userId 'rYz1KyJi9UYz2cKP' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'gwLgN6V7rB1BHG7s' \
    --namespace $AB_NAMESPACE \
    --userId 'akWrDH9p4XEMc4A2' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'qGzrda7aE5R8y0vY' \
    --namespace $AB_NAMESPACE \
    --userId 'ThNFMgjmTFigrS9v' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'HjR65zrA1bYcdl3l' \
    --namespace $AB_NAMESPACE \
    --userId 'RyFnv9e7oPsrXmuf' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'cn3WTtBJxv8gg67m' \
    --namespace $AB_NAMESPACE \
    --userId 'I1lpNbFnoDYpop5p' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'x5w41t0Ho1Y2FI3R' \
    --namespace $AB_NAMESPACE \
    --userId 'tA7S0z5edcED9xhs' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'Hnvln3DJfKjM17dw' \
    --namespace $AB_NAMESPACE \
    --userId 'slklYjac0fMLwU8s' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE