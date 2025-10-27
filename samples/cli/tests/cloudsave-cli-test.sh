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
echo "1..105"

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
    --limit '58' \
    --offset '93' \
    --query '54Bh4D5oCAdL1z0J' \
    --tags '["rXJYfn7CxxlS3WiC", "7G8UQRNq6Lzz8q9s", "Vy0kQLxQLmXROGDy"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["6dJXKoFB0AtHVaPU", "1jdYnaEUXFYgJwXr", "oSAFKkZTeTCiPrYz"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'tYNgIm19ArNNJPmp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'K578oZ5OnhS2zTuD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'Av8cQftwJQO9mo1k' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '3Sep3NTOdLHSGEyl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'LYBh4rx9ZhZCUSI5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '75' \
    --offset '68' \
    --query 'ttPpweJprbPJOO8x' \
    --tags '["zxtSPOA85h8Nk4XC", "ADK5T5Y3aBurbbSd", "wbRE7skb6ORS2doL"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "P2QHUk6k0ONT156Z", "key": "dOl3kqcjfLKIVF8z", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1989-08-09T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'Cks0gIpIuDbnTNZc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'UpVOGyrickOXF7T0' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "HRugfybqQbjAoMYu", "file_location": "Oc3us3RJuLICWVYH"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'IATx3AnZlnYNt13n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'agK3tJ1FiFyKbN5N' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["HtEsrbSeZrhT0iEC", "8K4ZmqHbOUT9TAvE", "YqyxHDV9sXT8I1lK"], "ttl_config": {"action": "DELETE", "expires_at": "1989-07-18T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'QVAlylSTm7dVfpDQ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "mhagzEa5GKnpvj0t"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'igR1UWke7DHbGThy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'C9Bc7nx9xq4pD6oc' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["ybA3Cb6gEEQVIIV0", "WQfBRI7gJynWga6H", "dDIywFjMQTWS37n7"], "ttl_config": {"action": "DELETE", "expires_at": "1985-10-05T00:00:00Z"}, "updatedAt": "1972-07-20T00:00:00Z", "value": {"5Zuk3if897pTsBuZ": {}, "qB3yvHZ1wanTpbOm": {}, "jH6ENAxmLLdpT8jH": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'shXSQ3j1VU6LUQ0a' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["ZloFhjjxslwL9R3H", "1Oa9BDgGzcQrh16q", "MuThtM35eifRMWws"], "ttl_config": {"action": "DELETE", "expires_at": "1994-11-05T00:00:00Z"}, "updatedAt": "1998-06-08T00:00:00Z", "value": {"7YPuEqdmb0oklknx": {}, "5QT4vNZI85wJAjAh": {}, "o7MPgmYnMOyfKaAz": {}}}' \
    > test.out 2>&1
eval_tap $? 18 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 19 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'GetPluginConfig' test.out

#- 20 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "HxWMMIFiWzGFLfJ3"}, "customConfig": {"GRPCAddress": "pju3j9KS5HDidASP"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 20 'CreatePluginConfig' test.out

#- 21 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'DeletePluginConfig' test.out

#- 22 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "195RtHURN0u8BM1Q"}, "customConfig": {"GRPCAddress": "xeM0XIbFjEkOdKEh"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'vwHprPVIUWHzSqqp' \
    --tags '["3l9Am6pnTQNc2rah", "HXod8IXZFowMxiW2", "Tf9c7GQqI0pbGf7v"]' \
    --limit '13' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'ipCzkre0DnaJdvQ8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'R9346OAScQIS0PJF' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '5ggPYLmdiK6LXYVO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'pECsPGrcunm7T133' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'OB4kZ2potW99g8ye' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '75' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "7pDRJvEVLD0JJpRS"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'ePEWq1PgF5PpxwyZ' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'BRy9I3jhJIv2Qg9W' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["otMiEM3FAYdM709U", "mGHcwUwEOugDjrqr", "WCXZ9oBDqHfZhWwb"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["U2FNynfEkdmhunIq", "t2KfPi11joksxd74", "voAOnOoZld90uZD1"], "user_id": "BxKwBI4M3hB6JJvl"}, {"keys": ["sDcSdx9te2N44hrF", "v0jBBjJUG2wyQbKk", "KhNSkaOqMA9JTqH1"], "user_id": "4Xo4LdkaInyknwmk"}, {"keys": ["hgtCmniAcUXIaJa9", "YpaOPiNduyJUEXJy", "yNohBKGrSLjHkAK2"], "user_id": "q2rpC2Cyp73nNc79"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'DNQnKluqG6lw8vYf' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "iry0LU2XLxHpMxJz", "value": {"fBiXdL2rnejCFWI5": {}, "gK0EwpfkP5ldXqqw": {}, "6TMLdnoluKXUoSmP": {}}}, {"user_id": "CwGfXjd5bgCJDMk4", "value": {"4s4xuTgE7DSuVSZ8": {}, "rlCQuVukYsDRbyQB": {}, "Tr5pq0eJGLPq7Xae": {}}}, {"user_id": "xtHvnVsrCyJCbE0S", "value": {"o0l5Ta64XFTRikus": {}, "KjcPrCmcQixoWQ9r": {}, "7gLNVF4fSt3XyhXS": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'TG9Vrclj8tgxeOdH' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yeqwrcbj1dn3EPnb", "Yotd0KIRqzy1cFdP", "HxWXrEgZpXnfUtuf"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'HJwyXNM9HlITuKyN' \
    --limit '38' \
    --offset '77' \
    --query 'FC5vb3krdYBmRk7E' \
    --tags '["pe5RD65xbcGH4bQx", "r9YYQfHD9hR8N40L", "ORiIdJETCJ9vG699"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'sY4TW39jzQtewj0I' \
    --body '{"keys": ["CMVqn2K9IENSMbaw", "45R1bxeKdJhCV0o4", "MadDP6FpxD4zDpDb"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'QLRuXF5ccXsq0nUc' \
    --namespace $AB_NAMESPACE \
    --userId 'OjWLNe14yyi0XiZv' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'gfyyRsh8cPgiagxX' \
    --namespace $AB_NAMESPACE \
    --userId 'XfLSUUOGGocRw5tn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key '7b7DsuVaBECaVQCP' \
    --namespace $AB_NAMESPACE \
    --userId 'ESucZbOZgGxGTyah' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key '6yfUL7csqHCUzibm' \
    --namespace $AB_NAMESPACE \
    --userId 'Gn673f0akh7uMxBP' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '1C2uJCZzPui9u0qB' \
    --limit '89' \
    --offset '66' \
    --query 'mUV7qvlGrEFXfEnV' \
    --tags '["OzSsEARB4s8cLld7", "TV89AmwandRcPnwX", "vQ3josAFxAKpcVyQ"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '9BeQ1d6mvKEQn2Q0' \
    --body '{"file_type": "twYsLv4qZHivFDpp", "is_public": false, "key": "gEEZW1gx6rR3rIFz", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'z6ojIbtdzs79Utw3' \
    --namespace $AB_NAMESPACE \
    --userId 'OfodC6lRVAF81h7U' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '1Z3ifj35rbBbVG2H' \
    --namespace $AB_NAMESPACE \
    --userId 'VbmrZtFpnFU9Jyp4' \
    --body '{"content_type": "cxLFROmHSOtFBMsA", "file_location": "omdjPAPSFQUSJW0u"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key '4COrqqMYeH3k3cgl' \
    --namespace $AB_NAMESPACE \
    --userId 'xBcs8k5gCGeWO2DY' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'gbVrEuekayWgxFYe' \
    --namespace $AB_NAMESPACE \
    --userId 'FN8Kd7UWFcvmQm4j' \
    --body '{"is_public": false, "set_by": "CLIENT", "tags": ["U7rfuDr94gjUblvP", "SMxNa2kc0gN8edG1", "jfPKu4xN4AyBviMb"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key '9ZASUesFcJzXNvoi' \
    --namespace $AB_NAMESPACE \
    --userId '2xrKArIdTqt8AW01' \
    --body '{"file_type": "DCrHp5gqp4hIvYe8"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'HkXXvvi5zssmxNUy' \
    --namespace $AB_NAMESPACE \
    --userId 'IVkm5YpFC9TKUfgW' \
    --responseBody 'false' \
    --body '{"tags": ["PFu7mE30YgchKvSV", "FQ4cMgkSJPL43WiL", "uwDywnc0KfFU1ZBu"], "updatedAt": "1990-09-07T00:00:00Z", "value": {"RBu5L0RLMUw1oreE": {}, "gTIeOJqegEFqBDp0": {}, "Iw31GHrzQkSeIjJ0": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'oQjKAbovkCxLNMcf' \
    --namespace $AB_NAMESPACE \
    --userId 'FQh92Mn7EIiqWb6J' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["1WAHQltHdaf2YcoG", "7U7xMlImowbjeYox", "4wJIe8QgFV6eLnwP"], "ttl_config": {"action": "DELETE", "expires_at": "1983-02-09T00:00:00Z"}, "updatedAt": "1992-09-06T00:00:00Z", "value": {"9uxKSKUNOIHWMxX0": {}, "2Yddo00Xonc4weVT": {}, "PJKH0iGYrs2AVLr7": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'wxTiXJFymAHBOirV' \
    --namespace $AB_NAMESPACE \
    --userId 'w75Hgu0jTgOyQMrF' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["daokUsFUVOqfSXXs", "KUsqMqJDqpl3V5iq", "8cmb9mM9B5MLPjK0"], "ttl_config": {"action": "DELETE", "expires_at": "1976-06-22T00:00:00Z"}, "updatedAt": "1998-08-21T00:00:00Z", "value": {"U2dEbt9BpSnsrdPF": {}, "u6mm3e5fkwn4AXDk": {}, "f0Cdtld5JOiMIalg": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'B92qjT9w08v6onCY' \
    --limit '37' \
    --offset '81' \
    --query 'xALEB7ibvswHi1Jb' \
    --tags '["J1POugNvwLaxyS6I", "SNCQg13T7EHNLhBi", "fHXAe2M6JeDhpFaT"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'EDvXW28jTbONAcjg' \
    --body '{"data": [{"key": "xdK11kWsd3MRL0DF", "value": {"OXRtBcBQYRWUgWXl": {}, "c8HB7z3EuP0bk5Mn": {}, "JXs3h9yWTjsTgfHO": {}}}, {"key": "7Xa0SVF2SMLDEoZ6", "value": {"aj03Knui5WGlOtFz": {}, "8TiDnzaFCODamBx4": {}, "ndCbRrViYz6Su3qs": {}}}, {"key": "fPYPbGdHu4dJuGV3", "value": {"8mV4PNnWwCDXtn51": {}, "B316nqiLK78cSD8I": {}, "j4HFVCQGNd40TrjE": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eA0qUQRttS1DbuVD' \
    --body '{"keys": ["fIzmRREmzhMGmbwE", "wgmaqfLBK3uHwEzV", "PXvx7Gwjo9zjzixO"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '5bKNpund6tkhbsCy' \
    --namespace $AB_NAMESPACE \
    --userId 'rLUZQcxflZoLo62i' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key '7EIv8xcG1iZFT5EE' \
    --namespace $AB_NAMESPACE \
    --userId 'gGRqNl40cRu5fyPI' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'AtjJC090VOrx9Myn' \
    --namespace $AB_NAMESPACE \
    --userId 'hY2C5c1RYaQQ0pV9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'HZ9GWgTmrGhm1bzf' \
    --namespace $AB_NAMESPACE \
    --userId 'UHlJYG5MrpfVtbjj' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'Jmo38ihjbF1GgwOk' \
    --namespace $AB_NAMESPACE \
    --userId 'IKuRqRMTvn8Y6e6n' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'MSbiJZ7fxF3Bc84m' \
    --namespace $AB_NAMESPACE \
    --userId 'SP81bm4m4ju69KBF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'Cp1YGKu3qV8kpGqO' \
    --namespace $AB_NAMESPACE \
    --userId 'zPql54uXVDvwmwZU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'Hhmm2wI5MJgRYSOB' \
    --namespace $AB_NAMESPACE \
    --userId 'WU4idpA1aYyatsG3' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'PlxjSpzSFAKCCvpz' \
    --namespace $AB_NAMESPACE \
    --userId 'BOFvSrA5ry6FQzlf' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '31' \
    --query 'gzJw9bL4mxcxs4Pw' \
    --tags '["oPVf5Jxy0jhP1zCF", "vvpqeyZRgOqqhq3h", "6JQbRg3lLF3JBCXY"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "m5E0XZAP4rKjBM9n", "key": "uPlyqxrO5ydAMuyc"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["62oRlLIGqO2fGc66", "RzLpUvqhcyXR0gs5", "l5wuEoQQXnH55FIF"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'WqYsfMaidIul59xu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'ATeWN3rh1AYpGOTY' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "iCgvt2WXc3jRQBiv", "file_location": "tx2ck60vDiOnfdGm"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'A38DlZJ7pINPFEmI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'ngEUaE8z6jcfhFCI' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "QK8QtQscih7assdY"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'rXrZsj0NS037neBQ' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1986-06-02T00:00:00Z", "value": {"ZTsE18luQ8jhAzaG": {}, "odfKazX7XfkAvtNf": {}, "1FwPsHwePWtJ3PNQ": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["A8psuw7AWtgDwuGi", "aTgT8HYwVjJ65k6W", "ZNTpkyqYilJUGDOH"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'jCnHzsN4ru8bJsro' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'Z7q01w89LFm5XZpx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'XGrVH6P2mBFhUOXa' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'a2AInn1uZ4xUXRhN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '33' \
    --offset '80' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'rWarHurUEBK0vdbb' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cv2CTzeuEsUEAJDl", "UD6aqhPEbPMDjus9", "n5BGBaDEQFh08UTI"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'ycD04M4fi0M3oYpe' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["lNjwseU9LNUVvHFl", "3R81yX0JyDf68KOS", "dOK88a81ITj0ypel"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '10' \
    --offset '10' \
    --query 'CEYuG1HASJH3h19h' \
    --tags '["5gEbPrZwx7Eid8BR", "65KT1tc6cm8JDF6P", "SXC3M5eoaV4sUbT5"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["4g8PCDSLHznDrh4l", "QpXGxROr3ZYeqmZ8", "CvHZ3BSDvaYaUhJx"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '25' \
    --offset '31' \
    --tags '["rizrZ00fimGMZ2bR", "uiiKt2c9tNX99hAo", "xIGUkOV5ohc1U8od"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["cQgaTqc7BBOwMO9d", "EajRwLwq5OyaSUqV", "SqXvCx3NVGtnVcF3"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key '6IlcLamkA79wGPci' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'H0Wa3HmcEa8wJEcR' \
    --body '{"file_type": "0VP7Es1bbE6SdQMU", "is_public": true, "key": "3W8GFlrFImH8ZSLv"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '9CV1m1zk12BOQolD' \
    --limit '44' \
    --offset '22' \
    --tags '["FyTMz4IUSdNBwkrn", "7VxH4A4MM0kobsot", "Fx34rPqa5H7iOwYV"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ZDUigR7na0IhatwX' \
    --body '{"keys": ["BPEz849TBraH9RFv", "PaxXiEnKvfgjMvYW", "J16eP5j8gVxWi2Dy"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'rEV3Fc6klPODN8NG' \
    --namespace $AB_NAMESPACE \
    --userId 'tIXjeOXnt8fVDNgf' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'KhehlFd4PnW7JVxt' \
    --namespace $AB_NAMESPACE \
    --userId 'pQ5grlZo1gFHpy7A' \
    --body '{"content_type": "G9AulgKTfd4mBbmk", "file_location": "YQibFV0HXLFG4V2h"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'hGV4GS32XP4cXBPV' \
    --namespace $AB_NAMESPACE \
    --userId 'GjYVjWcXa2qki5My' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key '7FZn2HkzmklChh5X' \
    --namespace $AB_NAMESPACE \
    --userId 'IPoRHhGjsvp8iLQa' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'KV4CpRRPgnLYtGSu' \
    --namespace $AB_NAMESPACE \
    --userId 'syhYn3Sbq4Rt7nrz' \
    --body '{"file_type": "SBM8ZhhxJrl6Qz09"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'm9vKOCs77j7XwSlV' \
    --namespace $AB_NAMESPACE \
    --userId 'k9DAcf60rxGo04yP' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'pvy1sjmLaBJR4wUh' \
    --namespace $AB_NAMESPACE \
    --userId 'Mv0KPj6jFppO0nH6' \
    --responseBody 'true' \
    --body '{"updatedAt": "1983-11-18T00:00:00Z", "value": {"yE3ADsDK8IsfkHK0": {}, "L12YV51kUHuKFx97": {}, "IsBx65c9uIYYKimv": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'KDWJbUC964Oqq0Or' \
    --namespace $AB_NAMESPACE \
    --userId 'AjVGM1XWOzELshkI' \
    --responseBody 'false' \
    --body '{"updatedAt": "1982-09-25T00:00:00Z", "value": {"55Zr4Yj7kxwuW8H2": {}, "UVI93h1Mqrg1huK9": {}, "6gyZY9KFl7r0kH8i": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'fbL5sntzOa22v1jK' \
    --limit '89' \
    --offset '90' \
    --tags '["Q41wEuKGs5LsVhYu", "DfCW8e8jq6TyBI6C", "iQQgvH3FU52h0Gho"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'OE1ZqG5Jd0lOIgFm' \
    --body '{"keys": ["72kvNHiEA5fFOhgb", "lMvbOnhUhHxJ4keb", "dnseEc0hMwWrUdoI"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'VXcnJXEe3ATQQagW' \
    --namespace $AB_NAMESPACE \
    --userId '4kueffhGIv5q4zWc' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '81GLscMuoiRXvngi' \
    --namespace $AB_NAMESPACE \
    --userId 'yBlpBceYPO720eXe' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'tnefZLXjrsNzoltF' \
    --namespace $AB_NAMESPACE \
    --userId 'hUFvOjdcpzklTrP0' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'hgvaszFNDdwfnPRs' \
    --namespace $AB_NAMESPACE \
    --userId 'Flpqqkmvd4XtzSrt' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '0glJqdIm6MhRcZ3r' \
    --namespace $AB_NAMESPACE \
    --userId 'EaWUGlGTmKV953A2' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'RxuPt7yeCZa4F9PV' \
    --namespace $AB_NAMESPACE \
    --userId 'iEx5skVmAkDFS6Po' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'd5hflov0ddJu3e3r' \
    --namespace $AB_NAMESPACE \
    --userId 'OlpXpGO97SpBoQ6y' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE