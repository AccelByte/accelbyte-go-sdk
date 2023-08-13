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
    --limit '34' \
    --offset '81' \
    --query 'DDhqV3lqlGmRnqFv' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TWjEWVK4XOltDXbz", "3iCq0glKBFYFryTi", "BmB9TBczBTb0UcMQ"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'Vf00XL9sCAxSQSBX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'N28GbjzOYboLVG5W' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key '1hfHyseDZbZeDUui' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'Akzmrxbjjb5FGQuT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '30' \
    --offset '44' \
    --query '1Y4jxkQSXFj07FpK' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "1atwYzatjS6dxMLj", "key": "xgEGB7mX25cxJOYG", "set_by": "IbSW3viHDp4AeYcL"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '1RywoC8XnLyEvdSz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'iYLgyPmBVJEg3PQs' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "iUK0I3Y0wLrMvZUK", "file_location": "CrfTxEmxUsvid0pX"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key '1s1sRixMDflWgdBb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '85pvmsI5BGbKXjyB' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "d9sIiXW906CI4sO1"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'peNc472WL1uX285k' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "nvrW03z3C3DotDkm"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'XrJ6XmsCl9cv4nqv' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "eP2T6OLjGKL03xuK", "value": {"tPhxVenIAMPXBjZ3": {}, "RhgXX7pSqxOqaCnS": {}, "hzZDIB8WyRtYGaZJ": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'GLcHhC9FNYcTctbW' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "uNxom3l2heEVcKN1", "updatedAt": "JSgjpofYWWW6gX4i", "value": {"o4EXzwCe6eZa5D1q": {}, "X8xNxMp9kGNgUsYM": {}, "LFJSGg3nN4s7YJvx": {}}}' \
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
    --body '{"appConfig": {"appName": "TvH4BgUEN8SyaHy6"}, "customConfig": {"GRPCAddress": "8jaMQLmkvIo8OG44"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
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
    --body '{"appConfig": {"appName": "PsbaL9pf1IQ9WWAl"}, "customConfig": {"GRPCAddress": "5FxAKI1TTGXTAqAf"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'AZ3F34bgUP4ruy0m' \
    --limit '38' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'J94umihFD8lkrTOc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'UPBcXt72lbHE9MXA' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'hb0Hn2wDqPl2H8yt' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'OrRgQaSVtpfgehei' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'JfQmqLsyR1WEivc7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jXmU3lzLg3mSnLtC", "jRijpYwMw69g93vY", "ITrRrudyzA4P4ffD"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["xgl7KLQsDBRweINQ", "CRsshOUaRc5E62bw", "QNeyMpUxoapWfZJv"], "user_id": "IxoJDCKRrFtmDi9Z"}, {"keys": ["qtDqSu7D9d2ehPs6", "FdD6GQ7KZGDImWdj", "YN2gIjoJeCuhY7Gd"], "user_id": "Fw7gUKHDO0QxNJ7U"}, {"keys": ["2F7rypsWqXHFp8Vh", "W1MUZzW0z5Jxokfm", "gKi2qSobjHATzwyc"], "user_id": "LIDLNiSTel8wfTGk"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UXM0TpP5DNd8Dv8o' \
    --limit '26' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '7BAJPc08JsYMgYY1' \
    --body '{"keys": ["R8sfL8HNXpDq9Fsj", "XKhIAdyZQH20Q0qw", "qeYUmVGkb3AyV3EJ"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'Q8NVj8MCob4DCwTO' \
    --namespace $AB_NAMESPACE \
    --userId 'WySsx0kDFzdzcpmV' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'GsGmsjCkcUy9aSq3' \
    --namespace $AB_NAMESPACE \
    --userId 'PlQxf3sYHM2T4xBI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'yV2x8XrUCJvMpmwS' \
    --namespace $AB_NAMESPACE \
    --userId '14kPrCiCWuKSsIha' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '6AM40MeWkfM5QOoP' \
    --namespace $AB_NAMESPACE \
    --userId 'QaawwbMAvnYMc3kZ' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eTF6yOqnqnJsmGSd' \
    --limit '58' \
    --offset '51' \
    --query 'oAgXjzhDGCzj8xuM' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'K14DoM3Wy7YdKTkv' \
    --body '{"file_type": "oKHZ4axZxRyt4Whw", "is_public": true, "key": "mTOtmasVC2gJe4aR", "set_by": "gxLLYnX4WQUveakk"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'FgBX3Adyv7J4AYwt' \
    --namespace $AB_NAMESPACE \
    --userId 'SeRtPxRrD5a5a6QH' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'JHWGBMfLikeKOska' \
    --namespace $AB_NAMESPACE \
    --userId 'Lqu2aDT889kqLVlK' \
    --body '{"content_type": "3n0dOkSa0Y8mxIPc", "file_location": "7mBcEjrjU2gIaeqg"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'UtZEmPIp9oI5W4zy' \
    --namespace $AB_NAMESPACE \
    --userId 'OW8VJBqxb8dLD0G0' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'vzMXPqAKVy0Q3SZb' \
    --namespace $AB_NAMESPACE \
    --userId 'PyIkezifhetffZGh' \
    --body '{"is_public": true, "set_by": "cuejX0IeLPO9QnWP"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '6yrx1129wMa1mByF' \
    --namespace $AB_NAMESPACE \
    --userId 'h1rw8qdfgn0Pv9Lb' \
    --body '{"file_type": "rexMnCDXFIwuOOhG"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'YeZZAwz8VDi1uqbU' \
    --namespace $AB_NAMESPACE \
    --userId 'bRgAZV1CSuCX69iH' \
    --body '{"updatedAt": "LWm5vyWYieC6NEi8", "value": {"co5afTw2YFE4NkI0": {}, "p0Y3BrhmEDwh1HxM": {}, "ongMasKIyeWAz1mV": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'e6StxgiZLbTi2nLZ' \
    --namespace $AB_NAMESPACE \
    --userId 'k2SbViGAJ6GHOWdK' \
    --body '{"set_by": "vGrYIqB83WPXn8Vl", "updatedAt": "MbvrRBowuTuhXyVD", "value": {"62hNo2VkjmRWNYDR": {}, "WmakqaAHbH2RFaGi": {}, "ktWQzKAPgLEfNhsp": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'Azy5BxC937WzV9gW' \
    --namespace $AB_NAMESPACE \
    --userId '6x5AbZxS3izNuTsn' \
    --body '{"set_by": "V4NvdnbFUwDFw2ee", "updatedAt": "UFlM0qIiPeSMyBUH", "value": {"GoFitlbcn68WmZLj": {}, "8aqNuGT2U194UKUn": {}, "YIc5DkKaJE3utDZ7": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'D8CGmpS8n1zggk4u' \
    --limit '9' \
    --offset '9' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'Le6FWI3lQ1wwVytc' \
    --namespace $AB_NAMESPACE \
    --userId 'xcbOjhmWErNEiMTM' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'ag90ojgdnw9IFhol' \
    --namespace $AB_NAMESPACE \
    --userId 'CtcFUrgGrVFSX1Q0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'otu5woAB9ZcFoixu' \
    --namespace $AB_NAMESPACE \
    --userId 'ZSNNEvwChVkyCb6R' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'VFQ5H6pqBTceRUwn' \
    --namespace $AB_NAMESPACE \
    --userId 'y9DfJuvBEDrbgqYJ' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'YrZo2mjx7fyNRwWB' \
    --namespace $AB_NAMESPACE \
    --userId 'pBNsc5ijNKbfU9BU' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'ogz9jplryY1kPmIe' \
    --namespace $AB_NAMESPACE \
    --userId 'We5AEDpk9yVZie5X' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '399kVL38Lr4RioX3' \
    --namespace $AB_NAMESPACE \
    --userId '9Bla8Otiq2xGfYdV' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'hD3vGHWamc1nGimW' \
    --namespace $AB_NAMESPACE \
    --userId '7gDzrF18dnZC1o0V' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'oCAylqp5FsAYeEHR' \
    --namespace $AB_NAMESPACE \
    --userId 'PNsHlj0bqRD3NR4J' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '53' \
    --offset '47' \
    --query '8J3Jg4wgjzHOO2IK' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "EnAafN1GnGeSf5qp", "key": "kIMhSI4mdUZJWcMW"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["UAtwSxOBhAGg9hvF", "Wtl8VtUSIMhNC3YX", "3oJTcj5ZjaTqzNm1"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'RzJxXGZMQ9CiGUIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'PLAFyF9oRuKXypgd' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "JK9Z5S6sRJ5COkCZ", "file_location": "FsRbowpkxH3gK20Y"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'Ky03avTXCWdJ25Wq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'szeWSb89i8Pvgw8g' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "tyMHt2JrLjXMBDPw"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'YFAe1szL84GvPzrq' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "PrqU3zYhjqL2vtCa", "value": {"fetJOGBMEDHTHlZk": {}, "QnRw4Ny8voyOjOK9": {}, "KShPQEIpOW3MumFD": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["u3ii7MmJvNepTmob", "h05UqfcPFZuiHxc8", "wsEXnO0Je5dtCiHy"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '7XN7wEVyyEmLB8YJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'KeDJVk53F8nuBWV3' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'bJBeAKHOtVL87hJe' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'zA5p9Vy12VxSmc3E' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'ZjZs3C8cQeMfsRl9' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["uQImO2BKjzBmnDUF", "2AqdKg0G2l6B0igy", "PfJBzAIZCLOM5QBZ"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'qC2SvSPsT5atLuhT' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["WsiVILDOCtIaSIxh", "wv1U0AwOOiWtAUKn", "fIoujp8gK6iXDXNE"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '41' \
    --offset '85' \
    --query 'iJ7v3YhFbdDzrq95' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["N7zAlHo20y0vpQoR", "HTILBG2wfnJeVoJA", "pNfn6E6Oio55ED8U"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '52' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["TRcX9oe3RhC8qE6b", "7cwHff4ZF2aOSwrn", "KKeubU4cY0PfxSNf"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'UvmrrNUQsJ8ndaIr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '593DOCkC4b5GvRBz' \
    --body '{"file_type": "fv5kiNXwTLtEIjZF", "is_public": true, "key": "wDDx40XfJ05ITktc"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'hwjGXJnJtB5DMbiT' \
    --limit '60' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'cv6GatCJDDbpWqbu' \
    --body '{"keys": ["zb1ECwStmob0h5tv", "4noHplVNTZDfuIEN", "RM0s07wzaRHYfWZ3"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'MOR2kdTdSvzROFgi' \
    --namespace $AB_NAMESPACE \
    --userId 'SiTcZiBO1iO9mCTJ' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'g6JLehiiEdJ01Hji' \
    --namespace $AB_NAMESPACE \
    --userId '3XBUwGj7pBmcoSvk' \
    --body '{"content_type": "Lz3e5qquHEEp2Pvz", "file_location": "z9g9cUSU288KrWYS"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'u5VPBRhrguAGZESZ' \
    --namespace $AB_NAMESPACE \
    --userId 'oBbyjcc6svGLSnFs' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'EcjVJmRwMgo2XsVQ' \
    --namespace $AB_NAMESPACE \
    --userId '6hGTTNRTVqslpKlN' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '2W649ZkSrwWvwVlY' \
    --namespace $AB_NAMESPACE \
    --userId 'kry3k2kSOZwOZutf' \
    --body '{"file_type": "wbQj27LhpNUGKLxn"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'aoB6EVPwUlvjxWAU' \
    --namespace $AB_NAMESPACE \
    --userId 'HRQQxNgbxFiwpMHu' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '5LTDSJ2Qk41AzY01' \
    --namespace $AB_NAMESPACE \
    --userId 'atGd1VfNWuSAauZ0' \
    --body '{"updatedAt": "piv7cTyEoaEYLsr0", "value": {"CxVfWKHsVnamAPNI": {}, "cCM3TQQGOGQHbN3Z": {}, "d7MIzimuiQIjn7ar": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key '12hibWRhJTzeldC5' \
    --namespace $AB_NAMESPACE \
    --userId 'WYr3q7UwC8Yc2pAB' \
    --body '{"updatedAt": "YOs1TmIIV3ARGICW", "value": {"TDQSjuORtf3E1D9W": {}, "f7Pl2E1NuPB4uobt": {}, "i8onimpMYG1mI7du": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'YOUdBx5yMsw6yco1' \
    --limit '53' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JL2QsOyakoa6GQAF' \
    --body '{"keys": ["zpSaqY9P7JWeUWn4", "7AxFymYZl0RDeCRY", "GHkmCyv3WYQHTO41"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'fWyRoNvAWKtKsxHx' \
    --namespace $AB_NAMESPACE \
    --userId '3Yhzjb1l5oA8rxYn' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'EurGND5jEngdQRfR' \
    --namespace $AB_NAMESPACE \
    --userId 'skh5VLOWl3FfRBga' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'z3jrVZjJykhKrVn2' \
    --namespace $AB_NAMESPACE \
    --userId 'n2ct3V0OulphnLub' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'I5fMU54XtNQhJqX6' \
    --namespace $AB_NAMESPACE \
    --userId 'd83Xra5hR9yZj2uY' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'PKrVh3noXsmgDNky' \
    --namespace $AB_NAMESPACE \
    --userId 'MgGqkFbklZk6NXKv' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '0UKZr7dJF44S10s2' \
    --namespace $AB_NAMESPACE \
    --userId 'EVPGjLumDiB7QjZE' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'ZjQWooRsgNbiQ456' \
    --namespace $AB_NAMESPACE \
    --userId 'ojlhRiIgSL8dM3Z8' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE