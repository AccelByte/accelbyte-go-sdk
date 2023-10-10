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
    --limit '52' \
    --offset '0' \
    --query 'RlsWxOqdVRnsLprB' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["PLqMgOEZL2uT9Adv", "UWB8gjgPgfMk7QFS", "HF5nxiUeOIdaMemL"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'xFXPz5tVFvykmLrr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'Rd7D5DZGZYHuFE8z' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'ZyUqnTxrAcn5Z6eH' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '7KxmMVMAFWLR8xcH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '62' \
    --query '7ObS9cAx1bl71BFQ' \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "vGSjU0tqVkbrUY9m", "key": "RDI0TJSerFJJZ7dE", "set_by": "Op4dQhuvHcUbHzJR"}' \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'PHkawyLiLUTP3KzY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key '1lhCZouOZEg901TX' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "LwZQyeUuYEmhZDCE", "file_location": "ayzfvqBFfGEBCkIX"}' \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'o2h5t9BAvcMGMqu2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'hI695sEwV5zK17AH' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "mBG8v5LySWucEPFX"}' \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'LVi7hKqsOdZzl6jm' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "ZNCokkBtzwTyEdLV"}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'rbUBCQNYPOGauATn' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "KPyjHllV5sgYkolN", "value": {"a9lUAf2PSSbFnfP0": {}, "ZewDflu5HmkAoQRv": {}, "yFLaQh8AvRMmx9PM": {}}}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'uI9IpizqYhXzei2g' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "dvyLjUNKJTuPIhhI", "updatedAt": "OVAQy87xcEOOB0St", "value": {"rFlfDOtR7n8RtqIX": {}, "pe3KEegadoZzVZ9Z": {}, "aToAgfgZiF2UMG6Y": {}}}' \
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
    --body '{"appConfig": {"appName": "YzAhS8j3QFdCfKuY"}, "customConfig": {"GRPCAddress": "g8iAtBUHoAVlwzof"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "cAqzHrb7U1ETQRnB"}, "customConfig": {"GRPCAddress": "so0a7gSDymAedVfs"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'qplRzYjwqgSw5ANc' \
    --limit '38' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'jaTe9Q3pUEmS1mnQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'nPZnozdSugqI7O8N' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'diPk3BtatFicaBu8' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'E9cQkhkqA3uzXg4j' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '2O9G44pdffJnriFI' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["56aDLFArYifXzPXm", "K4VDOe0wYGOqOllN", "M0YrtYzsddMYtjm3"]}' \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["pV8blYKdwvb4jn1J", "PRbRnUXJIO46FM2R", "ODAyHH4ZbSdf60L3"], "user_id": "8r2lxk3YbCe2Xkbw"}, {"keys": ["8prXtApatRSm7kHb", "8w6B9gYarNWUoGC9", "51bCkbWuzb5pLsPO"], "user_id": "COJ3MinwbuDiwSKq"}, {"keys": ["tdygWOSJgVqeb1Gs", "pOHvyE4tx6ctdIS0", "jSdqaMIk8iRvkaun"], "user_id": "bOnB7gVnBQP4OcqV"}]}' \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'UFbKqmThqEsP3Jew' \
    --limit '51' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'r7By5vtWMyGdHWP0' \
    --body '{"keys": ["QYn9dzoh1YuunHp8", "0KFN5zvf0KQKV9Bw", "1U1eS8yowYNtFhFQ"]}' \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key '1oeNwJIGT1G8aBcD' \
    --namespace $AB_NAMESPACE \
    --userId '2ENrjJAcXinY8QF9' \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'jmibjgZTF3VRPoF3' \
    --namespace $AB_NAMESPACE \
    --userId 'KzSA57CdwyZpTKmn' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'IuYuFNsnd2lwtMvi' \
    --namespace $AB_NAMESPACE \
    --userId 'FOadVelyuGJJjEry' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'DWocGHY2yVSwE6nx' \
    --namespace $AB_NAMESPACE \
    --userId 'oQFcsknqmzpzYh79' \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '7JcWTvPnH7OK0KXe' \
    --limit '31' \
    --offset '3' \
    --query 'redyG8LfkPxyq8Es' \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '9mk7etTXYr789usw' \
    --body '{"file_type": "tWswwIyYWghjEdTd", "is_public": false, "key": "rOTZUgYkosCib8Qp", "set_by": "utIeeMKxWJrGQ6hh"}' \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'IcrXOJ9nK31t4XNr' \
    --namespace $AB_NAMESPACE \
    --userId '8c7fRKSlDki5vhiI' \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'tBpBGugx4W2pLiNL' \
    --namespace $AB_NAMESPACE \
    --userId '6ESdwgFbsF6GFv58' \
    --body '{"content_type": "YklUZTIUX06nUfIf", "file_location": "1x22gONrjYP2BUn5"}' \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'GAtnuEW0AVPBQ1LI' \
    --namespace $AB_NAMESPACE \
    --userId 'IjYFXAZnYCSGCCuY' \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key 'rN4rNxOPIbGv1mqn' \
    --namespace $AB_NAMESPACE \
    --userId '2NPO6ZwSs1olnVCH' \
    --body '{"is_public": false, "set_by": "7wBqERFoslvFdwdw"}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'fUtOrLlI4q0FNdRA' \
    --namespace $AB_NAMESPACE \
    --userId '2YcD2ZwAhQpMpa3n' \
    --body '{"file_type": "7oz3KPv7VMOLdNl7"}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'dQPtax6pWd6d3cFU' \
    --namespace $AB_NAMESPACE \
    --userId '11gbd15WRbGIIiv0' \
    --body '{"updatedAt": "CGG3e8aK4v4Se87q", "value": {"YW6XMhO3KWcRGzaq": {}, "wAkAiOahfKlwrvdc": {}, "WVM78OUndA3ljvgW": {}}}' \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'pOjOIqYCDPxdmv55' \
    --namespace $AB_NAMESPACE \
    --userId '58garrfdjSg1op3e' \
    --body '{"set_by": "7cWpjo9P8sGKjYvW", "updatedAt": "CmGlc2To3yPIY5Zy", "value": {"yYs4c3EEg4bLVFSo": {}, "UPcNaS4J1QXvAdOE": {}, "SHkIGzQOyWznX11X": {}}}' \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'kmsnrDwUlbWhyqGw' \
    --namespace $AB_NAMESPACE \
    --userId 'InbfFR9HILCx3DfY' \
    --body '{"set_by": "kwvh7oQlv6EhkmhQ", "updatedAt": "LmLyMZ35CUD8giQo", "value": {"wrzT2Q7wlrPgMD7m": {}, "zSJMkPIfWzl84if9": {}, "BmYQ94htFDzHjYjG": {}}}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'G5Xnz6COaR1Q08ZG' \
    --limit '36' \
    --offset '47' \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '7s9KEBIFabp9OXai' \
    --namespace $AB_NAMESPACE \
    --userId 'KrtNftC8Ul0wRDTE' \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'fS16Ni5qHmUvFBFY' \
    --namespace $AB_NAMESPACE \
    --userId 'HXvRzFpwLUSGsclu' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'SX84mjLsUHI153yR' \
    --namespace $AB_NAMESPACE \
    --userId 'pAGTAhqrYL2anokU' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'qGtMypahH1pgvDZZ' \
    --namespace $AB_NAMESPACE \
    --userId 'uLwU3egU3POvHccc' \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'li5XvqFpKn9hxnnv' \
    --namespace $AB_NAMESPACE \
    --userId '9LdcpILW11Zzu6Xp' \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'yGHZQr8q9OrebNDc' \
    --namespace $AB_NAMESPACE \
    --userId 'kcifXxyUDsevM13t' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '3VzKz4NUhYaZiwvV' \
    --namespace $AB_NAMESPACE \
    --userId 'LFDuw5E9YHah7as1' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'q8LOo1QljcVniwaT' \
    --namespace $AB_NAMESPACE \
    --userId '5jjAfqL6iZvOhADy' \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'MiEoEermakbPeeJz' \
    --namespace $AB_NAMESPACE \
    --userId 'SgbnBGA8bCc6PCk8' \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '84' \
    --query 'dHtbjUsmZq0Jb8Qq' \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "oooKnukUsV9vW9mO", "key": "yMQlkXNqyUuQHkxL"}' \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["7VRdPzi6nJgDXHQ6", "fZyutqTexRTLxFVL", "W3aPWNbu0yFQ0sPi"]}' \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'vfbIweuKqM48VCbq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key 'GQn0wPEyXxDQiOll' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "KDohdptcA7FvcIdC", "file_location": "x8hOM7olRrCD4xqv"}' \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'vATfp4EI9Lnm3Tcy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'oeuRZ64pjYt5npfe' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "nnmfKF7oSZQEhh30"}' \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'apgi85xryMhz15EI' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "QE05qO65lmHQIbC9", "value": {"MFJ3sS2ELOPmKLed": {}, "ugoycSOhrBQdXPAD": {}, "FddGD4jPMCcrX28U": {}}}' \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["HZK4yi7ZuwPWn8wr", "Kcxut4rXgbpDATs3", "lHwwsYul30a4wS2R"]}' \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'l7XEgy1Aj4NwIprL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'dLa4PkrKJdAvuaPZ' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'sQUnGM8polXQMVza' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'qbLuOQJ3UtU0yoAj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'WHtvlTjXIzKhoYDc' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["083vRkkQzDSj7GeA", "MlNP8fS3aEREZf3E", "j0gAqCyXTIr4iGVJ"]}' \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'cv4RnVXBWZShDQ8N' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vnSqL91DTmx2YHPJ", "MmSDn8iJsbwsMtiJ", "cP3fy3WVq9tzGMxw"]}' \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '92' \
    --query 'Ty96p3AFf8A6RMdR' \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["4hLCyTY9U5BikIpR", "51uXDbO8O4zACgxT", "ja66rVqiAdic1XKE"]}' \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["rLOrCo6pJz0vSm9g", "S54eYD64sZy2bnkT", "OalRzGvI3UQzfBmY"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'qOMsFY95WyESQNVY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'V3NO8sqSe7cJPZ5n' \
    --body '{"file_type": "PQd4v5168pBzUwQQ", "is_public": true, "key": "Fel05BBUllug2NT2"}' \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId '1XOxnq8Sgxh2CLrs' \
    --limit '21' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'A3vupqtBwR4ztWxk' \
    --body '{"keys": ["ALOJU7ZJjOGIGJr5", "ODwfrAxDVXInpk93", "xGuezyZhs8bcGtT8"]}' \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'yiK5ah18IPxdQut2' \
    --namespace $AB_NAMESPACE \
    --userId 'fYwetJixHtuY6Qbr' \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'AVP5VIyhFEyMS58R' \
    --namespace $AB_NAMESPACE \
    --userId 'szx1NfAcCrm3Z9LC' \
    --body '{"content_type": "db14RZ2itv5H8zCW", "file_location": "uBYDFE2Pibfirfvu"}' \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'fYbtdtgUYpTHZWHm' \
    --namespace $AB_NAMESPACE \
    --userId 'AeAw9va5EJwYlxOB' \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'Qohd3rn1JFsgbOvZ' \
    --namespace $AB_NAMESPACE \
    --userId 'sNDwoVU1SFvKDzj9' \
    --body '{"is_public": true}' \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key '8nIz7SdZe7GG4RFU' \
    --namespace $AB_NAMESPACE \
    --userId 'WryWcZJ0GOjT7rIL' \
    --body '{"file_type": "0vmdPQxwrebBlyCW"}' \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'jdyrYxC8RXZUQq9B' \
    --namespace $AB_NAMESPACE \
    --userId 'ySds3kLIWMsJGAMy' \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'ced6z2uRcVXwGJMY' \
    --namespace $AB_NAMESPACE \
    --userId 'altTdyOOfETZIqGP' \
    --body '{"updatedAt": "7IUp7HX1Z0fi9X3r", "value": {"vot9lZf7q9N50HHY": {}, "OXKvD6LGOaKIQwdm": {}, "zToBtAhPPV4pywCx": {}}}' \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'HrWTQqL70ARPCCyb' \
    --namespace $AB_NAMESPACE \
    --userId 'YO1B3QJOZMbbfLOB' \
    --body '{"updatedAt": "ngkWTNWb6fwVJBkc", "value": {"Ml7i4HzeI4zvFJa6": {}, "WyN1T17UKrCUx9CC": {}, "xxORjmcf1fDnQHk8": {}}}' \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IKN82jLIqlU8UI8g' \
    --limit '38' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'ph28qm9Sk4CmPzct' \
    --body '{"keys": ["n9jY2IiRmxum102Z", "H4TZuV0uQUQZva0t", "inKWEZQzIBoNGJIP"]}' \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'KAoihl3UTLG9VDqp' \
    --namespace $AB_NAMESPACE \
    --userId 'e1nyjqPsUbDQofMI' \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'g7wl7lWla0bq0dQ1' \
    --namespace $AB_NAMESPACE \
    --userId 'bGBcQ0fclXrnKqbF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'fzPrB0r8zyvduyrw' \
    --namespace $AB_NAMESPACE \
    --userId 'CUC7br75n6blqmm7' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'kJ8xZmOhj1PGJV23' \
    --namespace $AB_NAMESPACE \
    --userId 'hgTosjWUGFKGgGB0' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '8CSzf5OKnuue6AD2' \
    --namespace $AB_NAMESPACE \
    --userId '9pL0K12swjg6gVW5' \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'YmC0Xauyj2EDQOEb' \
    --namespace $AB_NAMESPACE \
    --userId '4Zs1Yp9rODCZbS1r' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'fKrYaHMmsmjvvnGq' \
    --namespace $AB_NAMESPACE \
    --userId 'EHzexz5Lptw7GOAj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE