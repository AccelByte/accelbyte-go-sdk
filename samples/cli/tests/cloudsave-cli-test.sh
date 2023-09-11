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
    --limit '20' \
    --offset '49' \
    --query 'KyDsh9UlIfw3hr2a' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["j3YBG6IjN5aVntnr", "NY69MhWaKVKUtaiY", "ZZIzJyvLFU13P8nw"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key '52fS9lIuMS3OzrWq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'WU7j8U0sCHCEn8lT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'ZvdMbESVO8BQqCHc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'fkf8zY7i27bR8c10' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '36' \
    --query 'hKYBPGZ4yntxqnFh' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "WzAu55ZntJ5GowX2", "key": "kYA4TzzRAKlBjmtF", "set_by": "SqMkdBO5p7RNyPIC"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key '1wfCEJn0msBDpm3m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'YRVF2eCsS4yErMNv' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Y95ic7bBAamBAXZH", "file_location": "fsND9gP33SEptL2a"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'G0AtK9LbPimiyEU7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'BhqJl5MphwfWfwZd' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "rkGUer56lNUAmhZi"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key '1nWKFsX0KbX8D8cN' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "qRODQBVtfZBszs5Z"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'cFudIbHhvIXW5fht' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "KoA0G0AoJanM7auX", "value": {"MDaqO60zN1Hr61l3": {}, "xX2m1b0nVaWJRmOs": {}, "eC5W1OeGqV7FAtdp": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'aErWPCDxWYT7tqi1' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "fEv7gOmD6OjMKv12", "updatedAt": "5duSmBgLhqqzxzrc", "value": {"7ChbSxTywBv3HhVk": {}, "mzBiUFCYGHwpOBzM": {}, "gtXGcoun24QM6rzd": {}}}' \
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
    --body '{"appConfig": {"appName": "45pqkxCdiknoNlOa"}, "customConfig": {"GRPCAddress": "fu5Sf3wMzaVjHf6F"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "Rkdb0bclIAP64eFp"}, "customConfig": {"GRPCAddress": "RYyczN4MxDH9Lp6k"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '2fs039ngTWsZu3yY' \
    --limit '95' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'ypBUvh2P7vWtytO6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'enfUhnw5bz1iQ64L' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'gb7h40mgw7YKJ3B4' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'T3SSHT9PKSs9B1ez' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'donP8Jct5hdyQava' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7HvcthndYo0a69bL", "9wbzgD7zFC23PeND", "XD1SpuY380Xf59YR"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["cQYabHSenjI2Rkdi", "yLYwb34j9jUmurHc", "YpeHHwOvk0UGkX74"], "user_id": "jTeZs9vlAXouxpcu"}, {"keys": ["2MOq9rPXliXFT64t", "LrGWWPg8Ty7mNYdT", "NrsAiEM5j7Pyp7j0"], "user_id": "jYy3PbrDeeKxuS5l"}, {"keys": ["oEul8C8jyIqXMw3f", "cUODVN0xo783SOxO", "jnzKYiBqW2Zk8vwH"], "user_id": "dvFSkFFnX1MO01rw"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'aL5SRhK27Ehxw8Rp' \
    --limit '99' \
    --offset '38' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0lTWwyurQE7k8211' \
    --body '{"keys": ["LmONIBo5l63qSKsd", "4mJTxGIDu6dIBgTe", "waHBordj4TFc1EEH"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'TVIVg1xtYJm1mC7O' \
    --namespace $AB_NAMESPACE \
    --userId 'Oxh6nPyFNANx1oJw' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'sD52LBt6Vh6lJjwI' \
    --namespace $AB_NAMESPACE \
    --userId 'QeIMv3yLvQ9ME1CM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'rtDY5Zk8z7ER6Bhe' \
    --namespace $AB_NAMESPACE \
    --userId 'Es3OpHrT8yY8eC7Z' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'R94to6ickiWZpnxK' \
    --namespace $AB_NAMESPACE \
    --userId 'tMl2xqpAbMOdKaLc' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'N9W8GjL4oeC8OmWw' \
    --limit '44' \
    --offset '20' \
    --query '74ONwzuxy0BFeOja' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eGfVIucmN2BwAjOJ' \
    --body '{"file_type": "009otPRsIgfpNQp6", "is_public": true, "key": "RLRXwvBsPkF511WF", "set_by": "G8Hcztv6Js4XIJdj"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'xxyVCWj0XlqgdXaq' \
    --namespace $AB_NAMESPACE \
    --userId 'GJbkZhjf7tmX2ke4' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '40UtpnVpyfygGX31' \
    --namespace $AB_NAMESPACE \
    --userId 'AJqSAboE6wplM0do' \
    --body '{"content_type": "xuNN5HLWfnCwl416", "file_location": "eC5ddT4W3dK6Viy7"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'cZIZoNgAY2JFBDea' \
    --namespace $AB_NAMESPACE \
    --userId 'B9AMn68agGXEnqa0' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '9eoEg0YpqWRpuU26' \
    --namespace $AB_NAMESPACE \
    --userId 'dEKshrNzTijVRJ4W' \
    --body '{"is_public": false, "set_by": "NFDVX7gAaRohcWnC"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '2LMFFJ9mZGMQY71q' \
    --namespace $AB_NAMESPACE \
    --userId 'cElcdQjfuWN4LQYZ' \
    --body '{"file_type": "8ra0W24vci66LtzL"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'Wf02V0SZO7L6sRwY' \
    --namespace $AB_NAMESPACE \
    --userId 'iSBZi7tDVTU9wTqu' \
    --body '{"updatedAt": "uone3GKkOnfcnsRg", "value": {"VTHsJycGDXd4y6CR": {}, "XCYX53HQbY5Mq4K0": {}, "uidSmuWNj1ywHz3F": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'nAx7UpQXvYWHAe5a' \
    --namespace $AB_NAMESPACE \
    --userId 'E547f5A5gWN4napL' \
    --body '{"set_by": "kdksp0cZ9AvKkOI2", "updatedAt": "bVWWfeprYn2vT71P", "value": {"wUprw12Z0DS2lFFr": {}, "CwhLhsVoYPix35PT": {}, "tme3jUHLSVyErpk5": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'vgGAYss2vlw185OE' \
    --namespace $AB_NAMESPACE \
    --userId 'CDgYJwjAz7Atwwll' \
    --body '{"set_by": "4vdpGpvdOyzIbLm4", "updatedAt": "ml1mvz1YhHoFJRmP", "value": {"LGO2ksk0MMLOttT2": {}, "BFKyZ1fHnDniGXZz": {}, "Jh4c3076r254DoGv": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'Lo7LZk3wAQZWhpfO' \
    --limit '27' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'Hw37vS4z6NkWlpZ3' \
    --namespace $AB_NAMESPACE \
    --userId '0jLWbyWkzSICK4Xo' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'T9LNkaPODk1LdxiS' \
    --namespace $AB_NAMESPACE \
    --userId 'Gpo4dpBjJFR1HGzT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'DshMjUMDLY8LnLf2' \
    --namespace $AB_NAMESPACE \
    --userId '9Oj8vcoM1FnBgkk0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'iRbI9do81XNQV3QK' \
    --namespace $AB_NAMESPACE \
    --userId 'ewm8Lvccu4ghZvNw' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'qxOr3IkfKU6SYqMz' \
    --namespace $AB_NAMESPACE \
    --userId 'arYYu56pXUrnIGDi' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'pqkcUdxZVFAf8HQI' \
    --namespace $AB_NAMESPACE \
    --userId 'iNCkgoYi6Eegg99G' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'jTnWVKuuHMwutgSs' \
    --namespace $AB_NAMESPACE \
    --userId '0MrN2VR4f33DeyiX' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'mZXKyZL6oVNJzWx2' \
    --namespace $AB_NAMESPACE \
    --userId 'TBvsEvByNqdFD5gI' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'BtcGAM3u4vShxlQl' \
    --namespace $AB_NAMESPACE \
    --userId '5skzgldaBEvglnYy' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '2' \
    --query 'IISAWZhOiIo8XLEc' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "aum602CBhzM1lLBU", "key": "Ae7JQSWTzvFrU6mP"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["OaBsk8aB3eoH8u1p", "MtltrO48iu3M8ANP", "JOLdvcS1WYzzpXjI"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key '3y7AHVN3PdLx1aGZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'jLtZhp3kpWkyyOpp' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "5VGpYZmQ8RPJesEM", "file_location": "V5Qzo55hxD611yHM"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'baliafZOh1VrLyBb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'BvPkcz2Z0Cgic59R' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ltoeKOqdDYjqw0sS"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'hViRcoqt58QpA3tr' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "xakKC4oh1d0Gud9i", "value": {"hw1us4WNuvv5WVf3": {}, "n1vIeMiomIuoef5u": {}, "SHRrCPKh8Esp18Aa": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["0cRY4AXQHx1yGUfG", "hHkjbUlw5gicw6nC", "OhUW9Na0IOBPqrok"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '3Olp5apbNK38auJe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'TIW62nyIDZbOkQUV' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'xnmGjn0qpC301lk6' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'DuUwfyOG2b2nUaNx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'fie10Bp4RIlL34mZ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["b5E1jiNjCNC3YztQ", "nxidG0MyeZ5QuHLz", "KXeNfg3MNRBb8ode"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 's5jZPXsBAMcLvEvu' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["QB6wCgcnswYTSs4E", "TRCmZCgyCdMF10vM", "VZHPCgOvxBcleLLF"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '95' \
    --query 'I2tDn78Nrqhstp5K' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["OaTmqF5WLLATS1D1", "uCYlF85APtuhYDpD", "2Kgo7HKSm0b9g9Z7"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '77' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["CZ5bGLhyQyF1xDi2", "1FMM6YDmm2x6SAg9", "8sWIyfkJmkUwBCBX"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'Pg5a2TaiCzNuUFor' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'GMqWYNPE1EJqvtj5' \
    --body '{"file_type": "G2D8uIvwxVnoGUFD", "is_public": true, "key": "6JiBN6agcouF3SPo"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Y29SbpEXDBP062xu' \
    --limit '39' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wYYgqXPDWBoTzfHD' \
    --body '{"keys": ["AK0MkNhqRdI2zdIq", "Dz2cex2H8YMfLS6I", "0Hfr4Rc86yfNSkwe"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'yuMd5Oks7f6CR6Ir' \
    --namespace $AB_NAMESPACE \
    --userId '1FmP1JTuc1Z7WWZQ' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'GMhxEiMnDaGzhKNL' \
    --namespace $AB_NAMESPACE \
    --userId 'LkQC1pYGZ9SqJuyX' \
    --body '{"content_type": "tPdJ4Uclmmh4pght", "file_location": "mvfjNikXlfqmDIOt"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'C8z1Ai23FdmQQTNG' \
    --namespace $AB_NAMESPACE \
    --userId 'vMt96dqWdO9aZuo3' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'LoJNkZDhnxszkP6O' \
    --namespace $AB_NAMESPACE \
    --userId 'FSOZFwkVSs7IbfdM' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'StkacO7L4h2HX1rW' \
    --namespace $AB_NAMESPACE \
    --userId 'hsWCYLaxibv5gxQf' \
    --body '{"file_type": "tx6L7wozpfUpwagi"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'aKarXQ8KBZUFbigK' \
    --namespace $AB_NAMESPACE \
    --userId 'f2b8ssnVEighSMZO' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'FDnRJCnvCswCUDW7' \
    --namespace $AB_NAMESPACE \
    --userId 'foI08AU7RsSMAiIb' \
    --body '{"updatedAt": "vXSULy2ha3LXH9Rm", "value": {"Cz4kvXQNEUUmm7DT": {}, "DSUErRlJ4Sj9YMNW": {}, "dJgFkrQje6ojU6Xk": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'RPsKddJiaprUwxpK' \
    --namespace $AB_NAMESPACE \
    --userId 'O9tWkBvDwt8ZQaaa' \
    --body '{"updatedAt": "YCefljaMkCMfQpdU", "value": {"GXfrojTUDsmiAwUK": {}, "KRNNbij06WP84fld": {}, "cyFgX5hmE6hTgb9u": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'xyi6X72aZ2krZ9pZ' \
    --limit '29' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'zumLpQXcjuex1dfW' \
    --body '{"keys": ["LZTgribBfW6CLxfy", "gcskmUYbJM8inZiD", "ibyXiqxqDelx4UNU"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'H2UQIkQolqZavlun' \
    --namespace $AB_NAMESPACE \
    --userId 'wl3x5hIPs4Txnd3h' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'kfm0esRuR4sXdj2V' \
    --namespace $AB_NAMESPACE \
    --userId 'Sikxf2LtZGkfcAKt' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'BXieI62P2d65Tr6W' \
    --namespace $AB_NAMESPACE \
    --userId 'GO8ZUPL67Q2MqXlQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Td8M6X38rBuUCH5y' \
    --namespace $AB_NAMESPACE \
    --userId 'mTGnj8dCK82THwun' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'wgo9k5rbAPCqVvI8' \
    --namespace $AB_NAMESPACE \
    --userId '98HAhnFXCsJ6s6A5' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'gBUpoyQiooJDgDm6' \
    --namespace $AB_NAMESPACE \
    --userId 'aJVOknq1zlb3Z9OR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'PQW0kQ8tpR7TaHcs' \
    --namespace $AB_NAMESPACE \
    --userId 'TX3t9VC1zaFNliCM' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE