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
    --key 'xbBgD7nBsMmwnzMV' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "E3nvHH2MYdUc6CHX", "updatedAt": "ybr0yPiBmWBNDV61", "value": {"V8AxS6stefvI5htO": {}, "LamU7171LTAAo4KF": {}, "ZQIdTcitqaYmYRRR": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'XJXNmgU067JYfXAk' \
    --limit '99' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'lrj39aXXm2htVAtt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'RdjyoOFAnncAvHmx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'ZLZzsYK79QhSHT4v' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'ZfwXsyWpy6azAZdG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["x3GKvCOjyGuHJdK5", "HPSponMxgF3geMWV", "Q2R1u1tbp39w5gpW"], "user_id": "9dyjf4UgsGrjfuqW"}, {"keys": ["gtGy8Ivm9S5asAHW", "kgB5VKUUJNsX4L65", "xYDfZhE9LtKMJJXm"], "user_id": "JOfEX6BIJxSE0cJz"}, {"keys": ["GXx2IpjhpMzMAW5o", "mk1fjX1GuYT86F15", "Vtyxo5CZhtModM8k"], "user_id": "heZhf89ZXCdvf59A"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '8CU4TwwMXI5NRW8w' \
    --namespace $AB_NAMESPACE \
    --userId 'dhAPrMGYBn8Zprs9' \
    --body '{"set_by": "f0bdp5WuTjxCxEhR", "updatedAt": "uN5KWZl6RsYSoSW3", "value": {"hDzJlkW4uH5P7wiI": {}, "HcOAgBpTFrKMiLz0": {}, "CmrG2gve7E0TL5WA": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'RVhZsvElxeQtlSVr' \
    --namespace $AB_NAMESPACE \
    --userId 'BOTLe80PVBpfyFFd' \
    --body '{"set_by": "3mOoZJrSJEeVMc7K", "updatedAt": "WSiuGUp6uJceRJin", "value": {"Q3hE47828H5iF1ii": {}, "TL84QkxxunKMLKnA": {}, "SDn2yT4gAUm7QoDK": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'eEZxwY6dLnbFZOhq' \
    --limit '10' \
    --offset '71' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'RLaRbNSyBib3bCbE' \
    --namespace $AB_NAMESPACE \
    --userId 'sdBbxRPg6CTveMnc' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'rtnMFyPzBTOBrMIq' \
    --namespace $AB_NAMESPACE \
    --userId 'zsTJxeMGdnxXtBsm' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'iLuns1iW028JOf6c' \
    --namespace $AB_NAMESPACE \
    --userId 'vNzUAnsstzaKctG3' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'LAnXEHhAikTAMCik' \
    --namespace $AB_NAMESPACE \
    --userId 'HxmpmjLLIqqQm1P7' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'sYjolOWH0OZXrlRD' \
    --namespace $AB_NAMESPACE \
    --userId 'nBNsbAxukxHu9XJK' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'cmRJ80hAgxJPQznH' \
    --namespace $AB_NAMESPACE \
    --userId 'fV09gKm19poVZOh1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'uxSayYoa4sQn91GF' \
    --namespace $AB_NAMESPACE \
    --userId 'gly1VGEapMdqlWbw' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'STbJ5VHdywbVui3O' \
    --namespace $AB_NAMESPACE \
    --userId 'LW1T1QZXREGNCaTs' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'M2VRWWWIUV8OXj0N' \
    --namespace $AB_NAMESPACE \
    --userId 'vHy64kSW7MylMvrc' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'pPetlzC6SK8mZdCH' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "WxE3ICouE8meVOG3", "value": {"mQdenbry62wcfU3h": {}, "GWLTFp798798yITr": {}, "kTOZp27ia5qXWU46": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["WpidREHgiCXiHWAK", "6bYzAeqz79vrbvLx", "sEGODsJc7t3BJRcw"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '1PqlRfb7qnE67syl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'Awx3sbqd8nDTV1Oe' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'B9xT1pBVkImQL38Z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'KEXLCIHfHcZ29204' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'Sr69sUg26pbCorTK' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["MS0s8x68YXtHiBNJ", "HlVgu8zUiW3PJMqq", "0MGa1bpcbfpudu58"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '37' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["RoidQnE3L9gfQeoK", "KYtcMMB4aXjuvGWG", "9r5VolyzSxOunne6"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'z9SStwEwCJA9Ps6j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'YUbLh6JVH1uAzLMm' \
    --namespace $AB_NAMESPACE \
    --userId 'BRKtgytGIyCRuXE8' \
    --body '{"updatedAt": "qdU463AHYEOuq6JK", "value": {"wwjplKcSUPlvAwIC": {}, "SHSL0XVrW1tKYZek": {}, "YLuGfrtm1TcIfKWX": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'japnBux8VTxXQb3W' \
    --namespace $AB_NAMESPACE \
    --userId 'WYxMpsw7c8UZqmlf' \
    --body '{"updatedAt": "bk8lh4jhIbbNbYtt", "value": {"MvnHDPldBBsNw4zX": {}, "KlTFttmebHw7Fftv": {}, "bg4M6baOe9TbtQwH": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'rMY8TeI9e98s29w9' \
    --limit '97' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'f5fFMIPkXpXloE2E' \
    --body '{"keys": ["gNUpTjS773Wc3dMP", "yTzCr2RNFqysnWPz", "iXkTtIjy6KlR3Z8a"]}' \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'jT8VG6bUHhNIjTJ2' \
    --namespace $AB_NAMESPACE \
    --userId '5Qsje6t0iGpSJF1D' \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'dv16Oq5hKHHCmUKq' \
    --namespace $AB_NAMESPACE \
    --userId '4lc4RCvMZlp7KxW6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key '1bmriKEIbv4GMf9T' \
    --namespace $AB_NAMESPACE \
    --userId 'S9jgUAlciXeqbE0J' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'B2mafaigfFomTsOu' \
    --namespace $AB_NAMESPACE \
    --userId 'x50MlQGHP0vQ67t5' \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'UqszQ2uMe4kDczQV' \
    --namespace $AB_NAMESPACE \
    --userId 'oR1oBUPWL2I0hQWq' \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'ertsM8bMxEGnWCqz' \
    --namespace $AB_NAMESPACE \
    --userId 'U6riwiYGyzD5woDG' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'pakIKD5I5bVtMjh3' \
    --namespace $AB_NAMESPACE \
    --userId 'gyWHPgkpTQrLbYDn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE