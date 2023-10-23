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
    --limit '6' \
    --offset '95' \
    --query 'eQ3c5Cr03NrNBPx3' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["VtKbEGDrLAOvCzSS", "3XaAzdfd4hXFogRf", "u8ENHPKaZUSDWw61"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'JaJgdEfTSWjceHDS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'UOahNjDHm3qGnUqe' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'Wm7GDsrtbJdR3IYA' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'Y3cjzavd7dfwaPM8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '11' \
    --query 'cjPMLuFnXek1Nuip' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "MMuHN60Brij5UDCc", "key": "IJJ4BwdLOzMsqbOI", "set_by": "HKQLNpWYN0AhkcpF"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'smkmrigG3Uab1M8I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'aYRLDjX8QrZBUjEH' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "QLvZhf8mRvpLiqgy", "file_location": "R1zSvPjgCiB1xd15"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '9pNiNAC7ml9qqu7C' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'FyGrG5MIxYMI6rWt' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "ZBg3xpK2YWyMXhGc"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'i5qZh04CcslWMnWy' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "nrkFHDTQWnuNgSoA"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'GWYxXJLRplVRrkNH' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "UAsyf4n6JnZHc1A1", "value": {"U2W3hjpRtMUbraOv": {}, "8D9EXVUrkEaWEV1H": {}, "FitnLEfYEPFrRf2m": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'hz7CT5CXr1g5a786' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "hQXtGR8DLOyFPxUQ", "updatedAt": "HdqDJFDlyffrhV8f", "value": {"adpDnMdfcoh4Jih0": {}, "sUENcx3FS8ESMqFu": {}, "loTwZlf9E91GC1Xg": {}}}' \
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
    --body '{"appConfig": {"appName": "4hDmZQHkfG15cSSS"}, "customConfig": {"GRPCAddress": "cRLrqc6UiIV86lhU"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "LZAfl4qKzkdH4sju"}, "customConfig": {"GRPCAddress": "L9ijrzYJiiW3ZS7W"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'EEncfTq1vDACvrPQ' \
    --limit '59' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'e26GYSAXS1D7cPI5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'HGrKWm9T37QTxV5R' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'BTNMG5BR9z0hzRkV' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'PYZqZGcv0YXu3LdT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'X6Qgo3gmhXWQU1de' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["uJFQkukfscPKsfjM", "NWU3vVgGr0IySM2i", "yQJGIOsOTZWlez1F"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["ey3q75NAZcdxbnSh", "e2XgOHM27z5g3Scs", "pSuHYa8ac6apU5Ev"], "user_id": "SXL33EcP4gXerO2u"}, {"keys": ["wHbjdvrYX9WRWZGV", "yoEyklK0IYZDk9nn", "wdz5U00vD8eenrbF"], "user_id": "aG4jtbQbYSL8i51D"}, {"keys": ["q4QhJ4y3GdBp2oqS", "7aMkvwH3nJ6Dztn3", "7tRg6UCpKrYIXZKy"], "user_id": "OT2DnI2YM7HpIPFq"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'l2INunuoOaphh12d' \
    --limit '59' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'trScyIGn6gJQZ9Sw' \
    --body '{"keys": ["cNCmDd2Cku9Wirfq", "lhacuwf7OIoAE57W", "6M2uCcFd4v55Mxtb"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'AbL5HzBGd9wQl22A' \
    --namespace $AB_NAMESPACE \
    --userId 'vdaKo8YiIG7SO0Ew' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'tVGokbF8VSyF30Tf' \
    --namespace $AB_NAMESPACE \
    --userId 'd54reSTVmgyzIfAe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'Tq7aE6lqC187LRfU' \
    --namespace $AB_NAMESPACE \
    --userId 'xOIYJ8dzK5zndyEZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'QECQXrsCs7X0UsmX' \
    --namespace $AB_NAMESPACE \
    --userId 'IeVpF2iFZYEKBwN7' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wsk68Wyh5gK6TRkE' \
    --limit '81' \
    --offset '87' \
    --query 'OA8fx5qf0hH1fsnY' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'oKUzm0tyoIGuhwD5' \
    --body '{"file_type": "GeGeg36r8XqKc6re", "is_public": false, "key": "IDI52wSLxBb49HVJ", "set_by": "OL8H4U4PZlT4WDtG"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'kWM3xIK2Zr1A1fap' \
    --namespace $AB_NAMESPACE \
    --userId 'P44pPz7llj4LbYe0' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '8rGd2me1d1d3b5bV' \
    --namespace $AB_NAMESPACE \
    --userId 'hn74DFGtEjN9V2uH' \
    --body '{"content_type": "s7tbwUjU0aqt1gmh", "file_location": "HW2ZdbfyvjApxXi0"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'eXGn0CbDOXUwfJ29' \
    --namespace $AB_NAMESPACE \
    --userId 'SgBi02AxuknGWNsm' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '6tJBtUeeqL5rsvBR' \
    --namespace $AB_NAMESPACE \
    --userId 'I2sDZt81gBJOzmMy' \
    --body '{"is_public": false, "set_by": "zPKRntO9rneY3Kn8"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'WDM3oMsd42ptOwGk' \
    --namespace $AB_NAMESPACE \
    --userId 'DkHM8G0QWDwopR6J' \
    --body '{"file_type": "fw8Qi2X2lw8RX3ux"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'vYCrhPPPXtNI3GXS' \
    --namespace $AB_NAMESPACE \
    --userId 'zvIpEvFhhwVyH3wO' \
    --body '{"updatedAt": "DmH2wVTS2jKoil0h", "value": {"fce0SHr1skv5tPki": {}, "Zy6eMntl3Zc4RWX5": {}, "PQxDIZ0dJcd75vqf": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'HqAe20e1p29sMVZY' \
    --namespace $AB_NAMESPACE \
    --userId 'jsPzFZuzQvkYNdiD' \
    --body '{"set_by": "pNtJV620rnMQREe8", "updatedAt": "jHBOmTAWNkDYdhPG", "value": {"CGBNaDwfQHcjzeqI": {}, "iCZGY3BVBCpDLhxf": {}, "U5nSwYv2IGEO7NvB": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'NDCr2XI5DFVrbDGT' \
    --namespace $AB_NAMESPACE \
    --userId 'o6whZOrN4w1KcedN' \
    --body '{"set_by": "erikvQoYlI4kgnsY", "updatedAt": "akDNC34WybatqnKa", "value": {"mIobaL8Qx4cKYKrw": {}, "oLtQRHH08RNNimKm": {}, "KEeFkuCUS1qzlz9k": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'EEiZKPdDParvCoMA' \
    --limit '54' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'Y8zvBpJjaHuwzWKg' \
    --namespace $AB_NAMESPACE \
    --userId 'RkuO2YzLXzJhSXtT' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '00KhI2Ge2po88wwR' \
    --namespace $AB_NAMESPACE \
    --userId 'LTSDHJq4WLxzpSqU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '7aq8RcXBLwAxR2kX' \
    --namespace $AB_NAMESPACE \
    --userId 'BWhcxULeWzyYOcsf' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'GJmr3jJ7V8SLNQ7d' \
    --namespace $AB_NAMESPACE \
    --userId 'Pehjt6mbFI6Qp2x6' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'vrXCrSnGzMidlZXL' \
    --namespace $AB_NAMESPACE \
    --userId 'ENK1sp6FxQnivDO7' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key '1vDm2UHq3BpmB5wa' \
    --namespace $AB_NAMESPACE \
    --userId 'tOVzM4n7xWkiFZc7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'jgkFIOdSejyRa9pM' \
    --namespace $AB_NAMESPACE \
    --userId 'z1axofyoHkn2FEp7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'JoU2wAC4BL9EIE1C' \
    --namespace $AB_NAMESPACE \
    --userId 'lyuUfdi2QlWgxuPC' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'p9NuJx7ZNCL4anxz' \
    --namespace $AB_NAMESPACE \
    --userId 'uftQep7BVsXFp1Tu' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '2' \
    --query '3mjkslY9RrRJRgbZ' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "3hmCO6YeJnmDgjlt", "key": "e3rzGDnMXK4e6gs9"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["xdF1kTbDQTU3AT5i", "3gUdcydCfKjCOTyD", "fhWOqBfghl7si59f"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'c1haejM0WVU4o1Ez' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'X4d2egqFbQndatah' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "m6yFZwh4dpShe33c", "file_location": "qypjV39Jhuq6FAEO"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'VTiExCcS3PwzjdR2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'uO31u2HW5ltTlmxx' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "x3dv1anxwZfN58r2"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'zmraxujfijO3S1Ys' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "fouybPcqbAf9gKzB", "value": {"CdJzTo7VCOw1EjW3": {}, "IaRjiJruyFVuFrSx": {}, "WvkKHrnBf4ixtRzu": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["EaIsGfxojil3Lszf", "nPClOBT4qixQ24IP", "IjysuqlxTzxM4e7y"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'M9AyTbW2hFJ1yKqy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'AuEMjcL7uJIRqM26' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '9AxD5KTka7VB9Vqw' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'SnXEPthbReCbhjJa' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'G2Rb04xPQkTdayKc' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NhRCKiCfwwLYyTT0", "ikDEa2GicAZgx9lS", "m4ccPg9g9TLQmVsm"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'MiqI38p7VbN4Sh0W' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fmDMtYfNJ1IIeH1c", "5iTKBVllOj3AuBTC", "b1X0NStYGAQYlu3J"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '22' \
    --offset '14' \
    --query 'jSSdJrRa9NbQw53X' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["bsEZJSAOU7BHauRx", "3COqQhfsq6sMpymt", "X3kOji5KR5izpXHr"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '1' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["dOL60o76bT1g9SRp", "ACn8IXqIuPuzbcDI", "u1ZrNd7Z4twPfbsd"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'pMwM4PbSnT3czcyX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'u2mo64zKGs9U4c60' \
    --body '{"file_type": "pZgGiAVUvcBnQev9", "is_public": false, "key": "VjeH0l0Hw9X0kAwe"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kjlXcJ9mjznkYwyp' \
    --limit '100' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'yt3RtyJh1X9Agi6C' \
    --body '{"keys": ["mm5y8e9JXvFkQSSt", "E0rBRqpKjdrZUAvM", "hp4slOUekaqEhuUb"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'Hl6Q8hUnAWCCt0ay' \
    --namespace $AB_NAMESPACE \
    --userId 'rY1KFtWTBV6lPsF3' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'ZR9KhJLbGjMFM7e0' \
    --namespace $AB_NAMESPACE \
    --userId 'qvNGKo1mk0zfiBC4' \
    --body '{"content_type": "ttatuOFOgqg2qxQ4", "file_location": "gbbL78ru3OaUuFsw"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'z3evTDk5IK8jIy8z' \
    --namespace $AB_NAMESPACE \
    --userId 'jSYOptCCOzJKLta4' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'czxamTRRO4WbMjj6' \
    --namespace $AB_NAMESPACE \
    --userId 'Wj1lkqN7iWgYfDW2' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'QHHhDT5KZeYESpsN' \
    --namespace $AB_NAMESPACE \
    --userId 'NmYsjUy3ZcDvQglO' \
    --body '{"file_type": "84eqkjocoFD3TuaM"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'FP6yI2LsbfOoWGiZ' \
    --namespace $AB_NAMESPACE \
    --userId 'YDEvwxAw5jCguk0G' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '9zQ09JXVoYYOFKWr' \
    --namespace $AB_NAMESPACE \
    --userId '39RWrxJl8WxVxEb7' \
    --body '{"updatedAt": "cc12v6bOpzSGFEq4", "value": {"gY7ANeSvJGlRNsxJ": {}, "YfT6CoHQ8QfGHGe2": {}, "cG2iZbG3b3EvHPjX": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'Iwn4yoQYNWK909ns' \
    --namespace $AB_NAMESPACE \
    --userId 'o00t3gNSolPtgbfI' \
    --body '{"updatedAt": "dTPrGuYJjs0hKZK8", "value": {"Ziwg5YDUliCE9dEU": {}, "MiKygokXhNMeYj21": {}, "2yQn4sFRtsyoeebH": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gwq34IYzTGWP3Kx1' \
    --limit '95' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'pxdTwuxQKc3qxaXv' \
    --body '{"keys": ["6856FJcM0VmGmzbp", "VGvIyzneIeUkundA", "PTjamOEfQkJwQ80r"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'nvQftxvEvr0aYqLW' \
    --namespace $AB_NAMESPACE \
    --userId 'XoMS8ApiES9pGKXO' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'aUtFX7KBHPHCqeFg' \
    --namespace $AB_NAMESPACE \
    --userId 'EdTkwFEoXvXgBhEn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'zqRgPofrqiHO7H7n' \
    --namespace $AB_NAMESPACE \
    --userId 'Mc18dUrJHhvf0e3v' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'xBnD4b5h5eYV02C8' \
    --namespace $AB_NAMESPACE \
    --userId 'TZ7dMpDtLKSGJB4v' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'cgP6FlZSsSpCtl59' \
    --namespace $AB_NAMESPACE \
    --userId 'rTbvPTXMCOBH7LIx' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'LdW3SGejHfm8Gba8' \
    --namespace $AB_NAMESPACE \
    --userId 'LLEi6VDx4iGiVuTJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'yiYnsdjH9cBq3ERp' \
    --namespace $AB_NAMESPACE \
    --userId '4GmjKCVnNiLPYpKz' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE