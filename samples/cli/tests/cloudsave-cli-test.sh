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
echo "1..42"

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

#- 2 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'Eio7Jfp8x1Vutveq' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "ivQuWM67fM4Miy8N", "updatedAt": "bCpAEHiM4yheM1QJ", "value": {"DGKWVaw9gmIHVJaK": {}, "SV9ZRaUts4glLz9r": {}, "nShMwtJk8Gv06x6H": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'monjVygYoifiLlDa' \
    --limit '57' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'Fj3b67JQAGk6VErc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'Gtl6Yw7RcUN8oqay' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'yv1osNZj6fCiln0W' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'jOfXWylJ8pi22cuZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["tao1y3wsTpx20zPb", "WrA8AYSXvT5yfYra", "ef7A74j7LOxn5otI"], "user_id": "RAi6PhBDgtwlAbmk"}, {"keys": ["nj24PSM9zuHXhwv7", "BI0hWR9fk4P8ioEv", "22qkjyXuSdT68vOH"], "user_id": "eAmLwAGUJTWjjedp"}, {"keys": ["kvIUs3Qxb9cRi36s", "bQbTRsYwJ5hTmlwx", "FaHDxz2zvJ0DCvTY"], "user_id": "aY2cVBiBxwpUQMll"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'psDyZFx3tOAgpDJo' \
    --namespace $AB_NAMESPACE \
    --userId 'aLexuJm6I3IuFZDE' \
    --body '{"set_by": "etcYSu2MtEuRO1IJ", "updatedAt": "UXlgdZlSCncLzbGB", "value": {"80AESxP5QmMTvIsp": {}, "IycBWrmMLVEwPCn5": {}, "tZOal0xHN1444ARC": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'YRCDHNgPvIzvUknh' \
    --namespace $AB_NAMESPACE \
    --userId 'gLduZuOYgDz9ibOo' \
    --body '{"set_by": "AFygzufmjJoHk8yZ", "updatedAt": "vy01CQobfTXD2PXI", "value": {"Pm5CyXxnn4ARs79g": {}, "z5XYAfqNdO55n1Zr": {}, "NvpboBjWXF4S0DdV": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'SmYAK7zrid9zkQbC' \
    --limit '40' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '2tLJ253UXP0lV96x' \
    --namespace $AB_NAMESPACE \
    --userId 'r7od3c5knDuHv8Yy' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '3FrX39rAl5Nqjeav' \
    --namespace $AB_NAMESPACE \
    --userId 'bKZv6FnsTzcrGd1p' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'l58Q2oti9lKPlmGe' \
    --namespace $AB_NAMESPACE \
    --userId 'q2uGJyBBAkot7sOm' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'TZW2ZvAAHJPMTL3a' \
    --namespace $AB_NAMESPACE \
    --userId 'UUkJXEhQ20hpx0We' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'vb4Tt5fxBGjtZs76' \
    --namespace $AB_NAMESPACE \
    --userId 'rTxDnV7wjzkXTxjC' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'EqaojY3D4BaHA8f5' \
    --namespace $AB_NAMESPACE \
    --userId 'raKwTQ2D2TZZvF1u' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'V06UMSrI8CzR0vjs' \
    --namespace $AB_NAMESPACE \
    --userId '7ZgjFHoJpmghsMY2' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'lGAGFtSXp5LrioMb' \
    --namespace $AB_NAMESPACE \
    --userId '8mC4Tq9F5mA21GNL' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'OVdxOrxO13K0Uw0s' \
    --namespace $AB_NAMESPACE \
    --userId 'dlfRcMcaeGprbpwh' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'xRAeYYIJrYj9UUZc' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "fK4j3PjV3LzwOV0a", "value": {"sFdfObkuKQQneUQm": {}, "MhYf0kS9ivxA2Ect": {}, "L30e0X4O0bshHvDA": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["md4MkPeX0yuM06Vj", "omk6MTPPZbTGp2qX", "k8edIMHfg0rJbqlo"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '7t6rKnO94wmqaZg1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'pDQoFnG7FtaINquf' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'JeqfgqlzWQpkSh5R' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'FSrA40oaDAb90Ybl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'CcmmMTYvkcb7wDGU' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NLzfp5CgEA0GY2as", "zyXOxeQdgDc8zR5M", "Qm4rc8wnxqdJHLgD"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["WQKuDVn9GBSBI1Xj", "Iw2aSMw8NLeHPUVT", "LA6ELSqLnK3XIwzn"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '8KLnfy7v0eEH9tKF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'wwLTjl5ZGJKJm7jH' \
    --namespace $AB_NAMESPACE \
    --userId 'pYFrs7LqS0v4HUHB' \
    --body '{"updatedAt": "e19wNC28GDTbLEev", "value": {"5uHUcNSv6tTwLFvp": {}, "FCuim30anOEBIuiN": {}, "eAw5syXo6pcLNlQ7": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'aZ6r9Tgdv5U4rONG' \
    --namespace $AB_NAMESPACE \
    --userId 'ECCOdDgAJPcCNfri' \
    --body '{"updatedAt": "B0fpaav7TROdJbo0", "value": {"ZOBxfbEfvZq0m2pb": {}, "mDfFTEQPZRl925qs": {}, "5JibFYWH6sEZffKB": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'BYsgkFQjdnsRGj3A' \
    --limit '9' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'lK8ebu1Z1OdWjGIm' \
    --body '{"keys": ["vZSSZcw4A6PxGRWB", "FST1lgug7fX1xpcS", "nVnsQo7dDvMLiZCG"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'b0fSuYK4BIGfGpav' \
    --namespace $AB_NAMESPACE \
    --userId 'DId5IGY5VLYvIxUz' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'B2f830otM9xTi8no' \
    --namespace $AB_NAMESPACE \
    --userId '3b1SZ8ClSH3uBF0w' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'v6MqtylvNFKvBfTW' \
    --namespace $AB_NAMESPACE \
    --userId 'rXACRU0imGMr7Kcd' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'QI3AQTD5Nay8B7mo' \
    --namespace $AB_NAMESPACE \
    --userId 'iVyAz4B3pEOEKT2K' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'D4HIcoTYGfXn75QI' \
    --namespace $AB_NAMESPACE \
    --userId 'Ot9DRafhZGD0SQLB' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'GLdVRtPI75xGbYvH' \
    --namespace $AB_NAMESPACE \
    --userId 'J7cFrbivo624Szhk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'Wx0xoe0KD4BrwKpJ' \
    --namespace $AB_NAMESPACE \
    --userId '5aHuITAShdPdvYdG' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE