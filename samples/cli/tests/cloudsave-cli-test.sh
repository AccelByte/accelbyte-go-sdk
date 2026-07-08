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
    --limit '30' \
    --offset '80' \
    --query 'uAcLr8atp7VN5nyX' \
    --tags '["9P5ye0zDz10BRO4H", "JJwJIdWNc1FUagCH", "8Z7VZfrndthxgL0c"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ax0X84oK2lQfHYHi", "FhkCZ5bO6OUaeMit", "1c2gHLcldfJtSc2u"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'K0l5hKXBwq6bsnHQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'NccRIGfi68hs19rO' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'kD6TitEANBJCkPXL' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key '7XUdMlNvj99wMQQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'Nbumm0RMs4Fz1XG2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '64' \
    --offset '18' \
    --query 'KbGpjK0q66XHTGlP' \
    --tags '["t6dJE0xRQnbTM6Np", "gSOO11fIcOFjsuDK", "yOArHAwDXd8Ic227"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "dHnqIxg8FMMqvW7Z", "key": "9OtIsauEXzKzr3Pm", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1986-12-08T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'mChPP6ZFC1uewL8y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'gT6gfty6Y0u1sDbr' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "Zemw8AmrU1BjrJz7", "file_location": "gIkVEllW81Sq8Vo1"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'WtSX2qLIUTpl5h1O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'zKDH0FCDX7VgCrFv' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["Rs9lfO108RUGu5ev", "uJVy5JCjhbkcwVGa", "EWQBZREjmDGuTiL7"], "ttl_config": {"action": "DELETE", "expires_at": "1978-07-08T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'HlLPF5UNbB1hk3cu' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "VsLnRAM6cWHYz5EO"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key '9lYMo5HSfjXeEmps' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'Mw7l7HUBQAiWpNC9' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["wJbDdTVCMyjge2Ve", "YPj9EGYG0vyvnL1k", "GOats0Ej3yYN1UMh"], "ttl_config": {"action": "DELETE", "expires_at": "1973-09-16T00:00:00Z"}, "updatedAt": "1983-11-16T00:00:00Z", "value": {"pu2SK2yhvtGOBb0d": {}, "ncFLxg5yPi58k098": {}, "fRYrX7ofEBFO0Pwp": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'UsCuKVvTn6ow9Ehw' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "SERVER", "tags": ["K6TZ8Uip6aI50ebb", "tE6BxtVmgLJuE3eM", "ZLZgG1JdqCazd4tj"], "ttl_config": {"action": "DELETE", "expires_at": "1986-11-05T00:00:00Z"}, "updatedAt": "1980-03-11T00:00:00Z", "value": {"ZsfYGqWKXJmOUrxh": {}, "2IMfU1eaOMULhp1d": {}, "9p7RA4GsNcX8hMsR": {}}}' \
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
    --body '{"appConfig": {"appName": "0TVlGnizdi0Y25hf"}, "customConfig": {"GRPCAddress": "n8wWQ0nKWg3SSmWi"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "jZrsWRavxi9hJg4F"}, "customConfig": {"GRPCAddress": "3A4lf5fCYgzQCPdc"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query 'SXznkmkL6Q1p8Sx2' \
    --tags '["5yq4xF0SNPgSM48d", "aY2PDi4zlH4EuEsb", "Rl3w0NCilyewNqYI"]' \
    --limit '23' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'UyaDrt8tNpK5b94I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'H0l8TsQocfZKyoy0' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key 'PIEAIcRjHm5oAXyT' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'xVnpxPLeHGuptoJD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'OTgr4dG3HIZlt8Cg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '38' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "b2pMY68Rh9mIN7Ny"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'iupTEt78Oej5wQan' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key 'fNyAPxLbvsU2JeX7' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xNv3bjeBOEswDBLv", "owM0VZG12oQixcCa", "c4EgClj94sFkScrK"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["hAUuHNNSbjte9MUp", "0G6aEFns5wtr2foi", "xZhCLnUdwSQOEdvl"], "user_id": "Nqj4yznQKGnxgLZE"}, {"keys": ["EKBdxY2svp1Vrsh1", "Fw4hWuGxHhN2hpyr", "svTFdiUcH8orW2xx"], "user_id": "f7NZotcgDEwufBGP"}, {"keys": ["gtpbjvHSuvg5QIsn", "K0qvuy879gjX11j5", "PwD5xa241kGhgL1B"], "user_id": "ZZHHYKMfwlBnhAjR"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '8lZXeJR0mcehHrxk' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "bT11vYsR3uCYeFmH", "value": {"7Cv5xtaIq2gN5oMr": {}, "7AyXCquwfy6BEvjv": {}, "xpZycta8fxNdGJbE": {}}}, {"user_id": "bR3chcSZWRszGevr", "value": {"qBLhyUM8xrXP6RRy": {}, "4H4VTywtAgDH0tWX": {}, "ruRMNqNKJN6hYONB": {}}}, {"user_id": "UXvJoefRwGwnmOz0", "value": {"rRzrgnVTw69Sr9fj": {}, "T52EiisgG2QIKZUR": {}, "qgFIMJvVyo7tzYhg": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key '9c2YVFj5meAed0z5' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jmosrzVvxuXxmVfk", "27J8LZ5gllsOeelh", "fPaEFPnsmThjomx2"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'tYta06becQ3eWcRv' \
    --limit '74' \
    --offset '90' \
    --query 'S6flDFNM0i4ddxOV' \
    --tags '["eqlB6CLQQfHP6WzV", "Wid1nKys3Vvz4vBZ", "fgcIk4iL2OBIUWjO"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '9JVIQBgO1EsjWeHD' \
    --body '{"keys": ["16qbhPkHCPFoIiei", "w8VRKPAF7KVNZurW", "ZycEvIw95dYZC9Ly"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'mgYKPPyjVunAlN8D' \
    --namespace $AB_NAMESPACE \
    --userId '0ToicBQIonscib6c' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'z7bM1EncAdZ7qYda' \
    --namespace $AB_NAMESPACE \
    --userId 'Iy6iqofFr2TI5QkQ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'foSNm6GQBF1AoHCB' \
    --namespace $AB_NAMESPACE \
    --userId 'SFHG46TNixK6vmA4' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'WwfMN4gmGZCGgUyh' \
    --namespace $AB_NAMESPACE \
    --userId 'peLsDVig9LKWzSG8' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'wy10OjrxHomYmb7K' \
    --limit '19' \
    --offset '52' \
    --query 'kcCkxUrhB1nIIugY' \
    --tags '["DSv8EQvait2jFqu5", "IW2Fv6ttkoUBeGSR", "lQdQjxBWg8EDR9Bt"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Id7dRJQFB8jnmiUs' \
    --body '{"file_type": "H13WHjx26KTpm1pa", "is_public": false, "key": "U395qGjFSV6BJga7", "set_by": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key 'iHgEvZns3YYiq1ui' \
    --namespace $AB_NAMESPACE \
    --userId 'gUfNBmtT61JL2RwP' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key 'yfwG33RV7bgD783R' \
    --namespace $AB_NAMESPACE \
    --userId 'E4oNfHWv21vOgHud' \
    --body '{"content_type": "vK7eI0xasASkd1fI", "file_location": "EvOPOvEAlhHNfoFK"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'YN8oAbmPH2tbQfnp' \
    --namespace $AB_NAMESPACE \
    --userId 'OzSwqxbwz2hZchRA' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '3mDSQn91CB1wofyk' \
    --namespace $AB_NAMESPACE \
    --userId 'aABvkyscgVFbiXmz' \
    --body '{"is_public": true, "set_by": "SERVER", "tags": ["XUFjSXqLAnBSxDK4", "3gQ8LeQXXsgo7jjw", "H5GfJTB5EsDJ1vOr"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'b0jTdYqz5f6RxsfR' \
    --namespace $AB_NAMESPACE \
    --userId 'Ew03jOkWePDCpgI2' \
    --body '{"file_type": "6XWKLdKg8esIRnEc"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key '6mLxsfZQh4mjYGB5' \
    --namespace $AB_NAMESPACE \
    --userId 'oEhrHlZ6NowVhPaE' \
    --responseBody 'true' \
    --body '{"tags": ["54BH2RyB1AcMG0pA", "IiofxsHDecI1wEmx", "kU8q7h2zK48RNMdz"], "updatedAt": "1983-02-05T00:00:00Z", "value": {"4Zi6irLJ7A6Pj6R9": {}, "txrIHpk5BuwwAYaY": {}, "w2tmTlogbOBPE4Zf": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'wdzUcIWGK81kcNcT' \
    --namespace $AB_NAMESPACE \
    --userId '03FgW6M1pGFUCx2Y' \
    --responseBody 'true' \
    --body '{"set_by": "SERVER", "tags": ["bZ4Hh91MZRgAubfC", "PiiWq1R0sYUjSWDW", "NNrZS48W4X5VPei7"], "ttl_config": {"action": "DELETE", "expires_at": "1975-01-27T00:00:00Z"}, "updatedAt": "1996-06-04T00:00:00Z", "value": {"6grflZeRSrlCRg0Z": {}, "XZ8LrISrEHT5LufP": {}, "AyGmR62pIKcSrTHl": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key 'iSO5n3frF54eKb94' \
    --namespace $AB_NAMESPACE \
    --userId 'qIqqyI07Yko2CtI9' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["Eb27UWE9Z6zGnbYY", "oCL9UvlsZ4HHTOFg", "Ayph16FrHz6qK8In"], "ttl_config": {"action": "DELETE", "expires_at": "1983-06-12T00:00:00Z"}, "updatedAt": "1977-05-06T00:00:00Z", "value": {"CADl2sl59m3FZjiA": {}, "aGHRt61NwVZZcigN": {}, "SJAHDtgOqXzVx70N": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'Bm3Lw5gagiDoTiFW' \
    --limit '56' \
    --offset '59' \
    --query 'fWSXqRJBz0lxh3Tl' \
    --tags '["8vR32D0vGaQpd4oc", "491kJELVCwWs4Gjj", "LxURNmYWfVQbAHVh"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IHZUvQZ5nbq6iXNh' \
    --body '{"data": [{"key": "ERIFuF8DJZPu1mPi", "value": {"SLgq1JzlMNRFjDkW": {}, "4pUMSRQJbfejLTbY": {}, "ivFZ5q9FN8LxAtV3": {}}}, {"key": "sQSEKhrzpdpNeg6r", "value": {"6kqCAilHyMocfSUq": {}, "YOKx7F1XjPc0vqk7": {}, "ic9QwJasmiop4I76": {}}}, {"key": "mXzk7gyNN5sBxBBk", "value": {"UZ6g4YTQCXHy6RMw": {}, "zHG9BBtXIfC3U1t4": {}, "oMxP4w08ffZWYvP9": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '5wxE4hPW8kisjvzG' \
    --body '{"keys": ["pkG48PdLjZcSPSat", "za92fYI8sTZF4U4T", "7H357JZqDyYl5kyP"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key '3i3TYm8Piw2gwXZT' \
    --namespace $AB_NAMESPACE \
    --userId 'g3blccYmFh9fMGz9' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'osMHxHDfPAhXJ8aV' \
    --namespace $AB_NAMESPACE \
    --userId '6XbfrG2tDA9Li0VR' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'TSOeIHcna1YufVtR' \
    --namespace $AB_NAMESPACE \
    --userId 'sk6HkAINcBYzuJh9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'SkcOT3kBQdaya4UJ' \
    --namespace $AB_NAMESPACE \
    --userId 'E7OfdVtblqK1cHhh' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'LIB9JfOMy6AplbNd' \
    --namespace $AB_NAMESPACE \
    --userId '0yefeXUhf5V7eEco' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'wvW34jMZax9HaEYk' \
    --namespace $AB_NAMESPACE \
    --userId 'flML0NWNkoqEzCcs' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key '7J5DGU34xLD3829B' \
    --namespace $AB_NAMESPACE \
    --userId 'iqIWxgZNIrqbUDhJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'b4DNvLQIMjVrFE5T' \
    --namespace $AB_NAMESPACE \
    --userId 'zlZTXfv4hGW6EKbF' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'RP94HLfQM0ncupsc' \
    --namespace $AB_NAMESPACE \
    --userId 'NXCdjaRZ0PtB4lBF' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '13' \
    --offset '72' \
    --query 'pjQDBdfB557JuAsG' \
    --tags '["8r5py0wzpRqhvLHo", "Tz5sTWbTB4iWEfhG", "VoTV5nH16al3DK8v"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "iOC7Z6Ej0WVCqgHg", "key": "SNvjNjeERy4hQnC5"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["CWnSm1YNWl0yrTZC", "8WkS1KdBoJIAiLMI", "edYcjwowFG51TZxx"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'NRFWuUX3GEjdT7i2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '503oTgCK6OTCbU4k' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "oVnGGHEWVIBepRG9", "file_location": "3GzTAyu5LmzJTgrV"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key 'CYAhNEIaFxPCjAsB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'h2xUbgQZC4mGNmk3' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "rXASak4NGcNdjmBA"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key 'TgR8jlx8yT6M65yB' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1981-04-20T00:00:00Z", "value": {"wy6Gkcqj4mBfhIg1": {}, "eF8ywA26UT7uluFG": {}, "34ZcAsnjtbqQ1DTl": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["ZbRfZUl93RpGZjH0", "HhQWmEVoBsOO8mIY", "5DjKMb0zxGnY0tX7"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'USz2cL3qfaI89UhO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'cwrhHKr0yf0o7Vzt' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'aCXUGpv3JLG4QgiF' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'pj28zQppbZvNhmlA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '36' \
    --offset '34' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'HRhrQISg0pTrPUsQ' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Gfi09wGWGBsXWCYX", "kuZJDe7lkAgeFgbO", "a4DfnPquaW3rjgzv"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'AwGfJN4XtBYeGqGN' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GyofJXHk9E81f9dO", "vbEi3OYB0eMTE5dy", "jFmOa07FKgwGEg7i"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '27' \
    --query 'soBe9TOfrLBNpcM7' \
    --tags '["oJx33Cgld8KhXQbA", "IjftESwtyb86uHMy", "VLuhRkxmpp6qNq2z"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["Tt86OPMkPx6P7PcK", "psDYMqbOgvKw8FhO", "o2fS7JtMZqY3Vx7t"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '43' \
    --tags '["R5BknWIYUvARuUlD", "nDxiRMYX9ebSmSfV", "bPO2xdKUThCi0kP5"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["YoqLYUccr5vGfB5D", "YxaIwpwsqQPWVKcV", "XoohyqXxNknTDcbR"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'h1v2mBcm5JsdaCGL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'TiBKLRdRVjCgqRBZ' \
    --body '{"file_type": "mKK7m8lOPwUvIOYq", "is_public": false, "key": "o5rhBR6ogJZl9me9"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'IeGN7NMUzGYxwgzI' \
    --limit '58' \
    --offset '26' \
    --tags '["T7td53NqVNnyESXE", "AJb0uxGT6Wgin840", "SHxlFzeHmgG5LUp2"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'A9BGoJxC1q3RbCRB' \
    --body '{"keys": ["driWsDZNLoGNIwuQ", "9PzF6qwE0KhA0Ihz", "bc0f51SS7MJyJFk2"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'TO7rouC3jMAgzoop' \
    --namespace $AB_NAMESPACE \
    --userId 'rD3h4L0OwAGVD78C' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'vLlJtamd9Bwpjev4' \
    --namespace $AB_NAMESPACE \
    --userId 'fSyXCl68lM4PBOg0' \
    --body '{"content_type": "kERiLWVSjgvujtCx", "file_location": "Q3pOvgf44FOvnVx1"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'nQI1tYDxNWRwoIsu' \
    --namespace $AB_NAMESPACE \
    --userId 'vFIb5fe00Er3e1Un' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'xoJzrHbfhmCwkKbV' \
    --namespace $AB_NAMESPACE \
    --userId 'AI1uvAkFKr5pyKpX' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'EgZ9DZUjBdxS5O0e' \
    --namespace $AB_NAMESPACE \
    --userId 'PDpVy3E20hrkATxB' \
    --body '{"file_type": "iZjSZH4yKizR23tH"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'Uvj6TWYWcCw5VbNw' \
    --namespace $AB_NAMESPACE \
    --userId '40XElmBxxIIugQtt' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'QUzRCslNHmst0rnZ' \
    --namespace $AB_NAMESPACE \
    --userId 'UKDzob3vPQBWnBVm' \
    --responseBody 'false' \
    --body '{"updatedAt": "1983-08-22T00:00:00Z", "value": {"Uf0xAyVfij8F9cv8": {}, "9nLBhy4vtR2yy75T": {}, "bLcRIZrfWebfaNIs": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'q3tctsLey2j0BfoT' \
    --namespace $AB_NAMESPACE \
    --userId 'BmIefYKjIxBU5E4G' \
    --responseBody 'true' \
    --body '{"updatedAt": "1981-04-26T00:00:00Z", "value": {"ehhswxubfVzzMqMQ": {}, "H9wMigpzmPCzuHdX": {}, "JBQoKaZtulvw3ou9": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'SKPAawuWrbCEH75X' \
    --limit '1' \
    --offset '31' \
    --tags '["FEafJ8lSf9Eu3chF", "l3dMeymTw8QLDD2z", "8Gp83DQqgeWQbqB2"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'WpVQLna4o7sPoZNx' \
    --body '{"keys": ["6zfbAN6n76mWE5xl", "FWnmEFDnr3UGqgjS", "7G6vk20S1UhG3FWu"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'ladK1zO4D8ba99Uv' \
    --namespace $AB_NAMESPACE \
    --userId 'zEXqdGABpAG2RDBO' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key 'Oc8DjqvISaLNBzjX' \
    --namespace $AB_NAMESPACE \
    --userId 'Kj4IkZrPCGV3en6L' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'FG4Wc6D2isKxVIhJ' \
    --namespace $AB_NAMESPACE \
    --userId 'hARnpHMQhfdAILyk' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'Rce0aJDLHllGayIZ' \
    --namespace $AB_NAMESPACE \
    --userId 'YQW6VmuUBfk5xSuL' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key '5PBBlNAxZ6AIMJqI' \
    --namespace $AB_NAMESPACE \
    --userId 'GXHT3gtIsduHHHrh' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key 'mjTLCAyDxuZFskhD' \
    --namespace $AB_NAMESPACE \
    --userId 'hqGjsulvfefiqMPF' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key 'VeYpUZtNdvyzhGaO' \
    --namespace $AB_NAMESPACE \
    --userId 'AurPGY3Y0rtJEZCj' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE