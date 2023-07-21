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
echo "1..57"

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
    --limit '88' \
    --offset '56' \
    --query 'XO6J1IjiQyIOWOSK' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["cb99NQI518ruUpzM", "mJn3vArOCGAJessD", "Hr8ME0jEa182Olqb"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'SQOxsi7Jwj58EYWe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'JlaViMFXuRtkRi5r' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'IWhYLy8vBCHaK4W9' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'P44MNgdWZjYgEBiw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'TxgUXMWyPBDrjtWi' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "nATuUj0FzzolxCCT", "value": {"gdYvrGqbGi0nvRLE": {}, "yoTxqK17PMf6wIBd": {}, "aeSV9mmUtUA1885N": {}}}' \
    > test.out 2>&1
eval_tap $? 8 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 9 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'kpViPUv5FEJ1x7WZ' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "vOLwBBwv0WOd1HNC", "updatedAt": "Wi3ma7D5QYIqrhse", "value": {"JWFKGJtjP5vKqvLN": {}, "ICtKWIQJ4oSSwo3S": {}, "DiEOkeOolE9acaZq": {}}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 10 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'mMRlzUDYSghTAq80' \
    --limit '59' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 10 'ListGameRecordsHandlerV1' test.out

#- 11 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'HAUNnK1qoLXFCsuI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameRecordHandlerV1' test.out

#- 12 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'KODyrlsrf0WAKiLl' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameRecordHandlerV1' test.out

#- 13 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '7CdGEzqGWTb1Atq7' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPostGameRecordHandlerV1' test.out

#- 14 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'MQYdnoot3saRGLar' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteGameRecordHandlerV1' test.out

#- 15 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'EibkYleuReAStM5u' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KhKrhGpZcjvUyIl6", "UHRLBcDtZV4SG7nE", "GjcfzTmquAptxImi"]}' \
    > test.out 2>&1
eval_tap $? 15 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 16 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["jV8fsvuAIJgfD2Wb", "RUvmvREF7khsrrpF", "BaaZ63aw0RWGonFk"], "user_id": "3yUoz5g4jdmY7Edg"}, {"keys": ["y1zZ62U3zwyljNwo", "Z6FdMmGSz4ynnDe4", "KwUarigI49zeeT6B"], "user_id": "Tw6Iv3BtwUIhuLpq"}, {"keys": ["gu2PeveI4cs4GN5E", "IRJvi6mE8AYg9DCE", "eZNKhbnKIW6CfotW"], "user_id": "TU2h53XJ9VtyDQea"}]}' \
    > test.out 2>&1
eval_tap $? 16 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 17 ListPlayerRecordHandlerV1
eval_tap 0 17 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 18 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OuxD6Q0TdwZ0pR1X' \
    --limit '51' \
    --offset '36' \
    > test.out 2>&1
eval_tap $? 18 'AdminListAdminUserRecordsV1' test.out

#- 19 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '0w4GQVotyGamxOBS' \
    --body '{"keys": ["6tT093aNLfjRnCTJ", "ZQbkA9T9ITUIV282", "tFyVZz41yP4niU5A"]}' \
    > test.out 2>&1
eval_tap $? 19 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 20 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'izEY4O2p1OtrXqfD' \
    --namespace $AB_NAMESPACE \
    --userId 'dr9mM5CbcYxAXar2' \
    > test.out 2>&1
eval_tap $? 20 'AdminGetAdminPlayerRecordV1' test.out

#- 21 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'neDhJnzVVdH11gfq' \
    --namespace $AB_NAMESPACE \
    --userId '6ASxaaLjwtvTop9Z' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 21 'AdminPutAdminPlayerRecordV1' test.out

#- 22 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'BL5pkDivP3C704fG' \
    --namespace $AB_NAMESPACE \
    --userId '9G6ROwHD6r6DLX2d' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 22 'AdminPostPlayerAdminRecordV1' test.out

#- 23 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'sdqRSoNqlXF7LGBu' \
    --namespace $AB_NAMESPACE \
    --userId 'MJYdUCLtrMIJzhGh' \
    > test.out 2>&1
eval_tap $? 23 'AdminDeleteAdminPlayerRecordV1' test.out

#- 24 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'F60iRixeANTzfAI8' \
    --namespace $AB_NAMESPACE \
    --userId 'TVHLgSd3sxbVoRfc' \
    --body '{"updatedAt": "TEPb0XX6t0hx0QUk", "value": {"tJEfv1yZPR7rkkib": {}, "KOgi6uQtprGr1Uls": {}, "lDVgkWJyA8lM6Vdt": {}}}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 25 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'Aeq3KtUyscWSOAtF' \
    --namespace $AB_NAMESPACE \
    --userId '6oVI85MeKw0nsjDt' \
    --body '{"set_by": "mWjqqRTLaDxSLIC8", "updatedAt": "UdoyiDgByksx2NjB", "value": {"FmcIEaiZ7jGX4Kvo": {}, "KE3Bm3iAv39Zbl86": {}, "FbOoHLtg6mH4zdB5": {}}}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 26 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'yyG6TJdyxGa4qpuw' \
    --namespace $AB_NAMESPACE \
    --userId 'tSQrE1ndOOmRPvJq' \
    --body '{"set_by": "Myvofc59TMFxXWdY", "updatedAt": "sfomLTpKESduq5OO", "value": {"SJljfZtDeZ53BukZ": {}, "UfOO0rpO1aF9zRuY": {}, "xRaZmrXXq8VHX4Tn": {}}}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 27 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'bZlKsay1rl0YsfQn' \
    --limit '23' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 27 'AdminRetrievePlayerRecords' test.out

#- 28 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'MQVtBlS8MQpVAe2h' \
    --namespace $AB_NAMESPACE \
    --userId '6HzvPimicLlyE0cI' \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerRecordHandlerV1' test.out

#- 29 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '8nk9srpUW3F3YyAW' \
    --namespace $AB_NAMESPACE \
    --userId 'jIvOKGap8QLxbtz6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPutPlayerRecordHandlerV1' test.out

#- 30 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '260agblJ5WlyjD9E' \
    --namespace $AB_NAMESPACE \
    --userId 'rxxBjglW1SXp1M6c' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostPlayerRecordHandlerV1' test.out

#- 31 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'nztJrkKpSWuEB9si' \
    --namespace $AB_NAMESPACE \
    --userId 'oHX3ZFx4CsaUJ71w' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlayerRecordHandlerV1' test.out

#- 32 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'hUF1L2BMB9xw6UgA' \
    --namespace $AB_NAMESPACE \
    --userId 'lV4WroSIGyOTS6aX' \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 33 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'a2rL4SItisIGjZ3p' \
    --namespace $AB_NAMESPACE \
    --userId 'I8jrmXr4k8WFzPxB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 34 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '8hPSdsYVwtaVzTgn' \
    --namespace $AB_NAMESPACE \
    --userId 'cb0pskZSX0ElZZ6g' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 35 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'uxVzuz0wWEz6yaKJ' \
    --namespace $AB_NAMESPACE \
    --userId 'EJS3Ki4koM59y0IE' \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 36 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'wSUc3TWEKSE434HK' \
    --namespace $AB_NAMESPACE \
    --userId 'FUnjkeZYlTAcW2Z8' \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 37 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'aYZdnXFUfK92dt8Z' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "s54Y3nlO3bx8Ekxm", "value": {"ex8req8zqSkwJmJD": {}, "59up37qI1QycJMzi": {}, "ERFC3ZEtyzxQ72G0": {}}}' \
    > test.out 2>&1
eval_tap $? 37 'PutGameRecordConcurrentHandlerV1' test.out

#- 38 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["aQpamPNs1irxWtxP", "WIvH7UIg1a8979Ur", "mohZP30LiQIBffwU"]}' \
    > test.out 2>&1
eval_tap $? 38 'GetGameRecordsBulk' test.out

#- 39 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'lbNg9inv51S4w1wL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 39 'GetGameRecordHandlerV1' test.out

#- 40 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key '6qbjqzCdnQGddlia' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'PutGameRecordHandlerV1' test.out

#- 41 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'vpIapXynGbp83Wfg' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'PostGameRecordHandlerV1' test.out

#- 42 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'd9qdQHhCmi4lT0Zm' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 42 'DeleteGameRecordHandlerV1' test.out

#- 43 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'BIN35KNtVoQGpkOt' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["boSfoH7WrqJwXNcJ", "POwifQcVqPJRU3OH", "VOK0oA0TMvwJbWxD"]}' \
    > test.out 2>&1
eval_tap $? 43 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 44 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 44 'RetrievePlayerRecords' test.out

#- 45 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["proLuTrfRTojTzJ6", "RnEIuGEWozVa7lyR", "EjmJ4rfvizYdxnOL"]}' \
    > test.out 2>&1
eval_tap $? 45 'GetPlayerRecordsBulkHandlerV1' test.out

#- 46 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'gly45edau3UB8k3t' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 47 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key '2rYhqENXOiLZh0Fo' \
    --namespace $AB_NAMESPACE \
    --userId 'uz4hwxGcSFS9cLdO' \
    --body '{"updatedAt": "3A9xOdwIMxEOvPg6", "value": {"sP2Ltpuz52HgoLAA": {}, "bL4ztgpuinQ1r8LF": {}, "LvMRZpmwqUgjZ8Xa": {}}}' \
    > test.out 2>&1
eval_tap $? 47 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 48 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'cpPgi2P629vG1lfb' \
    --namespace $AB_NAMESPACE \
    --userId 'v4mrYvjqmf7BHbxL' \
    --body '{"updatedAt": "JmVxRfrZnkYaikuK", "value": {"eUefy0Cqbox7N80p": {}, "iDLseswjTRMZ3njp": {}, "BPcZwKuKkKSNCpTS": {}}}' \
    > test.out 2>&1
eval_tap $? 48 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 49 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Usx7zyVtHwgNtPp4' \
    --limit '100' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 49 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 50 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'kuITQM6Usg4UvtVg' \
    --body '{"keys": ["BEvlm18ujziFN29q", "lplstCzxPGdke6Dc", "KXVncLIpaSZzReD5"]}' \
    > test.out 2>&1
eval_tap $? 50 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 51 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'AwtV2hZYJXLMPaBF' \
    --namespace $AB_NAMESPACE \
    --userId 'skRgmjmoNqnYXGAX' \
    > test.out 2>&1
eval_tap $? 51 'GetPlayerRecordHandlerV1' test.out

#- 52 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'bsx2X8MkAB88E4ku' \
    --namespace $AB_NAMESPACE \
    --userId 'h33zHYyOfk2LnDja' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'PutPlayerRecordHandlerV1' test.out

#- 53 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'CTaoDUVdHgqO4x9z' \
    --namespace $AB_NAMESPACE \
    --userId 'wCOS01Ou4sEyuPAc' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 53 'PostPlayerRecordHandlerV1' test.out

#- 54 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'IXcYrNWoW50WsQ2V' \
    --namespace $AB_NAMESPACE \
    --userId 'jjDHgVvzB6B1onxC' \
    > test.out 2>&1
eval_tap $? 54 'DeletePlayerRecordHandlerV1' test.out

#- 55 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'qTdf54YNpG0gTbG0' \
    --namespace $AB_NAMESPACE \
    --userId 'LgybDBjw3rRaPl27' \
    > test.out 2>&1
eval_tap $? 55 'GetPlayerPublicRecordHandlerV1' test.out

#- 56 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'dIy2xdGKYagRNI5I' \
    --namespace $AB_NAMESPACE \
    --userId 'uo2Qvj4iN0yXgMh1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'PutPlayerPublicRecordHandlerV1' test.out

#- 57 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'O1zo6uSqcvETvX7D' \
    --namespace $AB_NAMESPACE \
    --userId 'KHCsZWoZZOJUZAEp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE