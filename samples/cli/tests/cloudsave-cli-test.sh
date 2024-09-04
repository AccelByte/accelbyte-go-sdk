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
echo "1..104"

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
    --limit '70' \
    --offset '38' \
    --query '4tvOOFInSRD5eCGT' \
    --tags '["MRhbD8IDocZ1i1Kt", "vW1UGlmey4PXZhWl", "HiReJdWO8jqo5PuK"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["88r1hEWTaquXOkaP", "KZIFwk93lY5yLJGt", "UyShZDVNcKY14ioP"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'jaRIaxH9WddZKSaN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'yi3JwNrrVxVjqFwc' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'NVqucuGd0rDhRJgI' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'N3p06VjjgmsF2OBD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '94' \
    --offset '33' \
    --query 'sA49L3KZjxXbHRna' \
    --tags '["0SEMb69Au0eDYamv", "uvCrDRRdXWxLecj9", "c3OpJXEKeisC4D9d"]' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "9PyC4YEJgOOgZ9t8", "key": "Gkr6ZF5K7BDD8xUS", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1987-08-01T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'dMf9tjHOUXXIRFu2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '4WcHVkQ8mHhgK5fq' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "HqQodrjrZEpUnFZI", "file_location": "1Sp6CmTCoI2c4JEW"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'ueIHneohje0mbC8K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key '45BuEPxS0KY9tSMw' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["BPa0CDgpZQYBXsoY", "BWPFruDHhVZpNGCB", "LjxApFZ3YPYR2Y2c"], "ttl_config": {"action": "DELETE", "expires_at": "1978-08-24T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'UAQ9furuUMv7MktE' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "d0HlsKCczHHj3FIh"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '9PBfgXFT4BhLlP6j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'XklAVIOPN9x7xTnF' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["tqnwKSiAKXZv4RlV", "bwBsGE0ZNcJCYNz1", "oLTLyvkyGFJsfVVh"], "updatedAt": "PIB1hS3IJhieAX1H", "value": {"4atzgb6MhNA2NZm2": {}, "hnKoC5id3NWtHU6d": {}, "nw1aX05AIUH7gCCN": {}}}' \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'A2RYGPSwqHXUy3qX' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["NXABgW5XnavrO4es", "u3QTi4x2b9WS3o33", "5koFRDjXNx1kgL5S"], "ttl_config": {"action": "DELETE", "expires_at": "1992-08-19T00:00:00Z"}, "updatedAt": "ewAZ1H8w6CeFCTpE", "value": {"JORfmesLldbYCeMf": {}, "OS4SVBZPbm94SHO8": {}, "2Dk6MlCdPGapqBKl": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 18 GetPluginConfig
samples/cli/sample-apps Cloudsave getPluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetPluginConfig' test.out

#- 19 CreatePluginConfig
samples/cli/sample-apps Cloudsave createPluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "aTTSziGZsB91VKTP"}, "customConfig": {"GRPCAddress": "KUqyLrQL6IbpsOuv"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 19 'CreatePluginConfig' test.out

#- 20 DeletePluginConfig
samples/cli/sample-apps Cloudsave deletePluginConfig \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'DeletePluginConfig' test.out

#- 21 UpdatePluginConfig
samples/cli/sample-apps Cloudsave updatePluginConfig \
    --namespace $AB_NAMESPACE \
    --body '{"appConfig": {"appName": "pwOb2bsOodRUKFAT"}, "customConfig": {"GRPCAddress": "nOWbSj310yFVlGg8"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'hcxLkry9q8NII6PQ' \
    --tags '["QD9Uonyj2TZKHar3", "viZpmizEbgVGR2Sp", "mM29MtPACyk3NVUs"]' \
    --limit '20' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'JdEcbQRTqDSry1Oo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'ARJgFF78IzDUn194' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'z1l62MiF38HkjzUj' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'FKz8cPuIGy91LdzP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'lG0IkdTkIUX0wzBz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "caD5JW2TejB1JR4q"}' \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'b8YBtVXR917uUh9y' \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'jXQsErzWjBjFQvve' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["DrJ9ZyFT9b2gk0eA", "N9g85XDv1g9Xaval", "jDVOKYCyrkhoQx52"]}' \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["nyNmdez7dZA5EW5e", "Iup0MD2pUZeI5Zrx", "R1ViYineOzTZYSA6"], "user_id": "lWic6Kj3NwssuvJI"}, {"keys": ["8m87W9bILxjElSzl", "dju4QW6TyaVz3h3b", "VZTLWcTfil20Bios"], "user_id": "XX0dZVkLG8eXNbKV"}, {"keys": ["2VaXNzEaSFky1B60", "ZXUI5U7PiZ69OZa0", "fBsd1aBAQpG6HfRn"], "user_id": "TjSvW7C6KuKeQS8G"}]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key 'D0dBc6tBZbwvRFDT' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "d9xHNt2snGiBZq3X", "value": {"Gk7wwOwy3o5fPPqF": {}, "5wMhDqnt4z802MiU": {}, "BmftuxgjVGQyJQTg": {}}}, {"user_id": "aCXox2QnSjDyDNN9", "value": {"LOENIpSY6rbnYCRr": {}, "Fv5CqdbZugWnr1Kp": {}, "VwPpsOKwEde2OLJj": {}}}, {"user_id": "KU8JFiryc29LYXBo", "value": {"LANIy4kuZszEwLFy": {}, "Od3zitFEmXzmzP7s": {}, "1cK9M3bi0ula2rvl": {}}}]}' \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'nurrs0xofMAG9BUN' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RdfgIxHLQDIOUp1J", "aTIueGv4KCc6w0Wo", "si7MH8QuIr6ZJgfM"]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'NvdA9Y7KbCbvJBdF' \
    --limit '10' \
    --offset '80' \
    --query '228MA7MgUD7XZk5X' \
    --tags '["ootLoW5QRCyqJd6O", "LCq1UcWVIYybq3Uo", "SMD3n7HMPHcOXAty"]' \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'dTzvpagvunwkuKVK' \
    --body '{"keys": ["45QIcIEBQzTbajdZ", "C8qEfZHSLngUIz6H", "vQgW8hLsVWv2BkVg"]}' \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '9Vf98guIP1v3WFiJ' \
    --namespace $AB_NAMESPACE \
    --userId '5ibkpbfW4w0na1R7' \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'O6byfWpQCMUVUj2B' \
    --namespace $AB_NAMESPACE \
    --userId 'cyG6LZEqmhQJhQdb' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'mt8ere1fumoLNQZ0' \
    --namespace $AB_NAMESPACE \
    --userId '5oNGAstekVvvo27O' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'IhdcGEMij09H7Ivp' \
    --namespace $AB_NAMESPACE \
    --userId 'W6zXzimr5c8rvig0' \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'FEuDOsAwSsMY0wc0' \
    --limit '24' \
    --offset '92' \
    --query 'zRbjGop3VrMuA5lm' \
    --tags '["yV3cBw1b7E5qrLP3", "oXHQzuRsTqrnZIkU", "Rh90KHeo90q7uLtg"]' \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ved8XWyvjaV0F75Y' \
    --body '{"file_type": "FV585we7E3ZAUnzI", "is_public": true, "key": "wQH6dflDgvpHpwEx", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'mvFaUpP6h8H1PetP' \
    --namespace $AB_NAMESPACE \
    --userId 'NDSjPh1benkr8jVm' \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'zLSWIwqDZldum3MO' \
    --namespace $AB_NAMESPACE \
    --userId 'w9O2rr88cUaS0MBj' \
    --body '{"content_type": "rc8XWRJTEi5ugW6q", "file_location": "FVMMrJrj3PJFH3ac"}' \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'PVQzKqZDoGka3q71' \
    --namespace $AB_NAMESPACE \
    --userId 'fLB5nfjxLgKSqkTW' \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'spRkjbaQ1dzITQEB' \
    --namespace $AB_NAMESPACE \
    --userId 'GsjRPEjsyEH0DKAJ' \
    --body '{"is_public": false, "set_by": "SERVER", "tags": ["AcXRLQWLSXojsqg6", "H4m3PmEjafDkR8nC", "VJloAY7DlINjWRh4"]}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'EkhXHLoC7eAHdG13' \
    --namespace $AB_NAMESPACE \
    --userId 'LzTfC8dd7plTZXDv' \
    --body '{"file_type": "QshBjtlOdn1Bhb5A"}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'zxsbM7cLHShvZXIl' \
    --namespace $AB_NAMESPACE \
    --userId 'nv2lXwzkE1nh1Id3' \
    --responseBody 'true' \
    --body '{"tags": ["LlZfCUpaz3CyXQ44", "2B9hFTxpuD1dOSWk", "x4vRAW8Is84KK1gJ"], "updatedAt": "8QYD7wb5UNybWAt8", "value": {"E3uRECYNhaktUeyq": {}, "cyJW5u2BdbhOAyFv": {}, "yKyqSazBuhjxqp3j": {}}}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key '3AMIAEvoqxyLIZAj' \
    --namespace $AB_NAMESPACE \
    --userId 'zLOkOYJY3CoqQlyu' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["x3yvSWyUM6Jyc6Rr", "6m1F2QwCx7swQ7ax", "eAA90DQC0Fs5wEcH"], "ttl_config": {"action": "DELETE", "expires_at": "1990-01-10T00:00:00Z"}, "updatedAt": "p7PKKwymb8kWluJx", "value": {"7dRXPVPqr0MhdMze": {}, "xsG7EZ1LzkwS9t5F": {}, "8LkRm3keRNASzJzX": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'ktOQklH7jyE1VRTv' \
    --namespace $AB_NAMESPACE \
    --userId 'JsAjL8whj4SFYQHU' \
    --responseBody 'false' \
    --body '{"set_by": "CLIENT", "tags": ["J5l7UIHyPmfKUBUY", "RBXjmbqCdcrPXxLA", "9tmOgMx95YoNypTh"], "ttl_config": {"action": "DELETE", "expires_at": "1975-04-03T00:00:00Z"}, "updatedAt": "KQ3NIyrE0O53Frqo", "value": {"YdTx46Eq4kSqX0Bf": {}, "W2O03dWBeAFAzKjD": {}, "L48QuDugPTGYRFOT": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'EjBpAtgLJCm4Yxnv' \
    --limit '95' \
    --offset '75' \
    --query 'tNTbwUz9nigBnbAp' \
    --tags '["U1KuLQyzjtu5gKHr", "PWavidDAMLvToMz3", "zYqje9GESNOpSZCs"]' \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'gEKBZClgqJm5cuak' \
    --body '{"data": [{"key": "ceWYtZaW1e8euekc", "value": {"h8FwkizEKubs1zMK": {}, "gGOUuPpbm8RWzzGi": {}, "rQ8ilgsdlrl9wZW4": {}}}, {"key": "OXFqWj07cEgtiqKH", "value": {"Uvc6wUITeDvSK4zH": {}, "sqmehQsQ9hUzEqQ4": {}, "nUlEQv434mOq3Z0g": {}}}, {"key": "LvcYBYzL5PjRwLX9", "value": {"LtpqPFLClm6gPVv2": {}, "ge58bBIPNRYtIQ4A": {}, "W311ltXRaMFvjg1y": {}}}]}' \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'QtgughSPGNKZXpN4' \
    --body '{"keys": ["5wMMJwNnRfbtiMvP", "SelKmGCb5cJ8PEfh", "p6pmKM5XuXYzwTmj"]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'rpoo14LiVOasXFIq' \
    --namespace $AB_NAMESPACE \
    --userId 'tppbLQs6bqpaxrIw' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'TmBdZWn5vQqSmf47' \
    --namespace $AB_NAMESPACE \
    --userId 'vQfYKGQqeu8XIyXs' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key '5EzzajU9bEazh37o' \
    --namespace $AB_NAMESPACE \
    --userId 'ycCSf2OjWYJMGaxZ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'EEmQMuZ4kmVlsZSA' \
    --namespace $AB_NAMESPACE \
    --userId 'J6H0yX59uy0VMOdV' \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'wBIc5eW2hMbcJFlE' \
    --namespace $AB_NAMESPACE \
    --userId 'RMLA7srcSfJYlbh2' \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'RuSOfafRMJP2GzAu' \
    --namespace $AB_NAMESPACE \
    --userId 'pnEeQvgU8ITEB4x4' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'i4Z7s9lWHfPEIy8C' \
    --namespace $AB_NAMESPACE \
    --userId 'GnKGJn9qkpiaqe7i' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'ZnLgKW5mHF4tj3Hl' \
    --namespace $AB_NAMESPACE \
    --userId '4ky4JrgbLJZGKoSu' \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key '4XZJJPjtZugP0LUS' \
    --namespace $AB_NAMESPACE \
    --userId 'ljHAvYfwknSpeewk' \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '47' \
    --query 'FX1mKTqOzxAZ4eOE' \
    --tags '["WJatFuCQ6ZBQPH7X", "ke3ZmWlK0g5RVpFZ", "kj5p3SQlBD8TMAP8"]' \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "8hze3ePUaq6PjAjZ", "key": "T4iI9FaLx8fd9QFR"}' \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["xy8pf5NXeP3oB2kl", "7NIsMq4hD80we5Fw", "DBAgixvhKi6cdULz"]}' \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key '2HRCi97YtuIA7GmW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'UMexBmlOOIvs3zA5' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "eonzjvjxv3Wjxd50", "file_location": "mxcXomKifWxdr7cK"}' \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'PdtiJIQY0eVPhLEM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'qd9f2I3e2abSh73o' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "2svGBO28ydfSlDLp"}' \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'MffiuMMMwHs4DePT' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "Tgu2qFq92zyewG5n", "value": {"weIevKX2q1WF6N4Q": {}, "toVpMaUWkZt9mW09": {}, "VAAwKNjGtZHWddaQ": {}}}' \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ybs4sv8nsIX0Mxx9", "FhEap8Z6fTHA9tDx", "AHXsFtTh7OMZihi3"]}' \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key '0dMOCiRw7nTQiecW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'YkzoL0RC40DeAqhD' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key '4rwHTFIEzYlJvLoT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'FyDzk72DpDgrnRkr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '17' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key '6WEuiDE08YW6p3iA' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vhEzitDOviRZtD4M", "G5swIVPgPqi0nAr9", "oaYvmO0oZ6i7qCix"]}' \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key '2ASQeZY9AfYa60yu' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["6fm3Cai1TENAjZ9h", "k5SGymPflTRaPaxe", "C7BDAUKVyb8jcPyX"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '95' \
    --query 'OIPLFlAuszntp3In' \
    --tags '["XeJNiIgtBD8dv9CM", "kLI465ke0zh1H830", "YUvNMXIjPvpOvwcv"]' \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Ur5pxEayhfUlGLvR", "4Uayn7tWI4QmSHLS", "uXqi5T2aZS8pnPgc"]}' \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '44' \
    --offset '27' \
    --tags '["gjawhGoTlXw6W2Z9", "pzKKElrsjnkOs8m1", "JR8LL2wbmFNL3lnI"]' \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["wAaDdGeDIfz6M9yk", "3iCysCtt9YkyKrlV", "68BfVKUtrwWMArLm"]}' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'veqZKxvXvmWWapBb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'D6zn62AYS5hjkl0V' \
    --body '{"file_type": "wt0Jok5Ry18u1QJr", "is_public": true, "key": "bG7zScbvQ7Wh1xPz"}' \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'y3mRl1Zp1gAxaONU' \
    --limit '85' \
    --offset '31' \
    --tags '["aldcub93ckEXL81Z", "csSnCrsJ5DNUALkS", "1uEHn76846sML5li"]' \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'D1DS8CfDc2UzpiXz' \
    --body '{"keys": ["M0m7G7sWkR0uL3WA", "juBo9HGBncnzlLLV", "Hn3brcl0UQYipMoc"]}' \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'MENRKeqnQG3Zvgbw' \
    --namespace $AB_NAMESPACE \
    --userId 'kog8GIWQOnLSHFUW' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'V7I4Z5bPSxhQ4rJB' \
    --namespace $AB_NAMESPACE \
    --userId 'MmdRXW9TuZ3BpU2F' \
    --body '{"content_type": "tWATLMVGoYd6REaq", "file_location": "wrTAgafFOn76Oind"}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'cUDV21m7gT0ks7q0' \
    --namespace $AB_NAMESPACE \
    --userId 'ExeKfbBvdtSYSrSn' \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'fRL2iHmiwEjLknEX' \
    --namespace $AB_NAMESPACE \
    --userId 'ROuc4ZKNKvwEvDUv' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'KkxPWgf7MFDTKMHR' \
    --namespace $AB_NAMESPACE \
    --userId 'q2iwYOZW6tdJ07O6' \
    --body '{"file_type": "q8G7PHhCTim0Ytje"}' \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'ob4sAxIB9uizYXfZ' \
    --namespace $AB_NAMESPACE \
    --userId 'q7x21rEtGQLhhkof' \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'IPmapUpuP08jA3be' \
    --namespace $AB_NAMESPACE \
    --userId '7DzzqORW9TgleZh4' \
    --responseBody 'true' \
    --body '{"updatedAt": "OesCuXGNMUKe8XKx", "value": {"XZOf8KhsHGAr06Vz": {}, "D5KKET8VDw2O7Ctx": {}, "WR5Qro8cvXZJNmaA": {}}}' \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'FmSRXPzkEN4uEkCz' \
    --namespace $AB_NAMESPACE \
    --userId '2pRGrg2067yhQWIU' \
    --responseBody 'true' \
    --body '{"updatedAt": "6PEdc7yP3pOaas9A", "value": {"zw3JbkN1qUDmcjew": {}, "StukgC4ewPgBa2LU": {}, "T0eVuxnir50BcCwl": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wN2VoyAnnJ7MD4D7' \
    --limit '51' \
    --offset '45' \
    --tags '["CfmklV4z7RVgnXVv", "9m3szi0wclfkTv5f", "XnvrIsuCZ6M7ENTK"]' \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '0ppNJNGuflauzQYo' \
    --body '{"keys": ["KY7CndgM96dW49If", "RKSQHaXTcYb7101i", "YubTMIJsvSu40mVW"]}' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key '694BVOzfvCWEpAJx' \
    --namespace $AB_NAMESPACE \
    --userId 'sJKZPXkHSm0Z2sC4' \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'a3Dgku0vF7tDVgFv' \
    --namespace $AB_NAMESPACE \
    --userId 'KLRKIKcXXeg7eYXB' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'MnGAwlSx2TckQY1a' \
    --namespace $AB_NAMESPACE \
    --userId 'JP2ACfBSHqWGahTq' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'MjLp5LtjkyTA4pe1' \
    --namespace $AB_NAMESPACE \
    --userId 'JlQ1L5EobK2nJ28s' \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '7vzOKbomVKpShLjJ' \
    --namespace $AB_NAMESPACE \
    --userId 'HwSWTNbCin8jBO80' \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '2klJ3c4pLXyUh76D' \
    --namespace $AB_NAMESPACE \
    --userId 'ICDoosp4VmkYoaOx' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'DlPDIb2oeVFdHXHG' \
    --namespace $AB_NAMESPACE \
    --userId 't07J3F0kmIVovkMd' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE