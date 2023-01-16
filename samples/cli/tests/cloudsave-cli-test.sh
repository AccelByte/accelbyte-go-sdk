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
echo "1..40"

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
    --key 'WjRjAAt8' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "ZZw4yQUW", "updatedAt": "HrKiFJA1", "value": {"fS9AHjzo": {}, "wMGMjq2P": {}, "ZJqQbi3t": {}}}' \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'ECjVpMIh' \
    --limit '83' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'Luqu4eOr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'zOk6N4Zr' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'SX70RD0w' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key '5B88Ez0u' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["tRs8FyzU", "RnQGehXF", "plS63nS4"], "user_id": "2Y6Kvr4Z"}, {"keys": ["JP5PqFhL", "XqXgT7yE", "2aWEmRPF"], "user_id": "HqJ64R32"}, {"keys": ["Y3jKnMEc", "vevkUoVG", "gxHRlO2P"], "user_id": "twFBsfaz"}]}' \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'ARERaiOb' \
    --namespace $AB_NAMESPACE \
    --userId 'nquumxEl' \
    --body '{"set_by": "3kMx6ijR", "updatedAt": "qu6G4rAp", "value": {"82DSi2gK": {}, "ZR7MwXoc": {}, "slo6a0l7": {}}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'vbmPlqxc' \
    --namespace $AB_NAMESPACE \
    --userId 'OeisQwuK' \
    --body '{"set_by": "lJPX1uTz", "updatedAt": "6obqTJ3p", "value": {"V3WLd1bV": {}, "xAuhWXrE": {}, "LGd5Xx3R": {}}}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'kCpd1KG2' \
    --limit '19' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'f6WDaO8g' \
    --namespace $AB_NAMESPACE \
    --userId 'HNMIa8SV' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'IlrRdwZv' \
    --namespace $AB_NAMESPACE \
    --userId 'yt7WRYPO' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'g755zzke' \
    --namespace $AB_NAMESPACE \
    --userId 'J6nJOePB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key '88VVm1x4' \
    --namespace $AB_NAMESPACE \
    --userId 'pQKwIZ2a' \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'v9cwWqDr' \
    --namespace $AB_NAMESPACE \
    --userId 'orEW5aaR' \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'QadOwLTN' \
    --namespace $AB_NAMESPACE \
    --userId 'V3Uigse2' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'doI3giCO' \
    --namespace $AB_NAMESPACE \
    --userId 'W0fEXgcA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'xBVHbkCC' \
    --namespace $AB_NAMESPACE \
    --userId 'uv2JEeVR' \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'pyp7evua' \
    --namespace $AB_NAMESPACE \
    --userId '3qW0yiib' \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'ovkswwJV' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "uiKWaC2F", "value": {"CjvW9qBX": {}, "MylSc7RG": {}, "9XQunHZ9": {}}}' \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["VWk8nyQD", "zIiNtuqT", "aXOadrRd"]}' \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'wrwfRhml' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'BZjrWt6j' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'pzOJQruH' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'bsMed9Ls' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'rMdA7kYf' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iWVKDAy2", "ozniOdh8", "gtb8ibmv"]}' \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["FbvigaDu", "oY3NnZQ2", "JiDmoZpY"]}' \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'FTD4uwVH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'jORNb2sc' \
    --namespace $AB_NAMESPACE \
    --userId '0bQGluKY' \
    --body '{"updatedAt": "HYBTBB5a", "value": {"ZQvAtCcG": {}, "PysJKQqM": {}, "ZuRTreBf": {}}}' \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'Mitz1ji2' \
    --namespace $AB_NAMESPACE \
    --userId 'ZLYFPLOq' \
    --body '{"updatedAt": "898edfQ0", "value": {"g4x7UU7z": {}, "FpolwzBY": {}, "9TFjQ7Zh": {}}}' \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'YISa66dl' \
    --namespace $AB_NAMESPACE \
    --userId 'fgvJCNHG' \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 's7l38mO3' \
    --namespace $AB_NAMESPACE \
    --userId 'XTWYNPgI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'wL2E76nP' \
    --namespace $AB_NAMESPACE \
    --userId 'Q3Xl9qY6' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'WtF2ui2P' \
    --namespace $AB_NAMESPACE \
    --userId 'Aq6YXVmv' \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'FmDNtYlU' \
    --namespace $AB_NAMESPACE \
    --userId 'Y6yORWns' \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '8xbC0uef' \
    --namespace $AB_NAMESPACE \
    --userId 'SNPDEhwN' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'skYNa59x' \
    --namespace $AB_NAMESPACE \
    --userId 'N5lKupnA' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE