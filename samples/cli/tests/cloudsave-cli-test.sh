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
    --limit '4' \
    --offset '30' \
    --query 'gAfOSecn2CncpFEA' \
    --tags '["vavqPV9RIXAXk9Cc", "9OQIVQhonktnUAjT", "V9y9of1gkpKTmDnY"]' \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminGameRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["HDgNPqGFXqNa66G4", "8fdjqPYnSP8eOaJG", "NkQW9UlLjJHO2HHe"]}' \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminGameRecordV1 \
    --key 'XuMYhYpivnoFuhBP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordV1 \
    --key 'Jg13lHGaedw18BjG' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminPostAdminGameRecordV1 \
    --key 'cw1b3eZAjSzcHrZm' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminGameRecordV1 \
    --key 'KTfEMgQvajdysSX3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteAdminGameRecordTTLConfig \
    --key 'apKBilb50KWvwJim' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '58' \
    --query 'uciaY5KRuSrr2cz6' \
    --tags '["mAOWiPLi4pIrldZt", "CPdrJENxGNF47x3o", "cpFrqF7mD8f8fj2j"]' \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "LEj3yS9PjJ5SbREU", "key": "8EiE8Vg3GhBzqVe0", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1997-03-24T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetGameBinaryRecordV1 \
    --key 'LxHOYqkTlY8lFm8e' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecordV1 \
    --key 'shoHPun4QKZNvrYD' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "vLGJGUL4SsHJj7fs", "file_location": "OobOyWomWgTtfDHH"}' \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeleteGameBinaryRecordV1 \
    --key 'fVmqeZRIeTBt4Gkf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutGameBinaryRecorMetadataV1 \
    --key 'OnDKQJRYi9Tkpc02' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["NyGkID4RFyYXXIiJ", "oOKrgZmbnMWNqqzu", "Oo1bjiBcqtTIxDSp"], "ttl_config": {"action": "DELETE", "expires_at": "1993-04-25T00:00:00Z"}}' \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostGameBinaryPresignedURLV1 \
    --key 'xSmaSaE0BQhVWFCQ' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "sFUcy2BU0DbxSn5l"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordTTLConfig \
    --key 'ESYBHUF8ASvvk13R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminGameRecordConcurrentHandlerV1 \
    --key 'fu14LhFl0i3tI3As' \
    --namespace $AB_NAMESPACE \
    --body '{"tags": ["VOIJNOXYYBEL0P1i", "I7zg8fKR3GfSBs0F", "OWHfFSPHZIHzIqB9"], "ttl_config": {"action": "DELETE", "expires_at": "1990-10-04T00:00:00Z"}, "updatedAt": "1975-07-31T00:00:00Z", "value": {"DkEiRghOYKn6wz1X": {}, "k3WUpJdcpJtBnvmp": {}, "tJIqCA99ZdaduDW6": {}}}' \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordConcurrentHandlerV1 \
    --key 'leFOm04X6yNDFzws' \
    --namespace $AB_NAMESPACE \
    --body '{"set_by": "CLIENT", "tags": ["FVNdhLwMbs11vloO", "31NlINyoZiOG0Nbc", "18o2ENuhtnDbtHof"], "ttl_config": {"action": "DELETE", "expires_at": "1998-02-07T00:00:00Z"}, "updatedAt": "1982-06-06T00:00:00Z", "value": {"GEBxFn2n5CDSggeG": {}, "RNHyGDecW3PNo7dc": {}, "3JrL4rK0w8SOI3JW": {}}}' \
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
    --body '{"appConfig": {"appName": "708DIZP5cZV51PwQ"}, "customConfig": {"GRPCAddress": "J3VaHvCbw4QQbnGG"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    --body '{"appConfig": {"appName": "vlSgrakQevzH29uR"}, "customConfig": {"GRPCAddress": "iQXCMVqgocWCKLbm"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
samples/cli/sample-apps Cloudsave listGameRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --query '47yV5Tm5mSY8y5pu' \
    --tags '["8IIQsNf2doRF5Zgz", "I1U4viIRmNVQncGX", "805ghksWiTuommcz"]' \
    --limit '1' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetGameRecordHandlerV1 \
    --key 'rwb88UuK3dNIiNcD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutGameRecordHandlerV1 \
    --key 'hOU6IijPZ7xqd9ui' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostGameRecordHandlerV1 \
    --key '5lnpzPRNTfPhnLFx' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteGameRecordHandlerV1 \
    --key 'd8H4HBNA7V0SPrkY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
samples/cli/sample-apps Cloudsave deleteGameRecordTTLConfig \
    --key 'JLNpeDn6HrvrKJgG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
samples/cli/sample-apps Cloudsave adminListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
samples/cli/sample-apps Cloudsave adminPostTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"tag": "zxzhndLdi0DCgJIH"}' \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
samples/cli/sample-apps Cloudsave adminDeleteTagHandlerV1 \
    --namespace $AB_NAMESPACE \
    --tag 'osu8p1e9NCgkiQxe' \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
samples/cli/sample-apps Cloudsave bulkGetAdminPlayerRecordByUserIdsV1 \
    --key '4DfMOUmUTiJAkeis' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bpq5QLoUMbJ2tIed", "IsdxX0u3YouUJjvN", "UbS9dW0loM4dTP38"]}' \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerRecordSizeHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"keys": ["ta4go6ZAhcE8KmxW", "rAFY1sGNU9hdQlvp", "swxkVp0YGDI8ZdHL"], "user_id": "j0RUm5BdVjy4sjlo"}, {"keys": ["0wLu4ed9I1lqVUoy", "E6MkxB4HkyE6nRjW", "YlrwEj7tS5rp9sGl"], "user_id": "byVUDMvRXECokiO7"}, {"keys": ["alvK1Lli2NkWZjeg", "lWimh6zuSi7JUL7J", "xyLT1m9X3wfeR4qa"], "user_id": "ByAUs1tF1fmbR6na"}]}' \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
samples/cli/sample-apps Cloudsave adminBulkPutPlayerRecordsByKeyHandlerV1 \
    --key '2wkBUqERevKNFomO' \
    --namespace $AB_NAMESPACE \
    --body '{"data": [{"user_id": "6ZMBFTUic4b4Fmwz", "value": {"1FHUUvzONOTEByki": {}, "kNTcuP8oIXdmxI7R": {}, "sBr9y0iVW7W2rj5N": {}}}, {"user_id": "uboSaGcdLSNrcL4T", "value": {"Crpl8v05ZY4VQflT": {}, "HuTj27K5B4f7thOi": {}, "9UGgJTQeJzfFWHaR": {}}}, {"user_id": "beGpr7bBxasKdvYK", "value": {"TiRndFTnDScpsd8y": {}, "PWXNsDAtdJY8ZL0o": {}, "Gs3KaEe443xJuRpi": {}}}]}' \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
samples/cli/sample-apps Cloudsave adminBulkGetPlayerRecordsByUserIDsHandlerV1 \
    --key 'Si5YhhcVDjsb6QiE' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["N3iZfIacrUdEmFmk", "hdbrsAEnTOMhoWdI", "5dxo8NEWwhdXZiAv"]}' \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
samples/cli/sample-apps Cloudsave adminListAdminUserRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'JpK8eT75aQplKd8e' \
    --limit '96' \
    --offset '74' \
    --query 'Vo1pPuSI9eZsn1LR' \
    --tags '["MDYks7Hagid2HIWU", "kheqDBtgzGXd3D0b", "hm4ZRDMACXyRwYa0"]' \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminBulkGetAdminPlayerRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '3mc1Aj3YPTaLfDEX' \
    --body '{"keys": ["6fMQ50CK1ZgLNeCa", "U6Ff7JD2MsEFE9uQ", "it0TLmBEmuWxg62w"]}' \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminGetAdminPlayerRecordV1 \
    --key 'CgZrphTKh9cevmrp' \
    --namespace $AB_NAMESPACE \
    --userId 'xdLMSimcasxNmQJq' \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordV1 \
    --key 'vkh97XBvn4uqoOSG' \
    --namespace $AB_NAMESPACE \
    --userId 'N2Rnb9qmaACrdGoh' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerAdminRecordV1 \
    --key 'UVDdMq8ndlSiHHSo' \
    --namespace $AB_NAMESPACE \
    --userId 'rD38yssTG7Bwv3Sy' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
samples/cli/sample-apps Cloudsave adminDeleteAdminPlayerRecordV1 \
    --key 'EP97BMhu9OcsmqdE' \
    --namespace $AB_NAMESPACE \
    --userId 'odHr7qgzViPfgGfh' \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
samples/cli/sample-apps Cloudsave adminListPlayerBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qFXmPU3WACn211Le' \
    --limit '64' \
    --offset '20' \
    --query 'AcbSYUfqMKpCkRmH' \
    --tags '["7XwwBEdVA5lxhzx2", "3tJetD63MSCN059j", "wjySthXNFJGpcMNc"]' \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId 'MeM3xAVYYcRI7SJb' \
    --body '{"file_type": "lShMsIC9YvzM5rZx", "is_public": false, "key": "gDsLU3BdvO0alJCo", "set_by": "SERVER"}' \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminGetPlayerBinaryRecordV1 \
    --key '7RxBdMNTzKxqY6t3' \
    --namespace $AB_NAMESPACE \
    --userId 'ZfU8yvW8rGrORHME' \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecordV1 \
    --key '8irFdDLV7KADDpy3' \
    --namespace $AB_NAMESPACE \
    --userId 'IQPkIBBxu6KVk3E7' \
    --body '{"content_type": "r3dEHYaisQHxxF6K", "file_location": "PSNwC8Ri1U1DHtci"}' \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave adminDeletePlayerBinaryRecordV1 \
    --key 'gDOUW4U974TjE0HG' \
    --namespace $AB_NAMESPACE \
    --userId 'g2kIzhTnHnJErFKF' \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave adminPutPlayerBinaryRecorMetadataV1 \
    --key '80AdMTZm0DKILthA' \
    --namespace $AB_NAMESPACE \
    --userId 'mMkiq3897azTFB0E' \
    --body '{"is_public": false, "set_by": "SERVER", "tags": ["uEfVslE6iGoOulh0", "thbWADxXrVvpfGdr", "rcZr3fDkvWw5Am3h"]}' \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave adminPostPlayerBinaryPresignedURLV1 \
    --key 'vPheRgKIywS5pCWi' \
    --namespace $AB_NAMESPACE \
    --userId 'fg1h6QPOittQZiTa' \
    --body '{"file_type": "HYkvgoucIrytfY6I"}' \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutAdminPlayerRecordConcurrentHandlerV1 \
    --key 'NFXxKiSXfieiuyy4' \
    --namespace $AB_NAMESPACE \
    --userId 'RNa9InEEQIgt1cSj' \
    --responseBody 'true' \
    --body '{"tags": ["pxft6sE3cEVcIQF3", "IGi3kuLwrhqm48sU", "cixEuTL1Vdmlyqqy"], "updatedAt": "1976-11-11T00:00:00Z", "value": {"e4iJP8maWS6yMVeA": {}, "M2ecsvF5trsdQ9Vx": {}, "5FYnTJ2LvwYWYtGA": {}}}' \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordConcurrentHandlerV1 \
    --key 'DwjMHh5UrA5FVz9S' \
    --namespace $AB_NAMESPACE \
    --userId 'f9ua32YdsqQHpiuM' \
    --responseBody 'false' \
    --body '{"set_by": "SERVER", "tags": ["CGSI8sOhbwZoMkYo", "b6A4Z4o9R987QZVU", "buunDQ3aisZwbQfH"], "ttl_config": {"action": "DELETE", "expires_at": "1982-11-28T00:00:00Z"}, "updatedAt": "1975-06-18T00:00:00Z", "value": {"Sh9SWqBW7tIZ2Ii9": {}, "nhKA7BiDL3pU3RKk": {}, "vcjLQMyRkfrZl2Hk": {}}}' \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordConcurrentHandlerV1 \
    --key '2fdfdCeGoEJbTFaH' \
    --namespace $AB_NAMESPACE \
    --userId 'y3MFJAwcmUbBfIVU' \
    --responseBody 'true' \
    --body '{"set_by": "CLIENT", "tags": ["96kdHhv0MFCpZKRT", "fHc2BhiOnvUy9ZdC", "XVt5kfVFYNaUMwM5"], "ttl_config": {"action": "DELETE", "expires_at": "1997-09-16T00:00:00Z"}, "updatedAt": "1981-10-16T00:00:00Z", "value": {"hoOkQDQdQKOyPfKX": {}, "B6OkXzCvo3YWmmB9": {}, "GufrNO69BEIwdkBM": {}}}' \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
samples/cli/sample-apps Cloudsave adminRetrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --userId 'q715Q0g1Tq46ZEwU' \
    --limit '2' \
    --offset '64' \
    --query 'XCKCdDMiyUGYh9iC' \
    --tags '["JYBChIuBAqvN5XWh", "r2NVa91fMtXyWtzU", "ab0sGibkgScNhl3I"]' \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId '6gQGsh2jlrGDZO0C' \
    --body '{"data": [{"key": "Y1UqMToOHZqwBMtr", "value": {"XGjR10T0aVKxvH8g": {}, "YeElsPHjICMyj63l": {}, "EI12uZjxGp7uI4nr": {}}}, {"key": "AXp8O867Am3rHRRz", "value": {"sNXrjRsWz9pz0djt": {}, "mSXwIwCg5AOvkcK5": {}, "QJ6sAXE1cMvQyObi": {}}}, {"key": "7OHyG4LcYUunANfj", "value": {"XuxHTcDdKIwaiEQc": {}, "qsisuUlporoK2buT": {}, "oxkAauQRUVmJSMzE": {}}}]}' \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'eZ4ROPfMlsW7mDAc' \
    --body '{"keys": ["0o3ST2IL5nHkCIPL", "FJICBzHZDvZrIYwh", "lcIdt5uv3nyzDANv"]}' \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordHandlerV1 \
    --key 'HpidtOCCepsClD6R' \
    --namespace $AB_NAMESPACE \
    --userId 'rPUbh8Cd9OHLB9bo' \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerRecordHandlerV1 \
    --key 'XCtN68cBIejsoHI8' \
    --namespace $AB_NAMESPACE \
    --userId 'imHkg5rgcNqryvXp' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerRecordHandlerV1 \
    --key 'rqYfjCwctKBZyDXz' \
    --namespace $AB_NAMESPACE \
    --userId 'qmq3tpRNFgTtY0oK' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerRecordHandlerV1 \
    --key 'PhhTX8gK4Xz5DAvh' \
    --namespace $AB_NAMESPACE \
    --userId '5grfKYPmNN6h3s2k' \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 \
    --key 'gMzRT9T38xzCauZ9' \
    --namespace $AB_NAMESPACE \
    --userId 'zxmzPgZck63Npy5J' \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPutPlayerPublicRecordHandlerV1 \
    --key 'JHNDuDTsSB9WLboF' \
    --namespace $AB_NAMESPACE \
    --userId '92YFtH0JVCGeEbKv' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminPostPlayerPublicRecordHandlerV1 \
    --key 'a1YQmghavC4fslhA' \
    --namespace $AB_NAMESPACE \
    --userId 'S5WePIbQBMuONVKJ' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave adminDeletePlayerPublicRecordHandlerV1 \
    --key 'VHUcxP9ZUnk119sX' \
    --namespace $AB_NAMESPACE \
    --userId 'cCj1DinzQ5mWwxCM' \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
samples/cli/sample-apps Cloudsave adminGetPlayerRecordSizeHandlerV1 \
    --key 'wmhYSIds8Pcp5FSf' \
    --namespace $AB_NAMESPACE \
    --userId 'GU3I8cSoqz5E9Lya' \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
samples/cli/sample-apps Cloudsave listGameBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '71' \
    --query 'ksxscqqk0YTX3Lpw' \
    --tags '["82w6MGqUsDAK9Bdk", "GsSjWmSCu1lEshiN", "f8tw4jcK0yPVdlLy"]' \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
samples/cli/sample-apps Cloudsave postGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "jnv8B3t21AaODztC", "key": "saUDfdCZijjwzEju"}' \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetGameBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["erno5HVhTvpUHpBU", "hdQAlH8NJDo0RJtM", "bJE92pkaL5adlTqz"]}' \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
samples/cli/sample-apps Cloudsave getGameBinaryRecordV1 \
    --key 'gkZ8bIGtKztJ1aVc' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
samples/cli/sample-apps Cloudsave putGameBinaryRecordV1 \
    --key '6nYCPFsHBdJZhZjP' \
    --namespace $AB_NAMESPACE \
    --body '{"content_type": "C1ckmVqxeiBY4U4Q", "file_location": "FzfkzsIQiYyI0YNo"}' \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
samples/cli/sample-apps Cloudsave deleteGameBinaryRecordV1 \
    --key '0fKzRRvjQVW0W7yx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postGameBinaryPresignedURLV1 \
    --key 'JqOIIBBDahbouGsP' \
    --namespace $AB_NAMESPACE \
    --body '{"file_type": "tkSccseGdhIpMUpN"}' \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordConcurrentHandlerV1 \
    --key '5qEnPOGvBtR2bkAk' \
    --namespace $AB_NAMESPACE \
    --body '{"updatedAt": "1984-10-05T00:00:00Z", "value": {"mVzekaEyFzGUU6fj": {}, "yzdMu77njkBtGt4q": {}, "L7hJaP65qlQCCAUF": {}}}' \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
samples/cli/sample-apps Cloudsave getGameRecordsBulk \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["K38kaerbJb6ndh38", "MBijipFZx3uKj3se", "Ds8ocwkSbNSpvjD4"]}' \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
samples/cli/sample-apps Cloudsave getGameRecordHandlerV1 \
    --key 'Ht0Ojmle02TbDLdf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
samples/cli/sample-apps Cloudsave putGameRecordHandlerV1 \
    --key 'eJVRpYg3k12ANefu' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
samples/cli/sample-apps Cloudsave postGameRecordHandlerV1 \
    --key 'Suzn1jRXuSPyZ1Us' \
    --namespace $AB_NAMESPACE \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
samples/cli/sample-apps Cloudsave deleteGameRecordHandlerV1 \
    --key 'WzyvEtkE4NNGFEOV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
samples/cli/sample-apps Cloudsave publicListTagsHandlerV1 \
    --namespace $AB_NAMESPACE \
    --limit '100' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicBinaryRecordsV1 \
    --key 'ws3AzeGAwOl8uGmk' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["vDjkSkTHtjpLdaHP", "SMtiUGM3rEGPZwDH", "egln3nOSp7S8wKU6"]}' \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 \
    --key 'Esy7QESYy7P6lcW6' \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OPsvyu3piihx6AFU", "c7Ec1xYPaDgvxBfW", "HHSudEuhBTyR48r4"]}' \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
samples/cli/sample-apps Cloudsave listMyBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '42' \
    --query 'nhHjDp2coddBuf3W' \
    --tags '["GOU4K098N2OzSlsV", "qClW0CfD6oazlCUC", "QQbSEM6RKwNE8k2y"]' \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
samples/cli/sample-apps Cloudsave bulkGetMyBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["nKe5V1CFAtkPR2h9", "oCG2135Y9S8JfwsL", "pv7GC6oMH3t6FOCf"]}' \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
samples/cli/sample-apps Cloudsave retrievePlayerRecords \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '93' \
    --tags '["KHN0RL6EVwYGk8Cu", "5U8eklJNjmfhLSYq", "pveCmwY8M2Jm8L2W"]' \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordsBulkHandlerV1 \
    --namespace $AB_NAMESPACE \
    --body '{"keys": ["mKSDXZ0ZnwnNE1JS", "BPHYiyNl8M2RkbUK", "Afl9M4yXZZafrw3V"]}' \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave publicDeletePlayerPublicRecordHandlerV1 \
    --key 'cj3Kk4tsL1wx5CLd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave postPlayerBinaryRecordV1 \
    --namespace $AB_NAMESPACE \
    --userId '3KpvMJnOpskIlegY' \
    --body '{"file_type": "9x6PL3fxxAyUDguy", "is_public": true, "key": "2HOQbDCcTuUuW4oY"}' \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave listOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'qN7d0FSuhh6xf14r' \
    --limit '16' \
    --offset '71' \
    --tags '["byE3zynmVrg4KAR0", "cYOmID3H1evIFO2V", "fVTfYVCINSJRn76A"]' \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave bulkGetOtherPlayerPublicBinaryRecordsV1 \
    --namespace $AB_NAMESPACE \
    --userId 'CqcSGuc6YpIhN28D' \
    --body '{"keys": ["9y49X64hGaNEfAlf", "0rDv62avrySaLBjM", "xii00xdHoLAoHKgV"]}' \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave getPlayerBinaryRecordV1 \
    --key 'yLW6yZotvolSgXRo' \
    --namespace $AB_NAMESPACE \
    --userId 'vwEWLuCKfDoRIqS3' \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecordV1 \
    --key 'PIsYlwJEYZwjZAdu' \
    --namespace $AB_NAMESPACE \
    --userId 'o8npzqRrtFFDRkXV' \
    --body '{"content_type": "BZsk2FJ6OpMsQXkt", "file_location": "i516BYD63JvfxfAO"}' \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
samples/cli/sample-apps Cloudsave deletePlayerBinaryRecordV1 \
    --key 'H6CMwJidd2RbXjoG' \
    --namespace $AB_NAMESPACE \
    --userId 'RURlzdzjfihXFAQL' \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
samples/cli/sample-apps Cloudsave putPlayerBinaryRecorMetadataV1 \
    --key 'ErhjBmOmBCPneS2x' \
    --namespace $AB_NAMESPACE \
    --userId 'NNQWJI6hZxyGzcBs' \
    --body '{"is_public": false}' \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
samples/cli/sample-apps Cloudsave postPlayerBinaryPresignedURLV1 \
    --key 'FkL5fyKysRTAzi1V' \
    --namespace $AB_NAMESPACE \
    --userId 'ZDnSJvfXlCHnn7ZF' \
    --body '{"file_type": "3qUh2kAjoNcLWAu9"}' \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
samples/cli/sample-apps Cloudsave getPlayerPublicBinaryRecordsV1 \
    --key 'vT96uW2R3wSeYBJc' \
    --namespace $AB_NAMESPACE \
    --userId 'HNc1WhS3kYKlvy7m' \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordConcurrentHandlerV1 \
    --key 'Uap1pao0ZUMb9fYE' \
    --namespace $AB_NAMESPACE \
    --userId 'U2wOC47roa1VdepT' \
    --responseBody 'true' \
    --body '{"updatedAt": "1998-07-15T00:00:00Z", "value": {"NfHIJwUeboIo8eNv": {}, "m1NwMAKPRHhZNR4M": {}, "VBWVOWoVf5MMqWqD": {}}}' \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordConcurrentHandlerV1 \
    --key 'Wzwq5xjAmN5yJqps' \
    --namespace $AB_NAMESPACE \
    --userId 'hDb2GAHrO9TFcb0R' \
    --responseBody 'true' \
    --body '{"updatedAt": "1997-01-06T00:00:00Z", "value": {"IWoEHSgQ0XyKzNT8": {}, "Wmm1wW3wMuiUKSs8": {}, "gKCeoqJ8M7LNPBS5": {}}}' \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordKeyHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'Lkj6BE3mKdF0hiIK' \
    --limit '74' \
    --offset '28' \
    --tags '["UT2W6N8VQ2RlqnQB", "XFjuIyttwyZF9wrG", "oaGxajawAX6HKrT4"]' \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getOtherPlayerPublicRecordHandlerV1 \
    --namespace $AB_NAMESPACE \
    --userId 'szqyiM47Go1Ez0xM' \
    --body '{"keys": ["ybXmULc3HTctuxFw", "UZ2U9QSsOTnjsMgQ", "HgbDp0IwQo5lX6Ym"]}' \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerRecordHandlerV1 \
    --key 'EUlp94gTbItyP0iB' \
    --namespace $AB_NAMESPACE \
    --userId 'dUY3oujhrpS2Cwyf' \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerRecordHandlerV1 \
    --key '7UdwEMsZN2n1XKp7' \
    --namespace $AB_NAMESPACE \
    --userId 'oZK5l5HEvNp4Z0ZT' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerRecordHandlerV1 \
    --key 'rXqk1usgJVMvjC3k' \
    --namespace $AB_NAMESPACE \
    --userId 'o8FxlUeSQvzsYSep' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
samples/cli/sample-apps Cloudsave deletePlayerRecordHandlerV1 \
    --key 'BcuuxnX0yU1KPeN8' \
    --namespace $AB_NAMESPACE \
    --userId 'Ao4Yn6GGA5JrBHwg' \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave getPlayerPublicRecordHandlerV1 \
    --key 'yfucyiOqIEqYVD6B' \
    --namespace $AB_NAMESPACE \
    --userId 'jkaywBmMYkmwg5Op' \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave putPlayerPublicRecordHandlerV1 \
    --key '4p6mKPIVkiLePWK3' \
    --namespace $AB_NAMESPACE \
    --userId 'SIpqbpcm6Tbhutx9' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
samples/cli/sample-apps Cloudsave postPlayerPublicRecordHandlerV1 \
    --key '8peJPYySt145Hpct' \
    --namespace $AB_NAMESPACE \
    --userId 'JDHbCTANUKdnmYiC' \
    --body '{}' \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE